package mobi.beyondpod.rsscore.rss;

import android.net.Uri;
import android.support.annotation.Nullable;
import java.io.File;
import java.security.InvalidParameterException;
import java.util.Collections;
import java.util.Date;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItemSorter;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine;

/* loaded from: classes.dex */
public class RssFeedCache {
    private static final String TAG = "RssFeedCache";
    private static final File _RSSCahcheFolder = new File(Configuration.rssCachePath());

    static {
        if (_RSSCahcheFolder.exists()) {
            return;
        }
        _RSSCahcheFolder.mkdirs();
    }

    public static long getCachedFileSize(Uri uri) {
        try {
            File feedDownloadPath = getFeedDownloadPath(uri);
            if (feedDownloadPath.exists()) {
                return feedDownloadPath.length();
            }
            return -1L;
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to get cached file size!", e);
            return -1L;
        }
    }

    public static Date getCachedFileDate(Uri uri) {
        try {
            File feedDownloadPath = getFeedDownloadPath(uri);
            if (feedDownloadPath.exists()) {
                return new Date(feedDownloadPath.lastModified());
            }
            return null;
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to get cached file date!", e);
            return null;
        }
    }

    public static File getFeedDownloadPath(Uri uri) {
        if (uri == null) {
            throw new InvalidParameterException("getFeedCacheFileName - called with null url!");
        }
        if ("file".equals(uri.getScheme())) {
            return new File(uri.getPath());
        }
        return new File(_RSSCahcheFolder, getFeedCacheFileName(uri, false));
    }

    private static String getFeedCacheFileName(Uri uri, boolean z) {
        if (uri == null) {
            throw new InvalidParameterException("getFeedCacheFileName - called with null url!");
        }
        Object[] objArr = new Object[3];
        objArr[0] = uri.getHost() != null ? uri.getHost().replace('.', '_') : "bpgeneric";
        objArr[1] = Integer.valueOf(uri.hashCode());
        objArr[2] = z ? "temp" : "";
        return String.format("%s_%X%s.xml", objArr);
    }

    public static File getFeedTempPath(Uri uri) {
        return new File(_RSSCahcheFolder, getFeedCacheFileName(uri, true));
    }

    public static void deletePrimaryFeedCacheFor(Feed feed) {
        if (feed.hasUri()) {
            try {
                deleteFile(getFeedDownloadPath(feed.getFeedUri()));
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to delete primary feed cache!", e);
            }
        }
    }

    public static void deleteTempFeedCacheFor(Feed feed) {
        if (feed.hasUri()) {
            try {
                deleteFile(getFeedTempPath(feed.getFeedUri()));
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to delete temporary feed cache!", e);
            }
        }
    }

    public static void deleteFeedCacheFor(Feed feed) {
        if (feed == null) {
            return;
        }
        deletePrimaryFeedCacheFor(feed);
        deleteTempFeedCacheFor(feed);
    }

    public static int deleteCacheForAllFeeds() {
        File[] listFiles = _RSSCahcheFolder.listFiles();
        if (listFiles == null) {
            return 0;
        }
        int i = 0;
        for (File file : listFiles) {
            if (file.isFile()) {
                i += !file.delete() ? 1 : 0;
            }
        }
        return i;
    }

    public static boolean copyTempToPrimaryForFeed(Feed feed) {
        boolean z;
        File feedDownloadPath = getFeedDownloadPath(feed.getFeedUri());
        File feedTempPath = getFeedTempPath(feed.getFeedUri());
        if (!feedTempPath.exists()) {
            CoreHelper.writeLogEntry(TAG, String.format("Unable to move %s to %s! Source File does not exist!", feedTempPath, feedDownloadPath));
            return true;
        }
        if (feedDownloadPath.exists()) {
            z = feedTempPath.length() != feedDownloadPath.length();
            if (!feedDownloadPath.delete()) {
                CoreHelper.writeLogEntry(TAG, String.format("Unable to delete %s!", feedDownloadPath));
            }
        } else {
            z = true;
        }
        if (!feedTempPath.renameTo(feedDownloadPath)) {
            CoreHelper.writeLogEntry(TAG, String.format("Unable to move %s to %s!", feedTempPath, feedDownloadPath));
        }
        return z;
    }

    public static void touchFeedCacheFor(Feed feed) {
        if (feed.hasUri()) {
            CoreHelper.touchFile(getFeedDownloadPath(feed.getFeedUri()));
        }
    }

    public static void syncFeedReadStatus(Feed feed) {
        if (feed == null || !feed.hasUrl()) {
            return;
        }
        try {
            FeedParseData feedParseData = new FeedParseData(1);
            loadFromCache(feed, feedParseData);
            if (feedParseData.RssFeed == null || !FeedParseData.isRssFeedType(feedParseData.ParsedFeedType)) {
                return;
            }
            feedParseData.RssFeed.SyncOwnerFeedReadStatus();
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to sync feed read status for feed " + feed.getName() + "!", e);
        }
    }

    @Nullable
    public static Track createStreamableTrackFromEnclosure(Feed feed, RssEnclosure rssEnclosure, boolean z) {
        Track findOrCreateLocalTrack = FeedRepository.findOrCreateLocalTrack(feed, rssEnclosure.Url, rssEnclosure.pubDate(), rssEnclosure.parentItemID(), rssEnclosure.Type, rssEnclosure.Parent.Title.toString(), rssEnclosure.description(), rssEnclosure.showNotes(), rssEnclosure.Parent.Link, z);
        if (findOrCreateLocalTrack == null) {
            return null;
        }
        if (!rssEnclosure.isEnclosureInHistory()) {
            EnclosureDownloadHistory.addEnclosure(rssEnclosure, z);
        }
        if (!findOrCreateLocalTrack.exists()) {
            findOrCreateLocalTrack.setUseParentImage();
        } else {
            findOrCreateLocalTrack.ensureTrackHasContentType();
        }
        return findOrCreateLocalTrack;
    }

    private static void deleteFile(File file) {
        if (!file.exists() || file.delete()) {
            return;
        }
        CoreHelper.writeLogEntry(TAG, String.format("Unable to delete %s!", file));
    }

    public static void loadFromCache(Feed feed, FeedParseData feedParseData) {
        if (feed == null || !feed.hasUri()) {
            throw new InvalidParameterException("The URL of the feed was not provided or is invalid!");
        }
        feed.ensureFeedHasDownloadPath();
        File feedTempPath = feedParseData.LoadTempFeed ? getFeedTempPath(feed.getFeedUri()) : getFeedDownloadPath(feed.getFeedUri());
        feedParseData.EnclosureDownloadPath = feed.getFeedPath();
        feedParseData.ForceUniqueEnclosureNames = feed.getForceUniqueTrackNames();
        feedParseData.RssFeed.PreferredEnclosureIndex = feed.getPreferredEnclosureIndex();
        feedParseData.RssFeed.IgnoreEnclosures = feed.getPodcastDownloadAction() == 3;
        feedParseData.RssFeed.ItemIDGenerationAlgorithm = feed.getItemFingerprintAlgorithm();
        feedParseData.RssFeed.FeedID = feed.id();
        feedParseData.CachedFileSize = feedTempPath.length();
        FeedParsingEngine.parseFeedFile(feedTempPath, feedParseData);
        if (feedParseData.hasParseFailed()) {
            CoreHelper.writeTraceEntry(TAG, String.format("failed to parse: %s (%s). reason: %s", feed.getName(), feed.getFeedUrl(), feedParseData.ParseException.getMessage()));
        }
        if (FeedParseData.isRssFeedType(feedParseData.ParsedFeedType)) {
            RssFeed rssFeed = feedParseData.RssFeed;
            rssFeed.FeedType = feedParseData.ParsedFeedType;
            if (feed.getForceFeedItemSort() != -1) {
                Collections.sort(rssFeed.Items, new RssFeedItemSorter(feed.getForceFeedItemSort()));
            }
        }
    }

    public static boolean hasCachedFileFor(Feed feed) {
        if (feed == null || !feed.hasUrl()) {
            return false;
        }
        return getFeedDownloadPath(feed.getFeedUri()).exists();
    }

    public static Long getCacheSizeOnDisk() {
        if (_RSSCahcheFolder != null) {
            return Long.valueOf(_RSSCahcheFolder.length());
        }
        return 0L;
    }

    public static double getCachedAgeFor(Feed feed) {
        if (feed == null || !feed.hasUrl()) {
            return -1.0d;
        }
        File feedDownloadPath = getFeedDownloadPath(feed.getFeedUri());
        if (feedDownloadPath.exists()) {
            return new TimeSpan(new Date().getTime() - feedDownloadPath.lastModified()).getTotalHours();
        }
        return -1.0d;
    }
}
