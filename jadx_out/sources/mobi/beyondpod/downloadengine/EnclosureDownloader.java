package mobi.beyondpod.downloadengine;

import java.io.File;
import mobi.beyondpod.downloadengine.DownloadAgent;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.EnclosureDownloadHistory;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.ui.views.base.BPMediaController;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class EnclosureDownloader implements DownloadAgent.DownloadListener {
    private static final String TAG = "EnclosureDownloader";
    private static DownloadAgent m_Agent;
    EnclosureDownloadListener _EnclosureDownloadListener;
    long _LastProgressNotificationTime = 0;
    private RssEnclosure m_CurrentEnclosure;
    private Track m_CurrentTrack;

    /* loaded from: classes.dex */
    public interface EnclosureDownloadListener {
        void onEnclosureDownloadCompleted(Track track);

        void onEnclosureDownloadError(Track track, Exception exc);

        void onEnclosureDownloadProgress(Track track);

        void onEnclosureDownloadStarted(Track track);

        void onEnclosureDownloadTerminated(Track track);
    }

    public void setEnclosureDownloadListener(EnclosureDownloadListener enclosureDownloadListener) {
        this._EnclosureDownloadListener = enclosureDownloadListener;
    }

    public Track track() {
        return this.m_CurrentTrack;
    }

    public boolean isDownloading() {
        return m_Agent != null && m_Agent.isDownloading();
    }

    public DownloadStatistics statistics() {
        if (m_Agent != null) {
            return m_Agent.statistics();
        }
        return null;
    }

    public void downloadTrack(Track track, RssEnclosure rssEnclosure) {
        this.m_CurrentTrack = track;
        this.m_CurrentEnclosure = rssEnclosure;
        try {
            m_Agent = new DownloadAgent(CoreHelper.safeCreateUri(this.m_CurrentTrack.getUrl()), new File(this.m_CurrentTrack.trackPath()), this.m_CurrentTrack.getParentFeed().credentials());
            m_Agent.setDownloadListener(this);
            m_Agent.setUpdateType(1);
            m_Agent.setAllowMobileDataUse(UpdateAndDownloadManager.allowMobileDataUseForDownloads());
            m_Agent.startDownload();
        } catch (Exception e) {
            CoreHelper.logException(TAG, String.format("Unable to start the download of url:%s!", this.m_CurrentTrack.getUrl()), e);
            onDownloadError(null, e);
        }
    }

    public void stop() {
        if (m_Agent != null) {
            m_Agent.stop();
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadCompleted(DownloadAgent downloadAgent, boolean z) {
        this.m_CurrentTrack.setDownloadStatus(this.m_CurrentTrack.isFullyDownloaded() ? 3 : 4);
        FeedRepository.notifyTrackChanged(this.m_CurrentTrack);
        FeedRepository.notifyFeedChanged(this.m_CurrentTrack.getParentFeed());
        if (this.m_CurrentTrack.isFullyDownloaded()) {
            EnclosureDownloadHistory.addEnclosure(this.m_CurrentEnclosure, true);
        }
        if (this._EnclosureDownloadListener != null) {
            this._EnclosureDownloadListener.onEnclosureDownloadCompleted(this.m_CurrentTrack);
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadError(DownloadAgent downloadAgent, Exception exc) {
        this.m_CurrentTrack.setDownloadStatus(5);
        this.m_CurrentTrack.getParentFeed().downloadFailed = true;
        FeedRepository.notifyTrackChanged(this.m_CurrentTrack);
        FeedRepository.notifyFeedChanged(this.m_CurrentTrack.getParentFeed());
        if (this._EnclosureDownloadListener != null) {
            this._EnclosureDownloadListener.onEnclosureDownloadError(this.m_CurrentTrack, exc);
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadProgress(DownloadAgent downloadAgent, long j, long j2) {
        this.m_CurrentTrack.setDownloadSize(j2);
        this.m_CurrentTrack.setDownloadedPortion(j);
        this.m_CurrentTrack.setDownloadStatus(2);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this._LastProgressNotificationTime > BPMediaController.TOOLBAR_TIMEOUT_SHORT) {
            FeedRepository.notifyTrackChanged(this.m_CurrentTrack);
            FeedRepository.notifyFeedChanged(this.m_CurrentTrack.getParentFeed());
            this._LastProgressNotificationTime = currentTimeMillis;
            if (this._EnclosureDownloadListener != null) {
                this._EnclosureDownloadListener.onEnclosureDownloadProgress(this.m_CurrentTrack);
            }
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadStarted(DownloadAgent downloadAgent) {
        this.m_CurrentTrack.setDownloadStatus(1);
        this.m_CurrentTrack.getParentFeed().downloadFailed = false;
        FeedRepository.notifyTrackChanged(this.m_CurrentTrack);
        FeedRepository.notifyFeedChanged(this.m_CurrentTrack.getParentFeed());
        if (this._EnclosureDownloadListener != null) {
            this._EnclosureDownloadListener.onEnclosureDownloadStarted(this.m_CurrentTrack);
        }
    }

    @Override // mobi.beyondpod.downloadengine.DownloadAgent.DownloadListener
    public void onDownloadTerminated(DownloadAgent downloadAgent) {
        this.m_CurrentTrack.setDownloadStatus(4);
        FeedRepository.notifyTrackChanged(this.m_CurrentTrack);
        FeedRepository.notifyFeedChanged(this.m_CurrentTrack.getParentFeed());
        if (this._EnclosureDownloadListener != null) {
            this._EnclosureDownloadListener.onEnclosureDownloadTerminated(this.m_CurrentTrack);
        }
    }
}
