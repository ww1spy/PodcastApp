package mobi.beyondpod.sync;

import java.util.Date;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.sync.SyncWorker;

/* loaded from: classes.dex */
public class ChangeSyncManager {
    private static final String APPLYING_REMOTE_CHANGES = CoreHelper.loadResourceString(R.string.cds_notification_applying_remote_changes);
    private static final String CHECKING_FOR_REMOTE_CHANGES = CoreHelper.loadResourceString(R.string.cds_notification_checking_for_remote_changes);
    private static final String PUBLISHING_LOCAL_CHANGES = CoreHelper.loadResourceString(R.string.cds_notification_publishing_local_changes);
    private static final String SYNCING_LOCAL_CHANGES = CoreHelper.loadResourceString(R.string.cds_notification_syncing_local_changes);
    private static final String TAG = "ChangeSyncManager";
    private static SyncWorker _Syncer;

    /* loaded from: classes.dex */
    public interface ChangeSyncStatusResult {
        void syncCompleted(boolean z);
    }

    public static boolean syncChanges(final ChangeSyncStatusResult changeSyncStatusResult) {
        if (!ChangeTracker.isTrackingEnabled()) {
            CoreHelper.writeTraceEntry(TAG, "Trying to sync, but Episode Sync is disabled! Exiting...");
            if (changeSyncStatusResult != null) {
                changeSyncStatusResult.syncCompleted(false);
            }
            return false;
        }
        TrackedChangeBase.logSyncEvent(TAG, "", null);
        TrackedChangeBase.logSyncEvent(TAG, "--- Starting Episode Sync: " + new Date() + " ---", null);
        if (!CoreHelper.getDeviceNetworkConnection().isConnectedToNetwork()) {
            TrackedChangeBase.logSyncEvent(TAG, "--- device is offline! Sync cancelled ---", null);
            if (changeSyncStatusResult != null) {
                changeSyncStatusResult.syncCompleted(false);
            }
            return false;
        }
        if (_Syncer != null) {
            TrackedChangeBase.logSyncEvent(TAG, "--- Another Episode Sync is already in progress! Exiting...", null);
            if (changeSyncStatusResult != null) {
                changeSyncStatusResult.syncCompleted(false);
            }
            return false;
        }
        AnalyticsTracker.onChangeSync(0);
        _Syncer = new SyncWorker(new SyncWorker.QueueListener() { // from class: mobi.beyondpod.sync.ChangeSyncManager.1
            @Override // mobi.beyondpod.sync.SyncWorker.QueueListener
            public void onQueueCompleted(boolean z) {
                BeyondPodApplication.getInstance().clearChangeSyncNotification();
                SyncWorker unused = ChangeSyncManager._Syncer = null;
                TrackedChangeBase.logSyncEvent(ChangeSyncManager.TAG, "--- Episode Sync completed: " + new Date() + " ---", null);
                if (ChangeSyncStatusResult.this != null) {
                    ChangeSyncStatusResult.this.syncCompleted(z);
                }
            }

            @Override // mobi.beyondpod.sync.SyncWorker.QueueListener
            public void onQueueProgress(int i) {
                switch (i) {
                    case 0:
                        BeyondPodApplication.getInstance().setChangeSyncNotification(ChangeSyncManager.SYNCING_LOCAL_CHANGES, ChangeSyncManager.PUBLISHING_LOCAL_CHANGES);
                        return;
                    case 1:
                        BeyondPodApplication.getInstance().setChangeSyncNotification(ChangeSyncManager.SYNCING_LOCAL_CHANGES, ChangeSyncManager.CHECKING_FOR_REMOTE_CHANGES);
                        return;
                    case 2:
                        BeyondPodApplication.getInstance().setChangeSyncNotification(ChangeSyncManager.SYNCING_LOCAL_CHANGES, ChangeSyncManager.APPLYING_REMOTE_CHANGES);
                        return;
                    default:
                        return;
                }
            }

            @Override // mobi.beyondpod.sync.SyncWorker.QueueListener
            public void onQueueStarted() {
                BeyondPodApplication.getInstance().setChangeSyncNotification(ChangeSyncManager.SYNCING_LOCAL_CHANGES, "");
            }
        });
        try {
            _Syncer.executeQueuedRequests();
            return true;
        } catch (Exception e) {
            TrackedChangeBase.logSyncEvent(TAG, "--- Unable to start sync! reason: " + e.getMessage(), null);
            if (changeSyncStatusResult != null) {
                changeSyncStatusResult.syncCompleted(false);
            }
            return false;
        }
    }

    public static boolean isSyncing() {
        return _Syncer != null && _Syncer.isWorking();
    }

    public static void stopSyncing() {
        if (isSyncing()) {
            _Syncer.stop();
        }
    }
}
