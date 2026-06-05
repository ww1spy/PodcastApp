package mobi.beyondpod.schedulercore;

import java.util.UUID;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.sync.ChangeSyncManager;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.sync.TrackedChangeBase;

/* loaded from: classes.dex */
public class OperationSyncChangeTracking extends OperationBase {
    private static final int MAX_RETRY_INTERVAL = 120;
    public static final UUID OperationID = UUID.fromString("AABBCCDD-0C02-4314-B8C4-4FEDED56EEE0");
    private static final int RETRY_INTERVAL = 15;
    private static String TAG = "OperationSyncChangeTracking";

    /* JADX INFO: Access modifiers changed from: package-private */
    public OperationSyncChangeTracking() {
        super("BeyondPod Sync Change Tracking", "BeyondPod Sync Change Tracking", OperationID);
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public void execute(OperationBase.OperationCompletedCallback operationCompletedCallback) {
        super.execute(operationCompletedCallback);
        CoreHelper.writeTraceEntry(TAG, "Starting a Change Tracking Sync");
        if (!ChangeSyncManager.isSyncing()) {
            try {
                ChangeSyncManager.syncChanges(new ChangeSyncManager.ChangeSyncStatusResult() { // from class: mobi.beyondpod.schedulercore.OperationSyncChangeTracking.1
                    @Override // mobi.beyondpod.sync.ChangeSyncManager.ChangeSyncStatusResult
                    public void syncCompleted(boolean z) {
                        if (ChangeTracker.isTrackingEnabled()) {
                            if (ChangeTracker.hasUploadPendingChanges()) {
                                int CDSSyncRetryInterval = Configuration.CDSSyncRetryInterval();
                                if (CDSSyncRetryInterval < OperationSyncChangeTracking.MAX_RETRY_INTERVAL) {
                                    int i = CDSSyncRetryInterval == 0 ? 15 : CDSSyncRetryInterval * 2;
                                    Configuration.setCDSSyncRetryInterval(i);
                                    TrackedChangeBase.logSyncEvent(OperationSyncChangeTracking.TAG, "#### There are still pending changes! Retrying sync in " + i + " min", null);
                                    ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(i, TimeSpan.fromMinutes(1.0d), false);
                                } else {
                                    TrackedChangeBase.logSyncEvent(OperationSyncChangeTracking.TAG, "#### There are still pending changes, but we reached the max retry interval of 120 min. Giving up!", null);
                                }
                            } else {
                                Configuration.setCDSSyncRetryInterval(0);
                            }
                        }
                        OperationSyncChangeTracking.this.onOperationCompleted();
                    }
                });
                return;
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to start Change Sync", e);
                onOperationCompleted();
                return;
            }
        }
        CoreHelper.writeLogEntry(TAG, "Another Change Sync is already in progress! Skipping sync!");
        onOperationCompleted();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public OperationBase createInstance(String str) {
        return new OperationSyncChangeTracking();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public String name() {
        return this._Name;
    }
}
