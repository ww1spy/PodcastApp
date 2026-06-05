package mobi.beyondpod.downloadengine;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.RssFeedCatcher;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.GenericQueue;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;

/* loaded from: classes.dex */
public class RssFeedUpdateManager {
    private static final String TAG = "RssFeedUpdateManager";
    private static int _FeedCountAtBatchStart = 0;
    private static int _FeedsFailedCount = 0;
    private static int _FeedsUnchangedCount = 0;
    private static int _FeedsWithNewContentCount = 0;
    private static boolean m_AtQueueStart = false;
    private static final RssFeedCatcher m_Catcher = new RssFeedCatcher();
    private static final GenericQueue<Feed> m_UpdateQueue = new GenericQueue<>();
    private static final HashMap<String, RetryInfo> m_RetryList = new HashMap<>();
    private static final DownloadStatisticsList _UpdateStatistics = new DownloadStatisticsList();
    private static final ArrayList<FeedBatchUpdateListener> _FeedBatchUpdateListeners = new ArrayList<>();
    private static RssFeedCatcher.FeedUpdateListener _FeedUpdateListener = new RssFeedCatcher.FeedUpdateListener() { // from class: mobi.beyondpod.downloadengine.RssFeedUpdateManager.1
        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateCompleted(Feed feed) {
            if (RssFeedUpdateManager.m_RetryList.containsKey(feed.getFeedUrl())) {
                RssFeedUpdateManager.m_RetryList.remove(feed.getFeedUrl());
            }
            synchronized (RssFeedUpdateManager._FeedBatchUpdateListeners) {
                Iterator it = RssFeedUpdateManager._FeedBatchUpdateListeners.iterator();
                while (it.hasNext()) {
                    ((FeedBatchUpdateListener) it.next()).onFeedUpdateCompleted(feed);
                }
            }
            FeedRepository.notifyFeedChanged(feed);
            RssFeedUpdateManager.updateStatistics(feed);
            RssFeedUpdateManager.doNextFeed(true);
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateError(Feed feed, Exception exc) {
            FeedRepository.notifyFeedChanged(feed);
            RssFeedUpdateManager.updateStatistics(feed);
            if (!(exc instanceof CoreHelper.UnableToEstablishNetworkConnectionException)) {
                RssFeedUpdateManager.doNextFeed(!RssFeedUpdateManager.shouldRetry(feed, exc));
            } else {
                RssFeedUpdateManager.terminateAllUpdates();
            }
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateProgress(Feed feed) {
            if (RssFeedUpdateManager.m_RetryList.containsKey(feed.getFeedUrl()) && ((RetryInfo) RssFeedUpdateManager.m_RetryList.get(feed.getFeedUrl())).isCancelable()) {
                RssFeedUpdateManager.m_RetryList.remove(feed.getFeedUrl());
            }
            synchronized (RssFeedUpdateManager._FeedBatchUpdateListeners) {
                Iterator it = RssFeedUpdateManager._FeedBatchUpdateListeners.iterator();
                while (it.hasNext()) {
                    ((FeedBatchUpdateListener) it.next()).onFeedUpdateProgress(feed);
                }
            }
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateStarted(Feed feed) {
            if (RssFeedUpdateManager.isAtQueueStart()) {
                RssFeedUpdateManager.onUpdateBatchStarted();
            }
            synchronized (RssFeedUpdateManager._FeedBatchUpdateListeners) {
                Iterator it = RssFeedUpdateManager._FeedBatchUpdateListeners.iterator();
                while (it.hasNext()) {
                    ((FeedBatchUpdateListener) it.next()).onFeedUpdateStarted(feed);
                }
            }
            FeedRepository.notifyFeedChanged(feed);
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedCatcher.FeedUpdateListener
        public void onFeedUpdateTerminated(Feed feed) {
            FeedRepository.notifyFeedChanged(feed);
        }
    };

    /* loaded from: classes.dex */
    public interface FeedBatchUpdateListener {
        void onAnotherUpdateIsInProgress();

        void onFeedBatchUpdateCanceled();

        void onFeedBatchUpdateCompleted();

        void onFeedBatchUpdateStarted(Feed feed);

        void onFeedBatchUpdateUnableToEstablishNetworkConnection();

        void onFeedUpdateCompleted(Feed feed);

        void onFeedUpdateProgress(Feed feed);

        void onFeedUpdateStarted(Feed feed);

        void onInsufficientSpaceAtDownloadLocation(FlashStorageLocation flashStorageLocation);
    }

    static {
        m_Catcher.setFeedUpdateListener(_FeedUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RetryInfo {
        public Exception reason;
        public int retryCount;

        RetryInfo(Exception exc, int i) {
            this.retryCount = i;
            this.reason = exc;
        }

        public boolean canRetry() {
            return this.retryCount > 0;
        }

        public void doRetry() {
            this.retryCount--;
        }

        public boolean isCancelable() {
            return !(this.reason instanceof AggregatorLoginHelper.AuthenticationException);
        }
    }

    public static void addFeedBatchUpdateListener(FeedBatchUpdateListener feedBatchUpdateListener) {
        synchronized (_FeedBatchUpdateListeners) {
            if (_FeedBatchUpdateListeners.contains(feedBatchUpdateListener)) {
                return;
            }
            _FeedBatchUpdateListeners.add(feedBatchUpdateListener);
        }
    }

    public static void removeFeedBatchUpdateListener(FeedBatchUpdateListener feedBatchUpdateListener) {
        synchronized (_FeedBatchUpdateListeners) {
            if (_FeedBatchUpdateListeners.contains(feedBatchUpdateListener)) {
                _FeedBatchUpdateListeners.remove(feedBatchUpdateListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void updateFeeds(Feed[] feedArr) {
        if (prepareForUpdate()) {
            for (Feed feed : feedArr) {
                m_UpdateQueue.enqueue(feed);
            }
            updateQueuedFeeds();
        }
    }

    public static void terminateAllUpdates() {
        if (m_Catcher.isUpdating()) {
            m_Catcher.stop();
        }
        if (m_UpdateQueue.hasItems()) {
            m_UpdateQueue.clear();
        }
        synchronized (_FeedBatchUpdateListeners) {
            Iterator<FeedBatchUpdateListener> it = _FeedBatchUpdateListeners.iterator();
            while (it.hasNext()) {
                it.next().onFeedBatchUpdateCanceled();
            }
        }
    }

    public static boolean isAtQueueStart() {
        return m_AtQueueStart;
    }

    public static boolean isUpdating() {
        return m_Catcher.isUpdating() || m_UpdateQueue.size() > 0;
    }

    public static int queueCount() {
        return m_UpdateQueue.size();
    }

    public static int feedsUnchangedCount() {
        return _FeedsUnchangedCount;
    }

    public static int feedsFailedCount() {
        return statistics().getFailedDownloads().size();
    }

    public static int feedsWithNewContentCount() {
        return _FeedsWithNewContentCount;
    }

    public static int feedCountAtBatchStart() {
        return _FeedCountAtBatchStart;
    }

    public static void resetUpdateCounters() {
        _FeedsUnchangedCount = 0;
        _FeedCountAtBatchStart = 0;
        _FeedsWithNewContentCount = 0;
        _FeedsFailedCount = 0;
    }

    public static Feed currentFeed() {
        if (m_UpdateQueue.size() == 0) {
            return null;
        }
        return m_UpdateQueue.peek();
    }

    public static DownloadStatisticsList statistics() {
        return _UpdateStatistics;
    }

    private static void updateFeedInternal(Feed feed) {
        if (feed == null || !feed.hasUrl()) {
            throw new IllegalArgumentException("Error updating feed: both feed and feed.URL are required parameters");
        }
        synchronized (_FeedBatchUpdateListeners) {
            Iterator<FeedBatchUpdateListener> it = _FeedBatchUpdateListeners.iterator();
            while (it.hasNext()) {
                it.next().onFeedBatchUpdateStarted(feed);
            }
        }
        m_Catcher.updateFeed(feed, false);
    }

    private static boolean prepareForUpdate() {
        FlashStorageLocation flashStorageLocation = new FlashStorageLocation(Configuration.rssCachePath());
        if (!CoreHelper.isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate()) {
            CoreHelper.writeLogEntryInProduction(TAG, "Found that the device has no Internet connection and the WiFi should not be turned on! Canceling Downloads...");
            synchronized (_FeedBatchUpdateListeners) {
                Iterator<FeedBatchUpdateListener> it = _FeedBatchUpdateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onFeedBatchUpdateUnableToEstablishNetworkConnection();
                }
            }
            return false;
        }
        if (m_Catcher.isUpdating() || EnclosureDownloadManager.isDownloading()) {
            synchronized (_FeedBatchUpdateListeners) {
                Iterator<FeedBatchUpdateListener> it2 = _FeedBatchUpdateListeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onAnotherUpdateIsInProgress();
                }
            }
            return false;
        }
        if (!flashStorageLocation.checkIfSpaceIsAvailable(204800L)) {
            synchronized (_FeedBatchUpdateListeners) {
                Iterator<FeedBatchUpdateListener> it3 = _FeedBatchUpdateListeners.iterator();
                while (it3.hasNext()) {
                    it3.next().onInsufficientSpaceAtDownloadLocation(flashStorageLocation);
                }
            }
            return false;
        }
        resetUpdateCounters();
        m_RetryList.clear();
        m_UpdateQueue.clear();
        m_AtQueueStart = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldRetry(Feed feed, Exception exc) {
        boolean z;
        if (exc instanceof CoreHelper.InsuficientStorageSpaceException) {
            z = false;
        } else {
            if (exc instanceof AggregatorLoginHelper.AuthenticationException) {
                AggregatorLoginHelper.clearAccountToken();
            }
            z = true;
        }
        if ((exc instanceof FileNotFoundException) && !PermissionUtil.hasExternalStoragePermission()) {
            z = false;
        }
        BeyondPodApplication.pokeWiFiIfNeeded(exc);
        String feedUrl = feed.getFeedUrl();
        if (z) {
            if (m_RetryList.containsKey(feedUrl)) {
                m_RetryList.get(feedUrl).doRetry();
            } else {
                m_RetryList.put(feedUrl, new RetryInfo(exc, 1));
            }
        } else {
            m_RetryList.put(feedUrl, new RetryInfo(exc, 0));
        }
        return m_RetryList.get(feedUrl).canRetry();
    }

    private static void updateQueuedFeeds() {
        if (currentFeed() != null) {
            updateFeedInternal(currentFeed());
        } else {
            onUpdateBatchCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onUpdateBatchStarted() {
        CoreHelper.writeTraceEntry(TAG, "Update Batch Started!");
        _UpdateStatistics.clear();
        _UpdateStatistics.downloadTime = new Date();
        _UpdateStatistics.isUnattended = UpdateAndDownloadManager.isUnattended();
        _FeedCountAtBatchStart = queueCount();
    }

    private static void onUpdateBatchCompleted() {
        CoreHelper.writeTraceEntry(TAG, "Update Batch Completed!");
        synchronized (_FeedBatchUpdateListeners) {
            Iterator<FeedBatchUpdateListener> it = _FeedBatchUpdateListeners.iterator();
            while (it.hasNext()) {
                it.next().onFeedBatchUpdateCompleted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doNextFeed(boolean z) {
        if (m_UpdateQueue.size() > 0) {
            if (z) {
                m_UpdateQueue.dequeue();
            } else {
                CoreHelper.keepDeviceAwake();
                CoreHelper.writeLogEntryInProduction(TAG, "@@@@@ Sleeping before feed update retry...");
                CoreHelper.nap(10);
            }
            m_AtQueueStart = false;
        }
        updateQueuedFeeds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateStatistics(Feed feed) {
        if (m_Catcher.statistics() != null) {
            m_Catcher.statistics().ownerFeed = feed;
            if (m_Catcher.statistics().hasErrors()) {
                _FeedsFailedCount++;
            } else if (feed.hasNewContent()) {
                _FeedsWithNewContentCount++;
            } else {
                _FeedsUnchangedCount++;
            }
            _UpdateStatistics.add(m_Catcher.statistics());
        }
    }

    public static FeedList updateQueue() {
        FeedList feedList = new FeedList();
        for (int i = 0; i != m_UpdateQueue.size(); i++) {
            feedList.add(m_UpdateQueue.get(i));
        }
        return feedList;
    }
}
