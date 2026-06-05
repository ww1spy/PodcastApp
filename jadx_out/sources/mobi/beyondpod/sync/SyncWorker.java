package mobi.beyondpod.sync;

import android.os.Process;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Date;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.sync.trackers.ITracker;
import mobi.beyondpod.sync.trackers.bp.AuthenticationException;
import mobi.beyondpod.sync.trackers.bp.BPTracker;
import mobi.beyondpod.sync.trackers.bp.InvalidTokenException;
import mobi.beyondpod.sync.trackers.bp.ServiceException;

/* loaded from: classes.dex */
public class SyncWorker implements Runnable {
    public static final int PROGRESS_TYPE_SYNCING_APPLYING_CHANGES = 2;
    public static final int PROGRESS_TYPE_SYNCING_DOWN = 1;
    public static final int PROGRESS_TYPE_SYNCING_UP = 0;
    private static final String TAG = "SyncWorker";
    private QueueListener _QueueListener;
    private int _RetryCount;
    private volatile boolean _SyncingThreadIsDownloading;
    private Thread _CallerThread = null;
    private ITracker _Tracker = new BPTracker();

    /* loaded from: classes.dex */
    public interface QueueListener {
        void onQueueCompleted(boolean z);

        void onQueueProgress(int i);

        void onQueueStarted();
    }

    public SyncWorker(QueueListener queueListener) {
        this._QueueListener = queueListener;
    }

    public void executeQueuedRequests() throws Exception {
        if (this._CallerThread != null) {
            throw new Exception("You must use a new instance of this class for each new download!");
        }
        if (this._SyncingThreadIsDownloading) {
            throw new Exception("Downlod is already in progress!");
        }
        this._SyncingThreadIsDownloading = true;
        this._CallerThread = new Thread(this);
        this._CallerThread.setName("ChangeSyncer Caller thread");
        this._CallerThread.setPriority(4);
        this._CallerThread.start();
    }

    public void stop() {
        if (this._CallerThread == null || this._CallerThread.isInterrupted()) {
            return;
        }
        this._CallerThread.interrupt();
    }

    @Override // java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        onQueueStarted();
        while (true) {
            try {
                doSync();
            } catch (Throwable th) {
                try {
                    this._RetryCount--;
                    if (shouldRetry(th)) {
                        TrackedChangeBase.logSyncEvent(TAG, " ----- Sleeping before sync retry...", null);
                        BeyondPodApplication.pokeWiFiIfNeeded(th);
                        CoreHelper.keepDeviceAwake();
                        CoreHelper.nap(10);
                        if (this._RetryCount <= 0) {
                            break;
                        }
                    } else {
                        TrackedChangeBase.logSyncEvent(TAG, " --- Sync failed! " + th.getMessage(), null);
                        break;
                    }
                } catch (Exception e) {
                    TrackedChangeBase.logSyncEvent(TAG, " --- Sync retry failed! " + e.getMessage(), null);
                }
            }
        }
        onQueueCompleted(Thread.interrupted());
    }

    private boolean shouldRetry(Throwable th) {
        return canRetry(th) && this._RetryCount > 0;
    }

    public static boolean canRetry(Throwable th) {
        return th != null && ((th instanceof SocketTimeoutException) || (th instanceof UnknownHostException) || (th instanceof SocketException));
    }

    private void doSync() throws Throwable {
        try {
            FeedRepository.saveRepositoryAsync();
            this._Tracker.initialize();
            onQueueProgress(0);
            if (Configuration.lastRemoteChangeTimeStamp() < 0) {
                Date date = new Date();
                TrackedChangeBase.logSyncEvent(TAG, " --- Detected Initial Sync! Setting the last remote change timestamp to: " + date, null);
                Configuration.setLastRemoteChangeTimeStamp(date.getTime());
            }
            if (isUnAuthorizedMobileDataConnection()) {
                throw new CoreHelper.UnableToEstablishNetworkConnectionException("");
            }
            CoreHelper.keepDeviceAwake();
            ChangeTracker.addPendingRemoteChanges(this._Tracker.syncPushPull(ChangeTracker.pendingUploadChanges(), Configuration.lastRemoteChangeTimeStamp()));
            onQueueProgress(2);
            ChangeTracker.applyPendingRemoteChangesSync();
            Configuration.setLastSyncTimeStamp(new Date().getTime());
        } catch (CoreHelper.UnableToEstablishNetworkConnectionException unused) {
            TrackedChangeBase.logSyncEvent(TAG, " --- Sync failed! Mobile connections are not allowed and WiFi is not connected!", null);
        } catch (AuthenticationException e) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append(" --- Sync failed! Authentication error: ");
            sb.append(e.getCause() != null ? e.getCause().getMessage() : e.getMessage());
            TrackedChangeBase.logSyncEvent(str, sb.toString(), null);
        } catch (InvalidTokenException e2) {
            String str2 = TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" --- Sync failed! Invalid token: ");
            sb2.append(e2.getCause() != null ? e2.getCause().getMessage() : e2.getMessage());
            TrackedChangeBase.logSyncEvent(str2, sb2.toString(), null);
        } catch (ServiceException e3) {
            if (shouldRetry(e3.getCause())) {
                TrackedChangeBase.logSyncEvent(TAG, " --- Potentially recoverable service error occurred! (Error: " + e3.getCause().getMessage() + ")", null);
                throw e3.getCause();
            }
            String str3 = TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" --- Sync failed! Service error: ");
            sb3.append(e3.getStatusCode());
            sb3.append(", ");
            sb3.append(e3.getCause() != null ? e3.getCause().getMessage() : e3.getMessage());
            TrackedChangeBase.logSyncEvent(str3, sb3.toString(), null);
        }
    }

    private boolean isUnAuthorizedMobileDataConnection() {
        if (Configuration.isCellularConnectionAllowed()) {
            return false;
        }
        return CoreHelper.getDeviceNetworkConnection().isConnectionCellular();
    }

    public boolean isWorking() {
        return this._SyncingThreadIsDownloading;
    }

    private void onQueueStarted() {
        this._SyncingThreadIsDownloading = true;
        this._RetryCount = 1;
        if (this._QueueListener != null) {
            this._QueueListener.onQueueStarted();
        }
    }

    private void onQueueCompleted(boolean z) {
        this._SyncingThreadIsDownloading = false;
        if (this._QueueListener != null) {
            this._QueueListener.onQueueCompleted(z);
        }
        this._Tracker.close();
    }

    private void onQueueProgress(int i) {
        if (this._QueueListener != null) {
            this._QueueListener.onQueueProgress(i);
        }
    }
}
