package mobi.beyondpod.aggregators.feedly;

import android.net.Uri;
import com.google.gson.stream.JsonReader;
import java.io.File;
import java.io.FileReader;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.aggregators.AggregatorRequestQueue;
import mobi.beyondpod.aggregators.GDataObject;
import mobi.beyondpod.aggregators.RequestBase;
import mobi.beyondpod.downloadengine.DownloadAgent;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.RssFeedCache;

/* loaded from: classes.dex */
public class Feedly {
    public static String LoginAgent = null;
    private static String Referer = "beyondpod.android";
    private static String StarredTag = "/tag/global.saved";
    private static String StreamItemsSuffix = "contents";
    private static final String TAG = "Feedly";
    private static DownloadAgent.DownloadListener _FeedListDownloadListener = null;
    private static FGetFeedsResult _GetFeedsResult = null;
    static AggregatorLoginHelper.GSimpleResult _LoginResult = null;
    private static AggregatorRequestQueue _ReaderCaller = null;
    private static final String PERCENT_COMPLETE = CoreHelper.loadResourceString(R.string.percent_complete);
    private static final String UPDATING_GOOGLE_READER = CoreHelper.loadResourceString(R.string.updating_google_reader);
    private static final String MY_READ_ITEMS = CoreHelper.loadResourceString(R.string.reader_folder_my_read_items);
    private static final String MY_STARRED_ITEMS = CoreHelper.loadResourceString(R.string.reader_folder_my_starred_items);
    private static final String MY_READING_LIST = CoreHelper.loadResourceString(R.string.reader_folder_my_reading_list);
    private static final String MY_GOOGLE_ITEMS = CoreHelper.loadResourceString(R.string.reader_folder_my_google_items);
    private static final String ALL_NEW_ITEMS_IN = CoreHelper.loadResourceString(R.string.reader_folder_all_new_items_in);
    private static final String GOOGLE_READER_FEEDS = CoreHelper.loadResourceString(R.string.google_reader_feeds);
    private static final Object _syncLock = new Object();
    private static File _ReceiveFile = new File(Configuration.rssCachePath(), "feedlydata.json");
    private static final String _feedlyUri = "http://cloud.feedly.com";
    public static Uri FeedlyUri = Uri.parse(_feedlyUri);
    static String ClientSTP = String.format("%s%s%s%s%s%s", "GFIY", 38, "T", 21, "DFHBT", "3YNACQADNK");
    public static URI TokenUri = URI.create("https://cloud.feedly.com/v3/auth/token");
    private static final String _feedlyUriSecure = "https://cloud.feedly.com";
    static String ClientID = "beyondpod";
    public static String OAuthScope = "https://cloud.feedly.com/subscriptions";
    static String RedirectURI = "http://localhost";
    public static String OAuthEndPoint = String.format("%s%s?response_type=code&client_id=%s&scope=%s&redirect_uri=%s", _feedlyUriSecure, "/v3/auth/auth", ClientID, CoreHelper.safeEncodeUrl(OAuthScope), CoreHelper.safeEncodeUrl(RedirectURI));
    private static Uri SubscriptionListUri = Uri.parse("http://cloud.feedly.com/v3/subscriptions");
    private static Uri StreamItemsUri = Uri.parse("http://cloud.feedly.com/v3/streams");
    public static URI EditMarkerURL = URI.create("http://cloud.feedly.com/v3/markers");
    public static Uri EditTagURL = Uri.parse("http://cloud.feedly.com/v3/tags");

    /* loaded from: classes.dex */
    public interface FGetFeedsResult {
        void failed(Exception exc);

        void success(GDataObject gDataObject);
    }

    static {
        LoginAgent = Configuration.hasCustomUserAgent() ? Configuration.defaultUserAgent() : Configuration.MO_USER_AGENT;
        _FeedListDownloadListener = new DownloadAgent.DownloadListener() { // from class: mobi.beyondpod.aggregators.feedly.Feedly.1
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
                GDataObject parseFeedFile = Feedly.parseFeedFile();
                if (parseFeedFile != null) {
                    Feedly._GetFeedsResult.success(parseFeedFile);
                } else {
                    Feedly._GetFeedsResult.failed(new Exception("Unable to load subscription list!"));
                }
            }

            @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
            public void onDownloadError(DownloadAgent downloadAgent, Exception exc) {
                Feedly._GetFeedsResult.failed(exc);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String userStream() {
        return String.format("user/%s", Configuration.OAuthUser());
    }

    public static void logIn(String str, final AggregatorLoginHelper.GSimpleResult gSimpleResult) throws Exception {
        try {
            final FRequestGetToken fRequestGetToken = new FRequestGetToken(str);
            AggregatorRequestQueue aggregatorRequestQueue = new AggregatorRequestQueue(new AggregatorRequestQueue.QueueListener() { // from class: mobi.beyondpod.aggregators.feedly.Feedly.2
                @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
                public void onQueueProgress(int i, int i2) {
                }

                @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
                public void onQueueStarted(int i) {
                }

                @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
                public void onQueueCompleted(boolean z, List<RequestBase> list) {
                    if (AggregatorLoginHelper.GSimpleResult.this == null || fRequestGetToken == null) {
                        return;
                    }
                    if (fRequestGetToken.status() == 1) {
                        AggregatorLoginHelper.GSimpleResult.this.success();
                    } else {
                        AggregatorLoginHelper.GSimpleResult.this.failed(fRequestGetToken.lastException());
                    }
                }
            });
            aggregatorRequestQueue.queueRequest(fRequestGetToken);
            aggregatorRequestQueue.executeQueuedRequests();
        } catch (Exception e) {
            if (gSimpleResult != null) {
                gSimpleResult.failed(e);
            }
        }
    }

    public static void addSubscription(Feed feed, final AggregatorLoginHelper.GSimpleResult gSimpleResult) throws Exception {
        new AggregatorRequestQueue(new AggregatorRequestQueue.QueueListener() { // from class: mobi.beyondpod.aggregators.feedly.Feedly.3
            @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
            public void onQueueProgress(int i, int i2) {
            }

            @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
            public void onQueueStarted(int i) {
            }

            @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
            public void onQueueCompleted(boolean z, List<RequestBase> list) {
                for (RequestBase requestBase : list) {
                    if (requestBase.status() == 2) {
                        AggregatorLoginHelper.GSimpleResult.this.failed(requestBase.lastException());
                        return;
                    }
                }
                AggregatorLoginHelper.GSimpleResult.this.success();
            }
        }).executeQueuedRequests();
    }

    public static void getFeedList(FGetFeedsResult fGetFeedsResult) {
        _GetFeedsResult = fGetFeedsResult;
        callFeedly(appendBeyondPodRefererParams(SubscriptionListUri, -1), true, _FeedListDownloadListener);
    }

    public static boolean hasCachedAuthTokens() {
        return (!StringUtils.isNullOrEmpty(Configuration.GReaderCookie()) && Configuration.GReaderCookie().startsWith("SID")) || !StringUtils.isNullOrEmpty(Configuration.GReaderAuthValue());
    }

    public static synchronized boolean syncItemStatus(final AggregatorLoginHelper.GSyncStatusResult gSyncStatusResult) throws Exception {
        synchronized (Feedly.class) {
            CoreHelper.writeTraceEntry(TAG, "--- Starting Reader Sync...");
            if (_ReaderCaller != null) {
                if (gSyncStatusResult != null) {
                    gSyncStatusResult.syncCompleted(false, 0, 0);
                }
                CoreHelper.writeTraceEntry(TAG, "--- Another Reader Sync is already in progress! Exiting...");
                return false;
            }
            final HashMap<String, ItemStateHistory.ItemStatus> allUnsynchronizedGoogleReaderItems = ItemStateHistory.getAllUnsynchronizedGoogleReaderItems();
            if (allUnsynchronizedGoogleReaderItems.size() == 0) {
                CoreHelper.writeTraceEntry(TAG, "--- Nothing to sync! Exiting...");
                if (gSyncStatusResult != null) {
                    gSyncStatusResult.syncCompleted(false, 0, -1);
                }
                return false;
            }
            CoreHelper.writeTraceEntry(TAG, "--- Found " + allUnsynchronizedGoogleReaderItems.size() + " items to sync");
            AnalyticsTracker.onGReaderSync(allUnsynchronizedGoogleReaderItems.size());
            _ReaderCaller = new AggregatorRequestQueue(new AggregatorRequestQueue.QueueListener() { // from class: mobi.beyondpod.aggregators.feedly.Feedly.4
                @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
                public void onQueueCompleted(boolean z, List<RequestBase> list) {
                    int i = 0;
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    for (RequestBase requestBase : list) {
                        if (requestBase.status() == 1) {
                            i++;
                            if (requestBase instanceof FRequestEditRead) {
                                FRequestEditRead fRequestEditRead = (FRequestEditRead) requestBase;
                                Iterator<String> it = fRequestEditRead.ItemIDs.iterator();
                                while (it.hasNext()) {
                                    ItemStateHistory.ItemStatus itemStatus = (ItemStateHistory.ItemStatus) allUnsynchronizedGoogleReaderItems.get(it.next());
                                    if (itemStatus != null && (fRequestEditRead.Tag.equals(FRequestEditRead.TAG_READ) || fRequestEditRead.Tag.equals(FRequestEditRead.TAG_UNREAD))) {
                                        i4++;
                                        itemStatus.setReadSynced();
                                    }
                                }
                            }
                            if (requestBase instanceof FRequestEditTag) {
                                FRequestEditTag fRequestEditTag = (FRequestEditTag) requestBase;
                                Iterator<String> it2 = fRequestEditTag.ItemIDs.iterator();
                                while (it2.hasNext()) {
                                    ItemStateHistory.ItemStatus itemStatus2 = (ItemStateHistory.ItemStatus) allUnsynchronizedGoogleReaderItems.get(it2.next());
                                    if (itemStatus2 != null && fRequestEditTag.Tag.equals(Feedly.StarredTag)) {
                                        i5++;
                                        itemStatus2.setStarSynced();
                                    }
                                }
                            }
                        } else if (requestBase.status() == 2) {
                            i2++;
                        } else {
                            i3++;
                        }
                    }
                    String str = Feedly.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("--- Google Reader Sync ");
                    sb.append(z ? "Cancelled" : "Complete");
                    sb.append("!. (");
                    sb.append(list.size());
                    sb.append(" total, ");
                    sb.append(i);
                    sb.append(" succeded ");
                    sb.append(i2);
                    sb.append(" failed, ");
                    sb.append(i3);
                    sb.append(" pending). Synced: ");
                    sb.append(i4);
                    sb.append(" read and ");
                    sb.append(i5);
                    sb.append(" Starred items.");
                    CoreHelper.writeLogEntryInProduction(str, sb.toString());
                    if (i4 > 0 || i5 > 0) {
                        ItemStateHistory.markModified();
                    }
                    ItemStateHistory.saveHistoryAsync();
                    BeyondPodApplication.getInstance().clearReaderSyncNotification();
                    AggregatorRequestQueue unused = Feedly._ReaderCaller = null;
                    if (gSyncStatusResult != null) {
                        gSyncStatusResult.syncCompleted(z, i4 + i5, list.size());
                    }
                }

                @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
                public void onQueueProgress(int i, int i2) {
                    int i3 = (i < 0 || i2 < 0 || i2 < i) ? 0 : (int) ((i / i2) * 100.0f);
                    BeyondPodApplication.getInstance().setReaderSyncNotification(Feedly.UPDATING_GOOGLE_READER, i3 + " " + Feedly.PERCENT_COMPLETE);
                }

                @Override // mobi.beyondpod.aggregators.AggregatorRequestQueue.QueueListener
                public void onQueueStarted(int i) {
                    BeyondPodApplication.getInstance().setReaderSyncNotification(Feedly.UPDATING_GOOGLE_READER, "");
                }
            });
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            splitUnsynchronizedToBuckets(allUnsynchronizedGoogleReaderItems, arrayList, arrayList2, arrayList3, arrayList4);
            if (arrayList.size() > 0) {
                batchRequest(arrayList, -1, FRequestEditRead.TAG_READ);
            }
            if (arrayList2.size() > 0) {
                batchRequest(arrayList2, -1, FRequestEditRead.TAG_UNREAD);
            }
            if (arrayList3.size() > 0) {
                batchRequest(arrayList3, 0, StarredTag);
            }
            if (arrayList4.size() > 0) {
                batchRequest(arrayList4, 1, StarredTag);
            }
            _ReaderCaller.executeQueuedRequests();
            return true;
        }
    }

    public static void splitUnsynchronizedToBuckets(HashMap<String, ItemStateHistory.ItemStatus> hashMap, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, ArrayList<String> arrayList4) {
        for (String str : hashMap.keySet()) {
            ItemStateHistory.ItemStatus itemStatus = hashMap.get(str);
            if (!itemStatus.isReadSynced()) {
                if (itemStatus.isRead()) {
                    arrayList.add(str);
                } else {
                    arrayList2.add(str);
                }
            }
            if (!itemStatus.isStarSynced()) {
                if (itemStatus.isStarred()) {
                    arrayList3.add(str);
                } else {
                    arrayList4.add(str);
                }
            }
        }
    }

    private static void batchRequest(ArrayList<String> arrayList, int i, String str) throws Exception {
        int min;
        CoreHelper.writeLogEntryInProduction(TAG, "Adding a batch of " + arrayList.size() + " items for tag: " + str);
        int i2 = 0;
        do {
            min = Math.min(arrayList.size() - i2, 50);
            if (min > 0) {
                int i3 = i2 + min;
                ArrayList arrayList2 = new ArrayList(arrayList.subList(i2, i3));
                if (FRequestEditRead.TAG_UNREAD.equals(str) || FRequestEditRead.TAG_READ.equals(str)) {
                    _ReaderCaller.queueRequest(new FRequestEditRead(arrayList2, str));
                } else {
                    _ReaderCaller.queueRequest(new FRequestEditTag(arrayList2, i, str));
                }
                i2 = i3;
            }
        } while (min > 0);
    }

    public static synchronized boolean isSyncing() {
        boolean z;
        synchronized (Feedly.class) {
            if (_ReaderCaller != null) {
                z = _ReaderCaller.isWorking();
            }
        }
        return z;
    }

    public static synchronized void stopSyncing() {
        synchronized (Feedly.class) {
            if (isSyncing()) {
                _ReaderCaller.stop();
            }
        }
    }

    private static void callFeedly(Uri uri, boolean z, DownloadAgent.DownloadListener downloadListener) {
        if (_ReceiveFile.exists()) {
            _ReceiveFile.delete();
        }
        DownloadAgent downloadAgent = new DownloadAgent(uri, _ReceiveFile, null);
        downloadAgent.setAllowRedirects(z);
        downloadAgent.setMustRequestReaderToken(true);
        downloadAgent.setUserAgent(LoginAgent);
        downloadAgent.setDownloadListener(downloadListener);
        try {
            downloadAgent.startDownload();
        } catch (Exception e) {
            if (downloadListener != null) {
                downloadListener.onDownloadError(null, e);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [boolean] */
    public static GDataObject parseFeedFile() {
        Throwable th;
        JsonReader jsonReader;
        CoreHelper.writeTraceEntry(TAG, "Parsing Feedly Subscriptions ...");
        synchronized (_syncLock) {
            ?? exists = _ReceiveFile.exists();
            AutoCloseable autoCloseable = null;
            try {
                if (exists == 0) {
                    return null;
                }
                try {
                    jsonReader = new JsonReader(new FileReader(_ReceiveFile));
                    try {
                        GDataObject parseSubscriptions = FeedlySubscriptionsParser.parseSubscriptions(jsonReader);
                        if (jsonReader != null) {
                            try {
                                jsonReader.close();
                            } catch (Exception unused) {
                            }
                        }
                        CoreHelper.writeTraceEntry(TAG, "Done Parsing Feedly feed Subscriptions!");
                        return parseSubscriptions;
                    } catch (Exception e) {
                        e = e;
                        CoreHelper.logException(TAG, "Unable to parse Feedly feed Subscriptions", e);
                        if (jsonReader != null) {
                            try {
                                jsonReader.close();
                            } catch (Exception unused2) {
                            }
                        }
                        CoreHelper.writeTraceEntry(TAG, "Done Parsing Feedly feed Subscriptions!");
                        return null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    jsonReader = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (autoCloseable != null) {
                        try {
                            autoCloseable.close();
                        } catch (Exception unused3) {
                        }
                    }
                    CoreHelper.writeTraceEntry(TAG, "Done Parsing Feedly feed Subscriptions!");
                    throw th;
                }
            } catch (Throwable th3) {
                autoCloseable = exists;
                th = th3;
            }
        }
    }

    public static Feed buildFeedList(GDataObject gDataObject) {
        Feed feed;
        HashMap hashMap = new HashMap();
        Feed feed2 = new Feed(UUID.randomUUID(), null, GOOGLE_READER_FEEDS, null, 5);
        insertCommonFeeds(feed2, Configuration.OAuthUser());
        Iterator<GDataObject> it = gDataObject.list.iterator();
        while (it.hasNext()) {
            GDataObject next = it.next();
            if (next.list == null || next.list.size() == 0) {
                feed = feed2;
            } else {
                String str = next.list.get(0).string;
                if (hashMap.containsKey(str)) {
                    feed = (Feed) hashMap.get(str);
                } else {
                    Feed feed3 = new Feed(UUID.randomUUID(), feed2, str, null, 5);
                    feed2.setType(5);
                    hashMap.put(str, feed3);
                    feed2.subFeeds().add(feed3);
                    feed3.subFeeds().add(new Feed(UUID.randomUUID(), feed3, ALL_NEW_ITEMS_IN + " '" + str + "'", StreamItemsUri.buildUpon().appendPath(next.list.get(0).id).appendPath(StreamItemsSuffix).build().toString(), 5));
                    feed = feed3;
                }
            }
            feed.subFeeds().add(new Feed(UUID.randomUUID(), feed2, next.title, next.getIDAsUrl(), 5));
        }
        return feed2;
    }

    private static void insertCommonFeeds(Feed feed, String str) {
        Feed feed2 = new Feed(UUID.randomUUID(), feed, MY_GOOGLE_ITEMS, null, 5);
        feed.subFeeds().add(feed2);
        Feed feed3 = new Feed(UUID.randomUUID(), feed2, MY_READING_LIST, StreamItemsUri.buildUpon().appendPath(String.format("user/%s/category/global.all", str)).appendPath(StreamItemsSuffix).build().toString(), 5);
        Feed feed4 = new Feed(UUID.randomUUID(), feed2, MY_STARRED_ITEMS, StreamItemsUri.buildUpon().appendPath(String.format("user/%s/tag/global.saved", str)).appendPath(StreamItemsSuffix).build().toString(), 5);
        Feed feed5 = new Feed(UUID.randomUUID(), feed2, MY_READ_ITEMS, StreamItemsUri.buildUpon().appendPath(String.format("user/%s/tag/global.read", str)).appendPath(StreamItemsSuffix).build().toString(), 5);
        feed2.subFeeds().add(feed3);
        feed2.subFeeds().add(feed4);
        feed2.subFeeds().add(feed5);
    }

    public static Uri getFeedUri(Feed feed) {
        Uri build;
        if (!feed.isGReaderFeed()) {
            return feed.getFeedUri();
        }
        if (isCategoryAggregatorFeed(feed)) {
            build = feed.getFeedUri();
        } else {
            build = StreamItemsUri.buildUpon().appendPath("feed/" + feed.getFeedUrl()).appendPath(StreamItemsSuffix).build();
        }
        return appendBeyondPodRefererParams(build, feed.getMaxNumGReaderItemsToGet());
    }

    private static Uri appendBeyondPodRefererParams(Uri uri, int i) {
        Uri.Builder buildUpon = uri.buildUpon();
        if (i > 0) {
            buildUpon.appendQueryParameter("count", Integer.toString(i));
        }
        buildUpon.appendQueryParameter("ck", Long.toString(System.currentTimeMillis()));
        buildUpon.appendQueryParameter("ct", Referer);
        return buildUpon.build();
    }

    public static boolean isCategoryAggregatorFeed(Feed feed) {
        if (feed == null || !feed.hasUri()) {
            return false;
        }
        try {
            return feed.getFeedUri().getHost().toLowerCase(Locale.ROOT).startsWith(StreamItemsUri.getHost().toLowerCase(Locale.ROOT));
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, feed.getName());
            return false;
        }
    }

    public static int switchAggregateFeedsToFeedlyForUser(String str) {
        CoreHelper.writeTraceEntry(TAG, "Upgrading user aggregated feeds to Feedly...");
        Iterator<Feed> it = AggregatorLoginHelper.getAllAggregatorFeeds().iterator();
        int i = 0;
        while (it.hasNext()) {
            Feed next = it.next();
            RssFeedCache.deleteFeedCacheFor(next);
            next.setItemFingerprintAlgorithm(-1);
            next.setNumUnreadItems(0);
            next.setLastModifiedDate(null);
            next.setLastServerModifiedDate(null);
            next.setLastItemID(null);
            i++;
        }
        ItemStateHistory.purgeAllGoogleReaderItems();
        ItemStateHistory.saveHistorySync();
        FeedRepository.saveRepositoryAsync();
        CoreHelper.writeTraceEntry(TAG, "Upgraded " + i + " feeds");
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v5, types: [mobi.beyondpod.aggregators.feedly.FRequestRefreshToken] */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static String blockingGetAuthToken() {
        FRequestRefreshToken fRequestRefreshToken;
        String str;
        Date date = new Date();
        Date OAuthAccessTokenExpiration = Configuration.OAuthAccessTokenExpiration();
        String OAuthAccessToken = Configuration.OAuthAccessToken();
        String OAuthRefreshToken = Configuration.OAuthRefreshToken();
        boolean z = OAuthAccessTokenExpiration.getTime() - date.getTime() < 1200000;
        if (!StringUtils.isNullOrEmpty(OAuthAccessToken) && !z) {
            return OAuthAccessToken;
        }
        if (z) {
            CoreHelper.writeTraceEntry(TAG, "- Found expired Feedly token. Token expired at: " + OAuthAccessTokenExpiration + " Refreshing...");
        }
        ?? isNullOrEmpty = StringUtils.isNullOrEmpty(OAuthRefreshToken);
        try {
            if (isNullOrEmpty != 0) {
                CoreHelper.writeTraceEntry(TAG, "- Refresh failed - nor refresh token!");
                return null;
            }
            try {
                CoreHelper.writeTraceEntry(TAG, "- Refreshing Feedly token...");
                fRequestRefreshToken = new FRequestRefreshToken(OAuthRefreshToken);
                try {
                    AggregatorRequestQueue.executeRequest(fRequestRefreshToken);
                    if (fRequestRefreshToken.status() == 1) {
                        str = Configuration.OAuthAccessToken();
                    } else {
                        CoreHelper.writeTraceEntry(TAG, "- Refreshing Feedly token failed!");
                        if (fRequestRefreshToken.shouldRetry()) {
                            CoreHelper.writeTraceEntry(TAG, "- Retrying refresh of Feedly token...");
                            CoreHelper.nap(10);
                            AggregatorRequestQueue.executeRequest(fRequestRefreshToken);
                            if (fRequestRefreshToken.status() == 1) {
                                str = Configuration.OAuthAccessToken();
                            }
                        }
                        str = null;
                    }
                    if (StringUtils.isNullOrEmpty(str)) {
                        CoreHelper.writeTraceEntry(TAG, "- Feedly token refresh failed! Giving up");
                    } else {
                        CoreHelper.writeTraceEntry(TAG, "- Feedly token refreshed! New token expires at: " + Configuration.OAuthAccessTokenExpiration());
                    }
                    if (fRequestRefreshToken != null) {
                        fRequestRefreshToken.httpClient().close();
                    }
                    return str;
                } catch (Exception e) {
                    e = e;
                    CoreHelper.logException(TAG, "- failed to Feedly refresh token!", e);
                    if (fRequestRefreshToken != null) {
                        fRequestRefreshToken.httpClient().close();
                    }
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                fRequestRefreshToken = null;
            } catch (Throwable th) {
                th = th;
                isNullOrEmpty = 0;
                if (isNullOrEmpty != 0) {
                    isNullOrEmpty.httpClient().close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
