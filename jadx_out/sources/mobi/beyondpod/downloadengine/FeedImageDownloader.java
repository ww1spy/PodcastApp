package mobi.beyondpod.downloadengine;

import java.io.File;
import mobi.beyondpod.downloadengine.DownloadAgent;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine;
import mobi.beyondpod.ui.core.FeedImageCache;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FeedImageDownloader {
    private static final String TAG = "FeedImageDownloader";
    FeedImageDownloadListener _FeedImageDownloadListener;
    private Feed m_Feed;
    private DownloadAgent m_ImageDownloadAgent;
    private DownloadAgent m_UpdateDownloadAgent;
    private File _FeedDownloadPath = new File(Configuration.rssCachePath(), "ImageDownloaderTemp.xml");
    private DownloadAgent.DownloadListener _FeedUpdateListener = new DownloadAgent.DownloadListener() { // from class: mobi.beyondpod.downloadengine.FeedImageDownloader.1
        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadProgress(DownloadAgent downloadAgent, long j, long j2) {
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadStarted(DownloadAgent downloadAgent) {
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadTerminated(DownloadAgent downloadAgent) {
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadCompleted(DownloadAgent downloadAgent, boolean z) {
            RssFeed rssFeed = null;
            try {
                FeedParseData feedParseData = new FeedParseData(1);
                feedParseData.RssFeed.FeedID = FeedImageDownloader.this.m_Feed.id();
                FeedParsingEngine.parseFeedFile(FeedImageDownloader.this._FeedDownloadPath, feedParseData);
                if (feedParseData.hasParseFailed()) {
                    CoreHelper.writeTraceEntry(FeedImageDownloader.TAG, String.format("failed to parse: %s (%s). reason: %s", FeedImageDownloader.this.m_Feed.getName(), FeedImageDownloader.this.m_Feed.getFeedUrl(), feedParseData.ParseException.getMessage()));
                } else if (FeedParseData.isRssFeedType(feedParseData.ParsedFeedType)) {
                    rssFeed = feedParseData.RssFeed;
                }
            } catch (Exception unused) {
            }
            if (rssFeed == null || StringUtils.isNullOrEmpty(rssFeed.getFeedImageLink())) {
                FeedImageDownloader.this.publishImageDownloadCompletedEvent();
            } else {
                FeedImageDownloader.this.m_Feed.setFeedImageUrl(rssFeed.getFeedImageLink());
                FeedImageDownloader.this.downloadFeedImage();
            }
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadError(DownloadAgent downloadAgent, Exception exc) {
            CoreHelper.writeTraceEntry(FeedImageDownloader.TAG, String.format("Unable to update feed for image download for: %s! reason: %s", FeedImageDownloader.this.m_Feed.getFeedUrl(), exc.getMessage()));
            FeedImageDownloader.this.publishImageDownloadCompletedEvent();
        }
    };
    private DownloadAgent.DownloadListener _ImageDownloadListener = new DownloadAgent.DownloadListener() { // from class: mobi.beyondpod.downloadengine.FeedImageDownloader.2
        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadProgress(DownloadAgent downloadAgent, long j, long j2) {
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadStarted(DownloadAgent downloadAgent) {
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadTerminated(DownloadAgent downloadAgent) {
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadCompleted(DownloadAgent downloadAgent, boolean z) {
            if (downloadAgent.destination().exists()) {
                FeedImageCache.formatTempImageForFeed(FeedImageDownloader.this.m_Feed);
                CoreHelper.writeTraceEntry(FeedImageDownloader.TAG, "Image download complete for: " + FeedImageDownloader.this.m_Feed.getFeedImageUrl());
            }
            FeedImageDownloader.this.publishImageDownloadCompletedEvent();
        }

        @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
        public void onDownloadError(DownloadAgent downloadAgent, Exception exc) {
            CoreHelper.writeTraceEntry(FeedImageDownloader.TAG, String.format("Unable to download image for: %s! reason: %s", FeedImageDownloader.this.m_Feed.getFeedImageUrl(), exc.getMessage()));
            FeedImageDownloader.this.publishImageDownloadCompletedEvent();
        }
    };

    /* loaded from: classes.dex */
    public interface FeedImageDownloadListener {
        void onImageDownloadCompleted(Feed feed);
    }

    public void setFeedUpdateListener(FeedImageDownloadListener feedImageDownloadListener) {
        this._FeedImageDownloadListener = feedImageDownloadListener;
    }

    public void downloadImage(Feed feed) {
        this.m_Feed = feed;
        this.m_UpdateDownloadAgent = null;
        if (feed.isGReaderFeed()) {
            try {
                this.m_UpdateDownloadAgent = new DownloadAgent(feed.getFeedUri(), this._FeedDownloadPath, this.m_Feed.credentials());
                this.m_UpdateDownloadAgent.setDownloadListener(this._FeedUpdateListener);
                this.m_UpdateDownloadAgent.setAllowResume(false);
                CoreHelper.writeTraceEntry(TAG, "Updating feed to get feed image for: " + this.m_Feed.getName());
                this.m_UpdateDownloadAgent.startDownload();
                return;
            } catch (Exception e) {
                CoreHelper.writeLogEntry(TAG, String.format("Unable to start feed update for image download! url: %s reason: %s", this.m_Feed.getFeedUrl(), e.getMessage()));
                publishImageDownloadCompletedEvent();
                return;
            }
        }
        downloadFeedImage();
    }

    public void stop() {
        if (this.m_UpdateDownloadAgent != null) {
            this.m_UpdateDownloadAgent.stop();
        }
        if (this.m_ImageDownloadAgent != null) {
            this.m_ImageDownloadAgent.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishImageDownloadCompletedEvent() {
        if (this._FeedImageDownloadListener != null) {
            this._FeedImageDownloadListener.onImageDownloadCompleted(this.m_Feed);
        }
        if (this._FeedDownloadPath.exists()) {
            this._FeedDownloadPath.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadFeedImage() {
        try {
            this.m_ImageDownloadAgent = new DownloadAgent(CoreHelper.safeCreateUri(this.m_Feed.getFeedImageUrl()), FeedImageCache.getTempFeedImagePath(this.m_Feed), this.m_Feed.credentials());
            this.m_ImageDownloadAgent.setDownloadListener(this._ImageDownloadListener);
            this.m_ImageDownloadAgent.setAllowResume(false);
            CoreHelper.writeTraceEntry(TAG, "Downloading image for: " + this.m_Feed.getFeedImageUrl());
            this.m_ImageDownloadAgent.startDownload();
        } catch (Exception e) {
            this._ImageDownloadListener.onDownloadError(null, e);
        }
    }
}
