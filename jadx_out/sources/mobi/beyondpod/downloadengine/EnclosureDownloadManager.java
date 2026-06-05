package mobi.beyondpod.downloadengine;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.DownloadAgent;
import mobi.beyondpod.downloadengine.EnclosureDownloader;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;

/* loaded from: classes.dex */
public class EnclosureDownloadManager {
    private static final String TAG = "EnclosureDownloadManager";
    private static boolean _DownloadServiceHolderStartedAtStart = false;
    private static int _FailedDownloadsCount = 0;
    private static int _SuccessfulDownloadsCount = 0;
    private static boolean _WiFiTurnedOnAtStart = false;
    private static boolean m_AtQueueStart = false;
    public static boolean m_IsUnattended = true;
    private static final DownloadStatisticsList _DownloadStats = new DownloadStatisticsList();
    private static final EnclosureDownloader m_Downloader = new EnclosureDownloader();
    private static final EnclosureDownloadQueue m_DownloadQueue = new EnclosureDownloadQueue();
    private static final HashMap<String, Integer> m_RetryList = new HashMap<>();
    private static final ArrayList<EnclosureBatchDownloadListener> _EnclosureBatchDownloadListener = new ArrayList<>();
    private static EnclosureDownloader.EnclosureDownloadListener _EnclosureDownloadListener = new EnclosureDownloader.EnclosureDownloadListener() { // from class: mobi.beyondpod.downloadengine.EnclosureDownloadManager.1
        @Override // mobi.beyondpod.downloadengine.EnclosureDownloader.EnclosureDownloadListener
        public void onEnclosureDownloadCompleted(Track track) {
            EnclosureDownloadManager.updateStatistics(track);
            if (EnclosureDownloadManager.m_RetryList.containsKey(track.getUrl())) {
                EnclosureDownloadManager.m_RetryList.remove(track.getUrl());
            }
            track.getParentFeed().numDownloadedEnclosures++;
            EnclosureDownloadManager.access$508();
            synchronized (EnclosureDownloadManager._EnclosureBatchDownloadListener) {
                Iterator it = EnclosureDownloadManager._EnclosureBatchDownloadListener.iterator();
                while (it.hasNext()) {
                    ((EnclosureBatchDownloadListener) it.next()).onEnclosureDownloadCompleted(track);
                }
            }
            EnclosureDownloadManager.m_DownloadQueue.dequeue();
            FeedRepository.notifyFeedChanged(track.getParentFeed());
            EnclosureDownloadManager.downloadQueuedEnclosures();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloader.EnclosureDownloadListener
        public void onEnclosureDownloadError(Track track, Exception exc) {
            EnclosureDownloadManager.updateStatistics(track);
            boolean shouldRetry = EnclosureDownloadManager.shouldRetry(track, exc);
            if (!shouldRetry) {
                EnclosureDownloadManager.m_DownloadQueue.dequeue();
                if (!track.exists() && !track.isRemoteEpisode() && track.getPlayedTime() == 0 && track.rowID() == null) {
                    track.changeTrackingEnabled = false;
                    FeedRepository.deleteTrackAsync(track);
                }
                EnclosureDownloadManager.access$1008();
                CoreHelper.writeTraceEntry(EnclosureDownloadManager.TAG, "@@@@ All retries failed! Giving up the download of: " + track.getName());
            }
            synchronized (EnclosureDownloadManager._EnclosureBatchDownloadListener) {
                Iterator it = EnclosureDownloadManager._EnclosureBatchDownloadListener.iterator();
                while (it.hasNext()) {
                    ((EnclosureBatchDownloadListener) it.next()).onEnclosureDownloadFailed(track, exc);
                }
            }
            if (!(exc instanceof CoreHelper.UnableToEstablishNetworkConnectionException)) {
                if (shouldRetry) {
                    CoreHelper.keepDeviceAwake();
                    CoreHelper.writeLogEntryInProduction(EnclosureDownloadManager.TAG, "@@@@@ Sleeping before episode download retry...");
                    CoreHelper.nap(10);
                }
                EnclosureDownloadManager.downloadQueuedEnclosures();
                return;
            }
            EnclosureDownloadManager.terminateAllDownloads();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloader.EnclosureDownloadListener
        public void onEnclosureDownloadProgress(Track track) {
            EnclosureDownloadManager.m_RetryList.containsKey(track.getUrl());
            synchronized (EnclosureDownloadManager._EnclosureBatchDownloadListener) {
                Iterator it = EnclosureDownloadManager._EnclosureBatchDownloadListener.iterator();
                while (it.hasNext()) {
                    ((EnclosureBatchDownloadListener) it.next()).onEnclosureDownloadProgress(track);
                }
            }
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloader.EnclosureDownloadListener
        public void onEnclosureDownloadStarted(Track track) {
            synchronized (EnclosureDownloadManager._EnclosureBatchDownloadListener) {
                Iterator it = EnclosureDownloadManager._EnclosureBatchDownloadListener.iterator();
                while (it.hasNext()) {
                    ((EnclosureBatchDownloadListener) it.next()).onEnclosureDownloadStarted(track);
                }
            }
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloader.EnclosureDownloadListener
        public void onEnclosureDownloadTerminated(Track track) {
            EnclosureDownloadManager.updateStatistics(track);
            synchronized (EnclosureDownloadManager._EnclosureBatchDownloadListener) {
                Iterator it = EnclosureDownloadManager._EnclosureBatchDownloadListener.iterator();
                while (it.hasNext()) {
                    ((EnclosureBatchDownloadListener) it.next()).onEnclosureDownloadTerminated(track);
                }
            }
            EnclosureDownloadManager.m_DownloadQueue.dequeue();
            EnclosureDownloadManager.downloadQueuedEnclosures();
        }
    };

    /* loaded from: classes.dex */
    public interface EnclosureBatchDownloadListener {
        void onAnotherDownloadIsInProgress();

        void onEnclosureBatchDownloadCanceled();

        void onEnclosureBatchDownloadCompleted();

        void onEnclosureBatchDownloadStarted();

        void onEnclosureBatchEnclosureDownloadStarting(Track track, boolean z);

        void onEnclosureDownloadCanceled(Track track);

        void onEnclosureDownloadCompleted(Track track);

        void onEnclosureDownloadFailed(Track track, Exception exc);

        void onEnclosureDownloadProgress(Track track);

        void onEnclosureDownloadStarted(Track track);

        void onEnclosureDownloadTerminated(Track track);

        void onUnableToEstablishNetworkConnection();
    }

    static /* synthetic */ int access$1008() {
        int i = _FailedDownloadsCount;
        _FailedDownloadsCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$508() {
        int i = _SuccessfulDownloadsCount;
        _SuccessfulDownloadsCount = i + 1;
        return i;
    }

    /* loaded from: classes.dex */
    public static class DownloadableEnclosure {
        public RssEnclosure enclosure;
        public Feed feed;

        public DownloadableEnclosure(Feed feed, RssEnclosure rssEnclosure) {
            this.feed = feed;
            this.enclosure = rssEnclosure;
        }
    }

    static {
        m_Downloader.setEnclosureDownloadListener(_EnclosureDownloadListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class EnclosureDownloadQueue extends ConcurrentLinkedQueue<DownloadableEnclosure> {
        Runnable _SaveDownloadQueueRunnable;
        public int downloadCount;

        private EnclosureDownloadQueue() {
            this.downloadCount = 0;
            this._SaveDownloadQueueRunnable = new Runnable() { // from class: mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureDownloadQueue.1
                @Override // java.lang.Runnable
                public void run() {
                    EnclosureDownloadQueue.this.saveDownloadQueueToFileInternal();
                }
            };
        }

        public void enqueue(List<DownloadableEnclosure> list) {
            Iterator<DownloadableEnclosure> it = list.iterator();
            while (it.hasNext()) {
                enqueueInternal(it.next());
            }
            onDownloadQueueChanged();
        }

        public void enqueue(DownloadableEnclosure downloadableEnclosure) {
            if (enqueueInternal(downloadableEnclosure)) {
                onDownloadQueueChanged();
            }
        }

        public List<DownloadableEnclosure> downloadQueue() {
            return Arrays.asList(toArray(new DownloadableEnclosure[0]));
        }

        public DownloadableEnclosure dequeue() {
            DownloadableEnclosure downloadableEnclosure = (DownloadableEnclosure) super.poll();
            onDownloadQueueChanged();
            return downloadableEnclosure;
        }

        private boolean enqueueInternal(DownloadableEnclosure downloadableEnclosure) {
            if (downloadableEnclosure.feed == null || StringUtils.isNullOrEmpty(downloadableEnclosure.enclosure.Url) || contains(downloadableEnclosure)) {
                return false;
            }
            if (size() == 0) {
                this.downloadCount = 1;
            } else {
                this.downloadCount++;
            }
            super.add(downloadableEnclosure);
            return true;
        }

        public boolean containsUrl(String str) {
            Iterator<DownloadableEnclosure> it = iterator();
            while (it.hasNext()) {
                if (StringUtils.equals(it.next().enclosure.Url, str)) {
                    return true;
                }
            }
            return false;
        }

        public void removeFromQueue(String str) {
            Iterator it = iterator();
            while (it.hasNext()) {
                DownloadableEnclosure downloadableEnclosure = (DownloadableEnclosure) it.next();
                if (StringUtils.equals(downloadableEnclosure.enclosure.Url, str)) {
                    super.remove(downloadableEnclosure);
                    onDownloadQueueChanged();
                    return;
                }
            }
        }

        public boolean contains(DownloadableEnclosure downloadableEnclosure) {
            return containsUrl(downloadableEnclosure.enclosure.Url);
        }

        @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            super.clear();
            onDownloadQueueChanged();
        }

        private void onDownloadQueueChanged() {
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_QUEUE_CHANGED, null));
            saveDownloadQueueToFile();
        }

        private void saveDownloadQueueToFile() {
            RepositoryPersistence.repositoryHandler().removeCallbacks(this._SaveDownloadQueueRunnable);
            RepositoryPersistence.repositoryHandler().postDelayed(this._SaveDownloadQueueRunnable, 100L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v4 */
        public void saveDownloadQueueToFileInternal() {
            Exception e;
            DataOutputStream dataOutputStream;
            DataOutputStream enclosureDownloadQueueFilePath = Configuration.enclosureDownloadQueueFilePath();
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                } catch (Exception e2) {
                    CoreHelper.logException(EnclosureDownloadManager.TAG, "Unable to save enclosure Download Queue", e2);
                    return;
                }
            } catch (Exception e3) {
                e = e3;
                dataOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                enclosureDownloadQueueFilePath = 0;
                if (enclosureDownloadQueueFilePath != 0) {
                    try {
                        enclosureDownloadQueueFilePath.close();
                    } catch (Exception e4) {
                        CoreHelper.logException(EnclosureDownloadManager.TAG, "Unable to save enclosure Download Queue", e4);
                    }
                }
                throw th;
            }
            if (!isEmpty()) {
                CoreHelper.writeTraceEntry(EnclosureDownloadManager.TAG, "Saving " + size() + " enclosures to the enclosure Download Queue...");
                FileOutputStream fileOutputStream = new FileOutputStream((String) enclosureDownloadQueueFilePath);
                dataOutputStream = new DataOutputStream(fileOutputStream);
                try {
                    Iterator<DownloadableEnclosure> it = iterator();
                    while (it.hasNext()) {
                        DownloadableEnclosure next = it.next();
                        dataOutputStream.writeUTF(next.feed.id().toString());
                        dataOutputStream.writeUTF(next.enclosure.Type == null ? "" : next.enclosure.Type);
                        dataOutputStream.writeUTF(next.enclosure.Url);
                        dataOutputStream.writeUTF(next.enclosure.DownloadPath);
                        dataOutputStream.writeUTF(next.enclosure.fileName());
                        dataOutputStream.writeUTF(next.enclosure.parentItemID());
                        long j = 0;
                        dataOutputStream.writeLong(next.enclosure.enclosureFileLength() == null ? 0L : next.enclosure.enclosureFileLength().longValue());
                        if (next.enclosure.pubDate() != null) {
                            j = next.enclosure.pubDate().getTime();
                        }
                        dataOutputStream.writeLong(j);
                    }
                    CoreHelper.sync(fileOutputStream);
                    dataOutputStream.close();
                } catch (Exception e5) {
                    e = e5;
                    CoreHelper.logException(EnclosureDownloadManager.TAG, "Unable to save enclosure Download Queue", e);
                    if (dataOutputStream != null) {
                        dataOutputStream.close();
                        return;
                    }
                    return;
                }
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                    return;
                }
                return;
            }
            new File(Configuration.enclosureDownloadQueueFilePath()).delete();
            CoreHelper.writeTraceEntry(EnclosureDownloadManager.TAG, "Queue is empty. Deleted the enclosure Download Queue file");
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:49:? A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.ArrayList<mobi.beyondpod.downloadengine.EnclosureDownloadManager.DownloadableEnclosure> loadDownloadQueueFromFile() {
            /*
                Method dump skipped, instructions count: 245
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureDownloadQueue.loadDownloadQueueFromFile():java.util.ArrayList");
        }
    }

    public static void addEnclosureBatchDownloadListener(EnclosureBatchDownloadListener enclosureBatchDownloadListener) {
        synchronized (_EnclosureBatchDownloadListener) {
            if (_EnclosureBatchDownloadListener.contains(enclosureBatchDownloadListener)) {
                return;
            }
            _EnclosureBatchDownloadListener.add(enclosureBatchDownloadListener);
        }
    }

    public static void removeEnclosureBatchDownloadListener(EnclosureBatchDownloadListener enclosureBatchDownloadListener) {
        synchronized (_EnclosureBatchDownloadListener) {
            if (_EnclosureBatchDownloadListener.contains(enclosureBatchDownloadListener)) {
                _EnclosureBatchDownloadListener.remove(enclosureBatchDownloadListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void downloadEnclosures(List<DownloadableEnclosure> list, boolean z) {
        if (isDownloading()) {
            CoreHelper.writeTraceEntry(TAG, "enclosure Download Manager is Downloading... Adding " + list.size() + " enclosures to the queue!");
            m_DownloadQueue.enqueue(list);
            onEnclosureDownloadStarting(null);
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "enclosure Download Manager is Idle... Starting download of " + list.size() + " enclosures!");
        if (prepareForDownload()) {
            m_IsUnattended = z;
            m_DownloadQueue.enqueue(list);
            downloadQueuedEnclosures();
            return;
        }
        onDownloadBatchCompleted();
    }

    public static boolean isDownloadPending(String str) {
        return m_DownloadQueue.containsUrl(str);
    }

    public static boolean isDownloadPending(RssEnclosure rssEnclosure) {
        return isDownloadPending(rssEnclosure.Url);
    }

    public static void removeFromQueue(RssEnclosure rssEnclosure) {
        removeFromQueue(rssEnclosure.Url);
    }

    public static void removeFromQueue(String str) {
        Track track = m_Downloader.track();
        if (track == null || !StringUtils.equalsIgnoreCase(track.getUrl(), str)) {
            m_DownloadQueue.removeFromQueue(str);
        }
    }

    public static List<DownloadableEnclosure> loadDownloadQueueFromFile() {
        return m_DownloadQueue.loadDownloadQueueFromFile();
    }

    public static void terminateAllDownloads() {
        CoreHelper.writeLogEntry(TAG, ">> Received TerminateAllDownloads command");
        if (m_DownloadQueue.size() > 0) {
            m_DownloadQueue.clear();
        }
        if (m_Downloader.isDownloading()) {
            m_Downloader.stop();
        }
        EnclosureDownloadHistory.saveHistorySync();
        synchronized (_EnclosureBatchDownloadListener) {
            Iterator<EnclosureBatchDownloadListener> it = _EnclosureBatchDownloadListener.iterator();
            while (it.hasNext()) {
                it.next().onEnclosureBatchDownloadCanceled();
            }
        }
    }

    public static Feed currentFeed() {
        if (m_DownloadQueue.size() == 0) {
            return null;
        }
        return m_DownloadQueue.peek().feed;
    }

    public static boolean isAtQueueStart() {
        return m_AtQueueStart;
    }

    public static boolean isDownloading() {
        return m_Downloader.isDownloading() || m_DownloadQueue.size() > 0;
    }

    public static DownloadStatisticsList statistics() {
        return _DownloadStats;
    }

    public static int failedDownloadsCount() {
        return _FailedDownloadsCount;
    }

    public static int downloadCount() {
        return m_DownloadQueue.downloadCount;
    }

    public static int successfulDownloadsCount() {
        return _SuccessfulDownloadsCount;
    }

    public static int queueCount() {
        return m_DownloadQueue.size();
    }

    public static List<DownloadableEnclosure> downloadQueue() {
        return m_DownloadQueue.downloadQueue();
    }

    private static void downloadEnclosureInternal(DownloadableEnclosure downloadableEnclosure) {
        Feed feed = downloadableEnclosure.feed;
        Long enclosureFileLength = downloadableEnclosure.enclosure.enclosureFileLength();
        try {
            if ((m_IsUnattended || Configuration.allowCleanupForManualDownloads()) && feed.getPodcastDownloadAction() != 4 && feed.getPodcastDownloadAction() != 5) {
                Track localEnclosureTrack = downloadableEnclosure.enclosure.getLocalEnclosureTrack();
                if (localEnclosureTrack != null && localEnclosureTrack.isRemoteEpisode()) {
                    CoreHelper.writeLogEntryInProduction(TAG, "Episode Cleanup rules were ignored when downloading the remote episode: " + localEnclosureTrack.getName());
                } else {
                    UpdateAndDownloadManager.deleteOldTracksForFeed(feed, localEnclosureTrack == null);
                }
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to delete old tracks for feed: " + feed.getName(), e);
        }
        Track findOrCreateLocalTrack = FeedRepository.findOrCreateLocalTrack(feed, downloadableEnclosure.enclosure.Url, downloadableEnclosure.enclosure.pubDate(), downloadableEnclosure.enclosure.parentItemID(), downloadableEnclosure.enclosure.Type, CoreHelper.cleanTitle(downloadableEnclosure.enclosure.Parent != null ? CoreHelper.htmlDecode(downloadableEnclosure.enclosure.Parent.Title) : "").toString(), downloadableEnclosure.enclosure.description(), downloadableEnclosure.enclosure.showNotes(), downloadableEnclosure.enclosure.Parent != null ? downloadableEnclosure.enclosure.Parent.Link : "", true);
        if (findOrCreateLocalTrack != null && !findOrCreateLocalTrack.isFullyDownloaded()) {
            findOrCreateLocalTrack.setDownloadSize(enclosureFileLength == null ? 0L : enclosureFileLength.longValue());
            findOrCreateLocalTrack.setDownloadStatus(6);
            onEnclosureDownloadStarting(findOrCreateLocalTrack);
            m_Downloader.downloadTrack(findOrCreateLocalTrack, downloadableEnclosure.enclosure);
            return;
        }
        DownloadStatistics downloadStatistics = new DownloadStatistics();
        downloadStatistics.ownerFeed = feed;
        downloadStatistics.ownerTrack = findOrCreateLocalTrack;
        if (findOrCreateLocalTrack == null) {
            downloadStatistics.lastException = new Exception("Unable to create local track for download!");
        } else {
            downloadStatistics.downloadSkipped = true;
        }
        _DownloadStats.add(downloadStatistics);
        if (m_DownloadQueue.dequeue() != null) {
            downloadQueuedEnclosures();
        } else {
            CoreHelper.writeTraceEntry(TAG, "failed to dequeue download queue! Terminating...");
            onDownloadBatchCompleted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void downloadQueuedEnclosures() {
        if (isAtQueueStart()) {
            onDownloadBatchStarted();
        }
        if (m_DownloadQueue.size() > 0) {
            downloadEnclosureInternal(m_DownloadQueue.peek());
        } else {
            CoreHelper.writeTraceEntry(TAG, "Nothing to Download!");
            onDownloadBatchCompleted();
        }
    }

    private static void onEnclosureDownloadStarting(Track track) {
        boolean z = track != null && m_RetryList.containsKey(track.getUrl());
        synchronized (_EnclosureBatchDownloadListener) {
            Iterator<EnclosureBatchDownloadListener> it = _EnclosureBatchDownloadListener.iterator();
            while (it.hasNext()) {
                it.next().onEnclosureBatchEnclosureDownloadStarting(track, z);
            }
        }
    }

    private static boolean prepareForDownload() {
        if (!CoreHelper.isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate()) {
            CoreHelper.writeLogEntryInProduction(TAG, "Unable to start enclosure download! Device is not connected to a network!");
            synchronized (_EnclosureBatchDownloadListener) {
                Iterator<EnclosureBatchDownloadListener> it = _EnclosureBatchDownloadListener.iterator();
                while (it.hasNext()) {
                    it.next().onUnableToEstablishNetworkConnection();
                }
            }
            return false;
        }
        _DownloadStats.clear();
        m_RetryList.clear();
        m_DownloadQueue.clear();
        m_AtQueueStart = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateStatistics(Track track) {
        if (m_Downloader.statistics() != null) {
            m_Downloader.statistics().ownerTrack = track;
            m_Downloader.statistics().ownerFeed = track.getParentFeed();
            _DownloadStats.add(m_Downloader.statistics());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldRetry(Track track, Exception exc) {
        boolean z = !(exc instanceof CoreHelper.InsuficientStorageSpaceException);
        if ((exc instanceof FileNotFoundException) && !PermissionUtil.hasExternalStoragePermission()) {
            z = false;
        }
        BeyondPodApplication.pokeWiFiIfNeeded(exc);
        if (exc instanceof AggregatorLoginHelper.AuthenticationException) {
            z = false;
        }
        if (exc instanceof DownloadAgent.WebException) {
            z = ((DownloadAgent.WebException) exc).StatusCode == 416;
        }
        if (z) {
            if (m_RetryList.containsKey(track.getUrl())) {
                m_RetryList.put(track.getUrl(), Integer.valueOf(m_RetryList.get(track.getUrl()).intValue() - 1));
            } else {
                m_RetryList.put(track.getUrl(), 2);
            }
        } else {
            m_RetryList.put(track.getUrl(), 0);
        }
        return m_RetryList.get(track.getUrl()).intValue() > 0;
    }

    private static void onDownloadBatchStarted() {
        _FailedDownloadsCount = 0;
        _SuccessfulDownloadsCount = 0;
        _DownloadStats.clear();
        _DownloadStats.downloadTime = new Date();
        _DownloadStats.isUnattended = UpdateAndDownloadManager.isUnattended();
        m_AtQueueStart = false;
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Starting ");
        sb.append(m_IsUnattended ? "automatic" : "manual");
        sb.append(" download batch of ");
        sb.append(m_DownloadQueue.size());
        sb.append(" enclosures");
        CoreHelper.writeLogEntryInProduction(str, sb.toString());
        if (!BeyondPodApplication.getInstance().isDownloadServiceHolderRunning()) {
            _DownloadServiceHolderStartedAtStart = BeyondPodApplication.getInstance().startDownloadServiceHolder();
        }
        turnWiFiOnIfNeeded();
        synchronized (_EnclosureBatchDownloadListener) {
            Iterator<EnclosureBatchDownloadListener> it = _EnclosureBatchDownloadListener.iterator();
            while (it.hasNext()) {
                it.next().onEnclosureBatchDownloadStarted();
            }
        }
    }

    private static void onDownloadBatchCompleted() {
        synchronized (_EnclosureBatchDownloadListener) {
            Iterator<EnclosureBatchDownloadListener> it = _EnclosureBatchDownloadListener.iterator();
            while (it.hasNext()) {
                it.next().onEnclosureBatchDownloadCompleted();
            }
        }
        turnWiFiOffIfNeeded();
        EnclosureDownloadHistory.saveHistorySync();
        if (_DownloadServiceHolderStartedAtStart) {
            BeyondPodApplication.getInstance().stopDownloadServiceHolder();
        }
    }

    private static void turnWiFiOffIfNeeded() {
        if (_WiFiTurnedOnAtStart) {
            BeyondPodApplication.toggleWiFi(false, TAG);
        }
        _WiFiTurnedOnAtStart = false;
    }

    private static void turnWiFiOnIfNeeded() {
        if (Configuration.turnWiFiDuringUpdate()) {
            _WiFiTurnedOnAtStart = BeyondPodApplication.toggleWiFi(true, TAG);
        }
    }

    public static void terminateCurrentDownload() {
        if (m_Downloader.isDownloading()) {
            m_Downloader.stop();
        }
    }
}
