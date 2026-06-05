package mobi.beyondpod.downloadengine;

import android.os.Process;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.ProcessStatistics;
import mobi.beyondpod.downloadengine.RssFeedUpdateManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackFilter;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;

/* loaded from: classes.dex */
public class UpdateAndDownloadManager {
    protected static final String TAG = "UpdateAndDownloadManager";
    private static Runnable _FeedProcessingRunnable = null;
    static Runnable _SaveUpdateQueueRunnable = null;
    private static boolean m_AllowMobileDataUseForDownloads = false;
    private static boolean m_IsUnattended = true;
    private static int m_NumStreamableEnclosures = 0;
    private static boolean m_Processing = false;
    private static boolean m_SkipDownloads = false;
    private static final String SCHEDULED_UPDATE_DID_NOT_RUN_BECAUSE_BACKGROUND_DATA_IS_DISABLED = CoreHelper.loadResourceString(R.string.update_download_mgr_scheduled_update_did_not_run_because_background_data_is_disabled);
    private static final String UNABLE_TO_ESTABLISH_INTERNET_CONECTION_THE_DEVICE_IS_IN_AIRPLANE_MODE = CoreHelper.loadResourceString(R.string.update_download_mgr_unable_to_establish_internet_conection_the_device_is_in_airplane_mode);
    private static final String THE_DEVICE_HAS_NO_INTERNET_CONNECTION_WI_FI_ADAPTER_IS_OFF = CoreHelper.loadResourceString(R.string.update_download_mgr_the_device_has_no_internet_connection);
    private static final String CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_WHEN_THE_DEVICE_IS_PLUGGED_IN = CoreHelper.loadResourceString(R.string.update_download_mgr_currently_podcasts_can_be_downloaded_automatically_only_when_the_device_is_plugged_in);
    private static final String CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_OVER_A_WI_FI = CoreHelper.loadResourceString(R.string.update_download_mgr_currently_podcasts_can_be_downloaded_automatically_only_over_a_wifi_connection);
    private static final ArrayList<UpdateAndDownloadListener> _UpdateAndDownloadListener = new ArrayList<>();
    private static final List<Feed> m_DownloadQueue = Collections.synchronizedList(new ArrayList());
    private static final ProcessStatistics.ProcessedFeedList m_Statistics = new ProcessStatistics.ProcessedFeedList();
    private static RssFeedUpdateManager.FeedBatchUpdateListener _FeedBatchUpdateListener = new RssFeedUpdateManager.FeedBatchUpdateListener() { // from class: mobi.beyondpod.downloadengine.UpdateAndDownloadManager.1
        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onAnotherUpdateIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateStarted(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateUnableToEstablishNetworkConnection() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateCompleted(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateProgress(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateStarted(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onInsufficientSpaceAtDownloadLocation(FlashStorageLocation flashStorageLocation) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateCanceled() {
            UpdateAndDownloadManager.onCancel();
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateCompleted() {
            UpdateAndDownloadManager.onUpdateCompleted();
        }
    };
    private static EnclosureDownloadManager.EnclosureBatchDownloadListener _EnclosureBatchDownloadListener = new EnclosureDownloadManager.EnclosureBatchDownloadListener() { // from class: mobi.beyondpod.downloadengine.UpdateAndDownloadManager.2
        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onAnotherDownloadIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadStarted() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchEnclosureDownloadStarting(Track track, boolean z) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadCanceled(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadCompleted(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadFailed(Track track, Exception exc) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadProgress(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadStarted(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadTerminated(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onUnableToEstablishNetworkConnection() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadCanceled() {
            UpdateAndDownloadManager.onCancel();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadCompleted() {
            UpdateAndDownloadManager.onDownloadCompleted();
        }
    };
    private static Thread _ProcessingThread = new Thread();

    /* loaded from: classes.dex */
    public interface UpdateAndDownloadListener {
        void onAnotherDownloadIsInProgress();

        void onUnableToEstablishNetworkConnection();

        void processingCanceled(int i);

        void processingCompleted(int i);

        void processingStarted(int i);

        void updateAndDownloadBatchCompleted();

        void updateAndDownloadBatchStarted();
    }

    static /* synthetic */ int access$408() {
        int i = m_NumStreamableEnclosures;
        m_NumStreamableEnclosures = i + 1;
        return i;
    }

    static {
        RssFeedUpdateManager.addFeedBatchUpdateListener(_FeedBatchUpdateListener);
        EnclosureDownloadManager.addEnclosureBatchDownloadListener(_EnclosureBatchDownloadListener);
        _FeedProcessingRunnable = new Runnable() { // from class: mobi.beyondpod.downloadengine.UpdateAndDownloadManager.3
            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                boolean unused = UpdateAndDownloadManager.m_Processing = true;
                int unused2 = UpdateAndDownloadManager.m_NumStreamableEnclosures = 0;
                UpdateAndDownloadManager.m_Statistics.processTime = new Date();
                ArrayList<EnclosureDownloadManager.DownloadableEnclosure> arrayList = new ArrayList<>();
                CoreHelper.keepDeviceAwake();
                synchronized (UpdateAndDownloadManager._UpdateAndDownloadListener) {
                    Iterator it = UpdateAndDownloadManager._UpdateAndDownloadListener.iterator();
                    while (it.hasNext()) {
                        ((UpdateAndDownloadListener) it.next()).processingStarted(UpdateAndDownloadManager.m_DownloadQueue.size());
                    }
                }
                CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Processing started...");
                boolean isDevicePlugged = CoreHelper.isDevicePlugged();
                boolean isConnectionWiFi = CoreHelper.getDeviceNetworkConnection().isConnectionWiFi();
                processUpdatedFeeds(arrayList, isDevicePlugged, isConnectionWiFi);
                processRemoteAndPartiallyDownloadedEpisodes(arrayList, isDevicePlugged, isConnectionWiFi);
                cleanupUnusedEpisodes();
                synchronized (UpdateAndDownloadManager._UpdateAndDownloadListener) {
                    Iterator it2 = UpdateAndDownloadManager._UpdateAndDownloadListener.iterator();
                    while (it2.hasNext()) {
                        ((UpdateAndDownloadListener) it2.next()).processingCompleted(arrayList.size());
                    }
                }
                CoreHelper.keepDeviceAwake();
                CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Processing Completed!");
                boolean unused3 = UpdateAndDownloadManager.m_Processing = false;
                EnclosureDownloadManager.downloadEnclosures(arrayList, true);
            }

            private void processRemoteAndPartiallyDownloadedEpisodes(ArrayList<EnclosureDownloadManager.DownloadableEnclosure> arrayList, boolean z, boolean z2) {
                ProcessStatistics processStatistics = new ProcessStatistics();
                processStatistics.remoteEpisodes = true;
                UpdateAndDownloadManager.m_Statistics.add(processStatistics);
                TrackList filterTracks = FeedRepository.filterTracks(new TrackFilter() { // from class: mobi.beyondpod.downloadengine.UpdateAndDownloadManager.3.1
                    @Override // mobi.beyondpod.rsscore.TrackFilter
                    public boolean apply(Track track) {
                        return track != null && ((track.isRemoteEpisode() && !track.isFullyDownloaded()) || (Configuration.automaticallyReDownloadPartialEpisodes() && track.hasDownloadStarted() && !track.isFullyDownloaded()));
                    }
                });
                if (filterTracks.size() != 0 && isDownloadAllowed(processStatistics, z, z2)) {
                    Iterator<Track> it = filterTracks.iterator();
                    while (it.hasNext()) {
                        Track next = it.next();
                        Feed parentFeed = next.getParentFeed();
                        File file = new File(next.trackPath());
                        RssEnclosure rssEnclosure = new RssEnclosure(next.getUrl(), file.getParent(), file.getName(), next.contentMimeType(), next.rssItemID(), next.getDownloadSize(), next.getLastModifiedDate(), next.displayName());
                        processStatistics.newEnclosures.add(rssEnclosure.Url);
                        if (UpdateAndDownloadManager.m_SkipDownloads || isEnqueued(arrayList, rssEnclosure) || (parentFeed.getPodcastDownloadAction() != 1 && parentFeed.getPodcastDownloadAction() != 4)) {
                            processStatistics.ignoredEnclosures.add(rssEnclosure.Url);
                        } else {
                            if (parentFeed.numEnclosuresAvailableForDownload == 0) {
                                parentFeed.numDownloadedEnclosures = 0;
                                parentFeed.downloadFailed = false;
                            }
                            parentFeed.numEnclosuresAvailableForDownload++;
                            arrayList.add(new EnclosureDownloadManager.DownloadableEnclosure(parentFeed, rssEnclosure));
                        }
                    }
                }
            }

            private void cleanupUnusedEpisodes() {
                if (Configuration.automaticallyCleanPlayedEpisodes()) {
                    List<Track> allDeletablePlayedEpisodes = FeedRepository.getAllDeletablePlayedEpisodes();
                    CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Automatically deleting " + allDeletablePlayedEpisodes.size() + " unused episodes...");
                    for (Track track : allDeletablePlayedEpisodes) {
                        FeedRepository.deleteTrackSync(track);
                        ItemStateHistory.markTracksItemAsRead(track);
                    }
                }
            }

            private boolean isEnqueued(ArrayList<EnclosureDownloadManager.DownloadableEnclosure> arrayList, RssEnclosure rssEnclosure) {
                Iterator<EnclosureDownloadManager.DownloadableEnclosure> it = arrayList.iterator();
                while (it.hasNext()) {
                    EnclosureDownloadManager.DownloadableEnclosure next = it.next();
                    if (next.enclosure != null && StringUtils.equals(next.enclosure.Url, rssEnclosure.Url)) {
                        return true;
                    }
                }
                return false;
            }

            private int getIfRestrictedPodcastDownloadAction(Feed feed) {
                int podcastDownloadAction = feed.getPodcastDownloadAction();
                if (!PolicyManager.ifMultipleDownloadRestricted()) {
                    return podcastDownloadAction;
                }
                if (podcastDownloadAction == 1) {
                    return 2;
                }
                if (podcastDownloadAction == 4) {
                    return 5;
                }
                return podcastDownloadAction;
            }

            private void processUpdatedFeeds(ArrayList<EnclosureDownloadManager.DownloadableEnclosure> arrayList, boolean z, boolean z2) {
                Feed[] feedArr;
                synchronized (UpdateAndDownloadManager.m_DownloadQueue) {
                    feedArr = (Feed[]) UpdateAndDownloadManager.m_DownloadQueue.toArray(new Feed[0]);
                }
                for (Feed feed : feedArr) {
                    feed.numEnclosuresAvailableForDownload = 0;
                    feed.numDownloadedEnclosures = 0;
                    feed.downloadFailed = false;
                    if (getIfRestrictedPodcastDownloadAction(feed) != 0 && getIfRestrictedPodcastDownloadAction(feed) != 3 && feed.getMaxNumberPodcastToDownload() != 0) {
                        ProcessStatistics processStatistics = new ProcessStatistics();
                        processStatistics.processedFeed = feed;
                        UpdateAndDownloadManager.m_Statistics.add(processStatistics);
                        if ((getIfRestrictedPodcastDownloadAction(feed) == 1 || getIfRestrictedPodcastDownloadAction(feed) == 4) && !isDownloadAllowed(processStatistics, z, z2)) {
                            return;
                        }
                        processFeed(feed, arrayList, processStatistics);
                        if (!UpdateAndDownloadManager.m_Processing) {
                            CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Processing cancelled!");
                            return;
                        }
                    }
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:114:0x0180 A[Catch: Exception -> 0x01ab, TryCatch #0 {Exception -> 0x01ab, blocks: (B:16:0x0029, B:18:0x003d, B:19:0x0058, B:21:0x0060, B:24:0x0067, B:25:0x0081, B:27:0x0087, B:29:0x0096, B:30:0x009c, B:32:0x00a2, B:35:0x00ae, B:38:0x00b4, B:41:0x00c1, B:44:0x00c5, B:47:0x00cb, B:50:0x00d3, B:60:0x00d7, B:62:0x00dd, B:63:0x00e1, B:65:0x00e7, B:68:0x00fa, B:71:0x0102, B:73:0x0108, B:79:0x0134, B:84:0x011a, B:86:0x0142, B:107:0x0148, B:89:0x0150, B:91:0x0156, B:93:0x015a, B:95:0x0162, B:101:0x016a, B:98:0x0176, B:114:0x0180, B:116:0x0186, B:117:0x018a, B:125:0x01a4, B:130:0x01aa, B:132:0x008d, B:133:0x0070, B:76:0x010f, B:78:0x0115, B:119:0x018b, B:120:0x0193, B:122:0x0199, B:124:0x01a3), top: B:15:0x0029, inners: #1, #2 }] */
            /* JADX WARN: Removed duplicated region for block: B:32:0x00a2 A[Catch: Exception -> 0x01ab, TryCatch #0 {Exception -> 0x01ab, blocks: (B:16:0x0029, B:18:0x003d, B:19:0x0058, B:21:0x0060, B:24:0x0067, B:25:0x0081, B:27:0x0087, B:29:0x0096, B:30:0x009c, B:32:0x00a2, B:35:0x00ae, B:38:0x00b4, B:41:0x00c1, B:44:0x00c5, B:47:0x00cb, B:50:0x00d3, B:60:0x00d7, B:62:0x00dd, B:63:0x00e1, B:65:0x00e7, B:68:0x00fa, B:71:0x0102, B:73:0x0108, B:79:0x0134, B:84:0x011a, B:86:0x0142, B:107:0x0148, B:89:0x0150, B:91:0x0156, B:93:0x015a, B:95:0x0162, B:101:0x016a, B:98:0x0176, B:114:0x0180, B:116:0x0186, B:117:0x018a, B:125:0x01a4, B:130:0x01aa, B:132:0x008d, B:133:0x0070, B:76:0x010f, B:78:0x0115, B:119:0x018b, B:120:0x0193, B:122:0x0199, B:124:0x01a3), top: B:15:0x0029, inners: #1, #2 }] */
            /* JADX WARN: Removed duplicated region for block: B:62:0x00dd A[Catch: Exception -> 0x01ab, TryCatch #0 {Exception -> 0x01ab, blocks: (B:16:0x0029, B:18:0x003d, B:19:0x0058, B:21:0x0060, B:24:0x0067, B:25:0x0081, B:27:0x0087, B:29:0x0096, B:30:0x009c, B:32:0x00a2, B:35:0x00ae, B:38:0x00b4, B:41:0x00c1, B:44:0x00c5, B:47:0x00cb, B:50:0x00d3, B:60:0x00d7, B:62:0x00dd, B:63:0x00e1, B:65:0x00e7, B:68:0x00fa, B:71:0x0102, B:73:0x0108, B:79:0x0134, B:84:0x011a, B:86:0x0142, B:107:0x0148, B:89:0x0150, B:91:0x0156, B:93:0x015a, B:95:0x0162, B:101:0x016a, B:98:0x0176, B:114:0x0180, B:116:0x0186, B:117:0x018a, B:125:0x01a4, B:130:0x01aa, B:132:0x008d, B:133:0x0070, B:76:0x010f, B:78:0x0115, B:119:0x018b, B:120:0x0193, B:122:0x0199, B:124:0x01a3), top: B:15:0x0029, inners: #1, #2 }] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private void processFeed(mobi.beyondpod.rsscore.Feed r11, java.util.ArrayList<mobi.beyondpod.downloadengine.EnclosureDownloadManager.DownloadableEnclosure> r12, mobi.beyondpod.downloadengine.ProcessStatistics r13) {
                /*
                    Method dump skipped, instructions count: 457
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.downloadengine.UpdateAndDownloadManager.AnonymousClass3.processFeed(mobi.beyondpod.rsscore.Feed, java.util.ArrayList, mobi.beyondpod.downloadengine.ProcessStatistics):void");
            }

            private boolean isDownloadAllowed(ProcessStatistics processStatistics, boolean z, boolean z2) {
                if (UpdateAndDownloadManager.m_AllowMobileDataUseForDownloads) {
                    processStatistics.podcastDownloadForced = true;
                    CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Force Download is in effect! Ignoring 'Is WiFi On' and 'Is Plugged-In' checks...!");
                } else {
                    if (Configuration.downloadEnclosuresOnWiFiOnly() && !z2) {
                        processStatistics.podcastDownloadSkippedWiFiNotDetected = true;
                        CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Processing skipped! Current settings allow podcast downloads over WiFi only!");
                        processStatistics.lastException = new Exception(UpdateAndDownloadManager.CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_OVER_A_WI_FI);
                        return false;
                    }
                    if (Configuration.downloadEnclosuresWhenChargingOnly() && !z) {
                        processStatistics.podcastDownloadSkippedDeviceIsNotPluggedIn = true;
                        CoreHelper.writeTraceEntry(UpdateAndDownloadManager.TAG, "Processing skipped! Current settings allow podcast downloads only when the device is plugged in!");
                        processStatistics.lastException = new Exception(UpdateAndDownloadManager.CURRENTLY_PODCASTS_CAN_BE_DOWNLOADED_AUTOMATICALLY_ONLY_WHEN_THE_DEVICE_IS_PLUGGED_IN);
                        return false;
                    }
                }
                return true;
            }
        };
        _SaveUpdateQueueRunnable = new Runnable() { // from class: mobi.beyondpod.downloadengine.UpdateAndDownloadManager.4
            @Override // java.lang.Runnable
            public void run() {
                UpdateAndDownloadManager.saveUpdateQueueToFileInternal();
            }
        };
    }

    public static void addUpdateAndDownloadListener(UpdateAndDownloadListener updateAndDownloadListener) {
        synchronized (_UpdateAndDownloadListener) {
            if (_UpdateAndDownloadListener.contains(updateAndDownloadListener)) {
                return;
            }
            _UpdateAndDownloadListener.add(updateAndDownloadListener);
        }
    }

    public static void removeUpdateAndDownloadListener(UpdateAndDownloadListener updateAndDownloadListener) {
        synchronized (_UpdateAndDownloadListener) {
            if (_UpdateAndDownloadListener.contains(updateAndDownloadListener)) {
                _UpdateAndDownloadListener.remove(updateAndDownloadListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onCancel() {
        m_DownloadQueue.clear();
        saveUpdateQueueToFile();
        onUpdateAndDownloadFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onDownloadCompleted() {
        m_DownloadQueue.clear();
        saveUpdateQueueToFile();
        onUpdateAndDownloadFinished();
    }

    private static void onUpdateAndDownloadFinished() {
        if (!m_IsUnattended) {
            CoreHelper.analyzeStatisticsAndNotify();
        }
        m_AllowMobileDataUseForDownloads = false;
        m_SkipDownloads = false;
        syncSmartPlayIfNeeded();
        CoreHelper.dumpUpdateStatistics();
        synchronized (_UpdateAndDownloadListener) {
            Iterator<UpdateAndDownloadListener> it = _UpdateAndDownloadListener.iterator();
            while (it.hasNext()) {
                it.next().updateAndDownloadBatchCompleted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onUpdateCompleted() {
        if (BeyondPodApplication.isRuntimeShuttingDown().booleanValue()) {
            return;
        }
        try {
            _ProcessingThread = new Thread(_FeedProcessingRunnable);
            _ProcessingThread.setName("Update and Download Processing Thread");
            _ProcessingThread.setPriority(4);
            _ProcessingThread.start();
        } catch (InternalError e) {
            CoreHelper.logException(TAG, "Failed to start feed processing thread.", e);
        }
    }

    public static void startNewFeedAddedUpdate(FeedList feedList) {
        startUpdateDownload(feedList, false);
    }

    public static void startQuickUpdate(FeedList feedList) {
        m_SkipDownloads = true;
        startUpdateDownload(feedList, false);
    }

    public static void startUpdateDownload(FeedList feedList, boolean z) {
        Feed[] feedArr;
        CoreHelper.keepDeviceAwake();
        m_AllowMobileDataUseForDownloads = false;
        m_IsUnattended = z;
        boolean z2 = z && !CoreHelper.isBackgroundDataAllowed();
        if (!CoreHelper.isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate() || z2) {
            String str = THE_DEVICE_HAS_NO_INTERNET_CONNECTION_WI_FI_ADAPTER_IS_OFF;
            if (BeyondPodApplication.getInstance().isInAirplaneMode()) {
                str = UNABLE_TO_ESTABLISH_INTERNET_CONECTION_THE_DEVICE_IS_IN_AIRPLANE_MODE;
            } else if (z2) {
                str = SCHEDULED_UPDATE_DID_NOT_RUN_BECAUSE_BACKGROUND_DATA_IS_DISABLED;
            }
            CoreHelper.writeLogEntryInProduction(TAG, str);
            RssFeedUpdateManager.statistics().clear();
            RssFeedUpdateManager.statistics().downloadTime = new Date();
            RssFeedUpdateManager.statistics().isUnattended = m_IsUnattended;
            statistics().clear();
            statistics().lastException = new Exception(str);
            CoreHelper.dumpUpdateStatistics();
            synchronized (_UpdateAndDownloadListener) {
                Iterator<UpdateAndDownloadListener> it = _UpdateAndDownloadListener.iterator();
                while (it.hasNext()) {
                    it.next().onUnableToEstablishNetworkConnection();
                }
            }
            return;
        }
        if (m_DownloadQueue.size() > 0) {
            synchronized (_UpdateAndDownloadListener) {
                Iterator<UpdateAndDownloadListener> it2 = _UpdateAndDownloadListener.iterator();
                while (it2.hasNext()) {
                    it2.next().onAnotherDownloadIsInProgress();
                }
            }
            return;
        }
        Iterator<Feed> it3 = feedList.iterator();
        while (it3.hasNext()) {
            Feed next = it3.next();
            if (next.hasUrl() && !downloadQueueHasUrl(next.getFeedUrl())) {
                m_DownloadQueue.add(next);
            }
        }
        saveUpdateQueueToFile();
        synchronized (_UpdateAndDownloadListener) {
            Iterator<UpdateAndDownloadListener> it4 = _UpdateAndDownloadListener.iterator();
            while (it4.hasNext()) {
                it4.next().updateAndDownloadBatchStarted();
            }
        }
        Configuration.setLastUpdateAndDownloadManagerRunTime(new Date());
        synchronized (m_DownloadQueue) {
            feedArr = (Feed[]) m_DownloadQueue.toArray(new Feed[0]);
        }
        RssFeedUpdateManager.updateFeeds(feedArr);
    }

    private static boolean downloadQueueHasUrl(String str) {
        synchronized (m_DownloadQueue) {
            Iterator<Feed> it = m_DownloadQueue.iterator();
            while (it.hasNext()) {
                if (StringUtils.equals(it.next().getFeedUrl(), str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static void downloadEnclosures(List<EnclosureDownloadManager.DownloadableEnclosure> list, boolean z, boolean z2) {
        m_NumStreamableEnclosures = 0;
        m_IsUnattended = z;
        if (!EnclosureDownloadManager.isDownloading() || !m_AllowMobileDataUseForDownloads) {
            m_AllowMobileDataUseForDownloads = z2;
        }
        EnclosureDownloadManager.downloadEnclosures(list, m_IsUnattended);
    }

    public static boolean isUnattended() {
        return m_IsUnattended;
    }

    public static boolean allowMobileDataUseForDownloads() {
        return m_AllowMobileDataUseForDownloads;
    }

    public static int queueCount() {
        return m_DownloadQueue.size();
    }

    public static void terminateAll() {
        if (m_Processing) {
            m_Processing = false;
        } else if (RssFeedUpdateManager.isUpdating()) {
            RssFeedUpdateManager.terminateAllUpdates();
        } else if (EnclosureDownloadManager.isDownloading()) {
            EnclosureDownloadManager.terminateAllDownloads();
        }
    }

    public static ProcessStatistics.ProcessedFeedList statistics() {
        return m_Statistics;
    }

    public static int numStreamableEnclosures() {
        return m_NumStreamableEnclosures;
    }

    public static boolean isWorking() {
        return m_Processing || RssFeedUpdateManager.isUpdating() || EnclosureDownloadManager.isDownloading();
    }

    public static boolean resumeUpdateAndDownloads() {
        if (m_DownloadQueue.size() > 0) {
            CoreHelper.writeLogEntry(TAG, "Resuming downloads found non empty download queue! Resume aborted!");
            return false;
        }
        List<EnclosureDownloadManager.DownloadableEnclosure> loadDownloadQueueFromFile = EnclosureDownloadManager.loadDownloadQueueFromFile();
        if (loadDownloadQueueFromFile.size() > 0) {
            CoreHelper.writeTraceEntry(TAG, "Resuming enclosure Downloads...");
            EnclosureDownloadManager.downloadEnclosures(loadDownloadQueueFromFile, true);
            return true;
        }
        FeedList loadUpdateQueueFromFile = loadUpdateQueueFromFile();
        if (loadUpdateQueueFromFile.size() > 0) {
            CoreHelper.writeTraceEntry(TAG, "Resuming feed Updates...!");
            startUpdateDownload(loadUpdateQueueFromFile, true);
            return true;
        }
        CoreHelper.writeTraceEntry(TAG, "No pending feed updates or enclosure downloads. Exiting...");
        return false;
    }

    private static void saveUpdateQueueToFile() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_SaveUpdateQueueRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(_SaveUpdateQueueRunnable, 100L);
    }

    public static void saveUpdateQueueToFileInternal() {
        String feedUpdateQueueFilePath = Configuration.feedUpdateQueueFilePath();
        DataOutputStream dataOutputStream = null;
        try {
            try {
                try {
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            if (m_DownloadQueue.size() == 0) {
                new File(feedUpdateQueueFilePath).delete();
                CoreHelper.writeTraceEntry(TAG, "Queue is empty. Deleted the feed Update Queue file");
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "Saving " + m_DownloadQueue.size() + " items to the feed Update Queue...");
            FileOutputStream fileOutputStream = new FileOutputStream(feedUpdateQueueFilePath);
            DataOutputStream dataOutputStream2 = new DataOutputStream(fileOutputStream);
            try {
                synchronized (m_DownloadQueue) {
                    Iterator<Feed> it = m_DownloadQueue.iterator();
                    while (it.hasNext()) {
                        dataOutputStream2.writeUTF(it.next().id().toString());
                    }
                }
                CoreHelper.sync(fileOutputStream);
                dataOutputStream2.close();
            } catch (Exception e2) {
                dataOutputStream = dataOutputStream2;
                e = e2;
                CoreHelper.logException(TAG, "Unable to save feed Update Queue", e);
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                return;
            } catch (Throwable th2) {
                dataOutputStream = dataOutputStream2;
                th = th2;
                if (dataOutputStream != null) {
                    try {
                        dataOutputStream.close();
                    } catch (Exception e3) {
                        CoreHelper.logException(TAG, "Unable to save feed Update Queue", e3);
                    }
                }
                throw th;
            }
            if (dataOutputStream2 != null) {
                dataOutputStream2.close();
            }
        } catch (Exception e4) {
            CoreHelper.logException(TAG, "Unable to save feed Update Queue", e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0053 -> B:18:0x006a). Please report as a decompilation issue!!! */
    public static FeedList loadUpdateQueueFromFile() {
        ?? r3;
        UUID uuid;
        FeedList feedList = new FeedList();
        File file = new File(Configuration.feedUpdateQueueFilePath());
        if (file.exists()) {
            String str = null;
            str = null;
            str = null;
            ?? r2 = 0;
            try {
                try {
                    try {
                        r3 = new FileInputStream(file);
                    } catch (Throwable th) {
                        th = th;
                        r3 = str;
                    }
                    try {
                        try {
                            DataInputStream dataInputStream = new DataInputStream(r3);
                            while (true) {
                                try {
                                    uuid = UUID.fromString(dataInputStream.readUTF());
                                } catch (EOFException unused) {
                                    r3.close();
                                    if (r3 != null) {
                                        r3.close();
                                    }
                                    CoreHelper.writeTraceEntry(TAG, "read " + feedList.size() + " saved items from the saved update queue file");
                                    return feedList;
                                } catch (Exception unused2) {
                                    uuid = null;
                                }
                                Feed feedById = FeedRepository.getFeedById(uuid);
                                if (feedById != null) {
                                    feedList.add(feedById);
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            r2 = r3;
                            CoreHelper.logException(TAG, "Unable to load feed Update Queue. reason: ", e);
                            str = r2;
                            if (r2 != 0) {
                                r2.close();
                                str = r2;
                            }
                            CoreHelper.writeTraceEntry(TAG, "read " + feedList.size() + " saved items from the saved update queue file");
                            return feedList;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (r3 != null) {
                            try {
                                r3.close();
                            } catch (Exception e2) {
                                CoreHelper.logException(TAG, "Unable to load feed Update Queue. reason: ", e2);
                            }
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Exception e4) {
                String str2 = TAG;
                CoreHelper.logException(str2, "Unable to load feed Update Queue. reason: ", e4);
                str = str2;
            }
        }
        CoreHelper.writeTraceEntry(TAG, "read " + feedList.size() + " saved items from the saved update queue file");
        return feedList;
    }

    public boolean hasUpdateQueueFile() {
        return new File(Configuration.feedUpdateQueueFilePath()).exists();
    }

    public static boolean hasWorkToDo() {
        return queueCount() > 0;
    }

    private static void syncSmartPlayIfNeeded() {
        boolean z;
        if (!Configuration.autoSyncSmartPlay() || !SmartPlaylistManager.isConfigured()) {
            CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - no SmartPlay or Sync is disabled!");
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - last update created: " + EnclosureDownloadManager.successfulDownloadsCount() + " downloaded and " + numStreamableEnclosures() + " streamable episodes");
        List<Track> arrayList = new ArrayList<>();
        if (EnclosureDownloadManager.successfulDownloadsCount() > 0 || numStreamableEnclosures() > 0) {
            SmartPlaylist primarySmartPlay = SmartPlaylistManager.primarySmartPlay();
            if (primarySmartPlay != null) {
                arrayList = primarySmartPlay.generatePlaylist();
            }
            List<String> urlsOfNewEpisodes = statistics().getUrlsOfNewEpisodes();
            if (urlsOfNewEpisodes.size() == 0) {
                urlsOfNewEpisodes = new ArrayList<>();
                Iterator<DownloadStatistics> it = EnclosureDownloadManager.statistics().getSuccessfulDownloads().iterator();
                while (it.hasNext()) {
                    urlsOfNewEpisodes.add(it.next().url);
                }
            }
            z = false;
            for (Track track : arrayList) {
                if (!BeyondPodApplication.getInstance().playList().hasTrack(track) && urlsOfNewEpisodes.contains(track.getUrl())) {
                    CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - track " + track.getName() + " was not found in the current playlist. SmartPlay will be restarted.");
                    z = true;
                }
            }
        } else {
            z = false;
        }
        if (Configuration.defferAutoSyncSmartPlay()) {
            CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - Detected pending deffered rebuild at the end of download. SmartPlay will be restarted.");
            Configuration.setDefferAutoSyncSmartPlay(false);
            z = true;
        }
        if (z) {
            if (!PlayList.isCurrentlyPlaying()) {
                CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - Syncing SmartPlay...");
                BeyondPodApplication.getInstance().playList().rebuildSmartPlay(Configuration.keepCurrentEpisodeForDefferAutoSyncSmartPlay(), false, true);
                return;
            } else {
                CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - Currently Playing... Syncing will be deffered for later...");
                Configuration.setDefferAutoSyncSmartPlay(true);
                return;
            }
        }
        CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - No need to sync SmartPlay!");
    }

    public static void deleteOldTracksForFeed(Feed feed, boolean z) {
        Iterator<Track> it = FeedRepository.getOldTracksForFeed(feed, z).iterator();
        while (it.hasNext()) {
            Track next = it.next();
            FeedRepository.deleteTrackAsync(next);
            ItemStateHistory.markTracksItemAsRead(next);
        }
    }
}
