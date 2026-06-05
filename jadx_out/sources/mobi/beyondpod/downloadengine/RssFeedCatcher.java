package mobi.beyondpod.downloadengine;

import android.net.Uri;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.DownloadAgent;
import mobi.beyondpod.downloadengine.FeedImageDownloader;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.ui.core.FeedImageCache;

/* loaded from: classes.dex */
public class RssFeedCatcher implements DownloadAgent.DownloadListener {
    private static final String TAG = "RssFeedCatcher";
    FeedUpdateListener _FeedUpdateListener;
    private FeedParseData _LastParseData;
    private Feed m_Feed;
    private DownloadAgent m_FeedDownloadAgent;
    private FeedImageDownloader m_FeedImageDownloader;
    private DownloadStatistics m_Statistics;
    private boolean m_ForceUpdate = false;
    private boolean _WiFiTurnedOnAtStart = false;
    long _LastProgressNotificationTime = 0;
    private FeedImageDownloader.FeedImageDownloadListener _ImageDownloadListener = new FeedImageDownloader.FeedImageDownloadListener() { // from class: mobi.beyondpod.downloadengine.RssFeedCatcher.1
        @Override // mobi.beyondpod.downloadengine.FeedImageDownloader.FeedImageDownloadListener
        public void onImageDownloadCompleted(Feed feed) {
            RssFeedCatcher.this.publishUpdateCompletedEvent();
        }
    };

    /* loaded from: classes.dex */
    public interface FeedUpdateListener {
        void onFeedUpdateCompleted(Feed feed);

        void onFeedUpdateError(Feed feed, Exception exc);

        void onFeedUpdateProgress(Feed feed);

        void onFeedUpdateStarted(Feed feed);

        void onFeedUpdateTerminated(Feed feed);
    }

    public void setFeedUpdateListener(FeedUpdateListener feedUpdateListener) {
        this._FeedUpdateListener = feedUpdateListener;
    }

    public void updateFeed(Feed feed, boolean z) {
        this.m_Feed = feed;
        if (this.m_FeedDownloadAgent != null) {
            this.m_FeedDownloadAgent.stop();
        }
        this.m_Statistics = null;
        try {
            if (!this.m_Feed.hasUri()) {
                throw new IllegalArgumentException("Trying to update feed with invalid URL!");
            }
            turnWiFiOnIfNeeded();
            this.m_FeedDownloadAgent = new DownloadAgent(getFeedUrl(this.m_Feed), RssFeedCache.getFeedTempPath(this.m_Feed.getFeedUri()), this.m_Feed.credentials());
            this.m_FeedDownloadAgent.setDownloadListener(this);
            this.m_FeedDownloadAgent.setAllowResume(false);
            if (feed.isGReaderFeed()) {
                this.m_FeedDownloadAgent.setRequestCookie(Configuration.GReaderCookie());
                this.m_FeedDownloadAgent.setMustRequestReaderToken(true);
            }
            this.m_ForceUpdate = z;
            if (!this.m_ForceUpdate) {
                long cachedFileSize = RssFeedCache.getCachedFileSize(this.m_Feed.getFeedUri());
                if (cachedFileSize != -1) {
                    this.m_FeedDownloadAgent.setIgnoreIfSize(Long.valueOf(cachedFileSize));
                    this.m_FeedDownloadAgent.setIgnoreIfNotModifiedSinceDate(this.m_Feed.getLastServerModifiedDate());
                }
            }
            this.m_Feed.setUpdateSize(0L);
            this.m_Feed.setUpdatedPortion(0L);
            this.m_FeedDownloadAgent.startDownload();
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, String.format("Unable to start the download of url: %s ! reason: %s", this.m_Feed.getFeedUrl(), e.getMessage()));
            onDownloadError(null, e);
        }
    }

    private Uri getFeedUrl(Feed feed) {
        if (feed.isGReaderFeed()) {
            return AggregatorLoginHelper.getFeedUri(feed);
        }
        return feed.getFeedUri();
    }

    public void stop() {
        if (this.m_FeedDownloadAgent != null) {
            this.m_FeedDownloadAgent.stop();
        }
        if (this.m_FeedImageDownloader != null) {
            this.m_FeedImageDownloader.stop();
        }
    }

    public boolean isUpdating() {
        return this.m_FeedDownloadAgent != null && this.m_FeedDownloadAgent.isDownloading();
    }

    public DownloadStatistics statistics() {
        return this.m_Statistics;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishUpdateCompletedEvent() {
        turnWiFiOffIfNeeded();
        if (this._FeedUpdateListener != null) {
            this._FeedUpdateListener.onFeedUpdateCompleted(this.m_Feed);
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadCompleted(DownloadAgent downloadAgent, boolean z) {
        captureStatistics();
        boolean z2 = !RssFeedCache.hasCachedFileFor(this.m_Feed);
        if (z || this.m_ForceUpdate || this.m_Feed.getItemFingerprintAlgorithm() == -1) {
            postProcessFeed();
        } else {
            RssFeedCache.touchFeedCacheFor(this.m_Feed);
            RssFeedCache.deleteTempFeedCacheFor(this.m_Feed);
        }
        this.m_Feed.updateFailed = false;
        if ((this.m_Feed.isGReaderFeed() && z2) || FeedImageCache.hasImageToDownload(this.m_Feed) || this.m_Feed.hasFeedImageChanged()) {
            downloadFeedImage();
        } else {
            publishUpdateCompletedEvent();
        }
    }

    private void autodetectItemFingerprintTypeIfNeeded(RssFeed rssFeed) {
        if (this.m_Feed.getItemFingerprintAlgorithm() == -1 && rssFeed != null) {
            CoreHelper.writeTraceEntry(TAG, "Detecting item fingerprint for feed " + this.m_Feed.getName() + "...");
            int AutodetectFingerprintType = rssFeed.AutodetectFingerprintType();
            this.m_Feed.setItemFingerprintAlgorithm(AutodetectFingerprintType);
            rssFeed.updateFingerprintAlgorithmTo(AutodetectFingerprintType);
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Fingerprint type was set to: ");
            sb.append(AutodetectFingerprintType == 2 ? "GUID" : "TLP");
            CoreHelper.writeTraceEntry(str, sb.toString());
            if (this.m_Feed.getForceFeedItemSort() == -1 && rssFeed.AutodetectSortOrder() == 2) {
                CoreHelper.writeTraceEntry(TAG, "Detected reverse item sort! Setting to 'By Date Desc'...");
                this.m_Feed.setForceFeedItemSort(3);
            }
            if (rssFeed.peekEnclosureMediaTypes() == 1) {
                this.m_Feed.setPodcastDownloadAction(3);
            }
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadError(DownloadAgent downloadAgent, Exception exc) {
        captureStatistics();
        this.m_Feed.updateFailed = true;
        RssFeedCache.deleteTempFeedCacheFor(this.m_Feed);
        turnWiFiOffIfNeeded();
        if (this._FeedUpdateListener != null) {
            this._FeedUpdateListener.onFeedUpdateError(this.m_Feed, exc);
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadProgress(DownloadAgent downloadAgent, long j, long j2) {
        this.m_Feed.setUpdateSize(j2);
        this.m_Feed.setUpdatedPortion(j);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this._LastProgressNotificationTime > 2000) {
            this._LastProgressNotificationTime = currentTimeMillis;
            if (this._FeedUpdateListener != null) {
                this._FeedUpdateListener.onFeedUpdateProgress(this.m_Feed);
            }
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadStarted(DownloadAgent downloadAgent) {
        this.m_Feed.updateFailed = false;
        if (this._FeedUpdateListener != null) {
            this._FeedUpdateListener.onFeedUpdateStarted(this.m_Feed);
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadTerminated(DownloadAgent downloadAgent) {
        captureStatistics();
        RssFeedCache.deleteTempFeedCacheFor(this.m_Feed);
        turnWiFiOffIfNeeded();
        if (this._FeedUpdateListener != null) {
            this._FeedUpdateListener.onFeedUpdateTerminated(this.m_Feed);
        }
    }

    private void turnWiFiOffIfNeeded() {
        if (this._WiFiTurnedOnAtStart) {
            BeyondPodApplication.toggleWiFi(false, TAG);
        }
        this._WiFiTurnedOnAtStart = false;
    }

    private void turnWiFiOnIfNeeded() {
        if (Configuration.turnWiFiDuringUpdate()) {
            this._WiFiTurnedOnAtStart = BeyondPodApplication.toggleWiFi(true, TAG);
        }
    }

    private void captureStatistics() {
        if (this.m_FeedDownloadAgent != null) {
            this.m_Statistics = this.m_FeedDownloadAgent.statistics();
        }
    }

    private void downloadFeedImage() {
        try {
            this.m_FeedImageDownloader = new FeedImageDownloader();
            this.m_FeedImageDownloader.setFeedUpdateListener(this._ImageDownloadListener);
            this.m_FeedImageDownloader.downloadImage(this.m_Feed);
        } catch (Exception unused) {
            publishUpdateCompletedEvent();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void postProcessFeed() {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.downloadengine.RssFeedCatcher.postProcessFeed():void");
    }

    private Date getLastModifiedDate() {
        if (this.m_FeedDownloadAgent == null) {
            return new Date();
        }
        return this.m_FeedDownloadAgent.lastModifiedDate() == null ? new Date() : this.m_FeedDownloadAgent.lastModifiedDate();
    }

    public FeedParseData lastFeedParseData() {
        return this._LastParseData;
    }

    public static void createFeedSnapshot(Feed feed, RssFeed rssFeed, boolean z) {
        File file;
        FileOutputStream fileOutputStream;
        PrintWriter printWriter;
        PrintWriter printWriter2 = null;
        try {
            try {
                try {
                    File feedDownloadPath = RssFeedCache.getFeedDownloadPath(feed.getFeedUri());
                    if (z) {
                        file = new File(feedDownloadPath.getAbsolutePath().replace(".xml", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + CoreHelper.makeValidFileName(rssFeed.Title) + "_$$0000000000000$$.xml"));
                    } else {
                        file = new File(feedDownloadPath.getAbsolutePath().replace(".xml", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + CoreHelper.makeValidFileName(rssFeed.Title) + "_$$" + System.currentTimeMillis() + "$$.xml"));
                    }
                    if (!z) {
                        FileUtils.copyFile(feedDownloadPath, file);
                    }
                    fileOutputStream = new FileOutputStream(file.getAbsolutePath().replace(".xml", ".txt"));
                    printWriter = new PrintWriter(fileOutputStream);
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                Object[] objArr = new Object[3];
                objArr[0] = rssFeed.Title;
                objArr[1] = Integer.valueOf(rssFeed.ItemIDGenerationAlgorithm);
                objArr[2] = rssFeed.ItemIDGenerationAlgorithm == 1 ? "TLPID" : "GUIDID";
                printWriter.print(String.format("FEED: %s, [itemID generation algorithm: %s (%s)]\r\n", objArr));
                Iterator<RssFeedItem> it = rssFeed.Items.iterator();
                while (it.hasNext()) {
                    it.next().createItemSnapshot(printWriter);
                }
                CoreHelper.sync(fileOutputStream);
                printWriter.close();
                CoreHelper.writeTraceEntry(TAG, "Cache snapshot for feed: " + feed.getName() + " was saved to:" + file.getName());
            } catch (Exception e2) {
                e = e2;
                printWriter2 = printWriter;
                CoreHelper.logException(TAG, "Unable to save rss snapshot file", e);
                if (printWriter2 != null) {
                    printWriter2.close();
                }
                return;
            } catch (Throwable th2) {
                th = th2;
                printWriter2 = printWriter;
                if (printWriter2 != null) {
                    try {
                        printWriter2.close();
                    } catch (Exception e3) {
                        CoreHelper.logException(TAG, "Unable to save rss snapshot file", e3);
                    }
                }
                throw th;
            }
            if (printWriter != null) {
                printWriter.close();
            }
        } catch (Exception e4) {
            CoreHelper.logException(TAG, "Unable to save rss snapshot file", e4);
        }
    }
}
