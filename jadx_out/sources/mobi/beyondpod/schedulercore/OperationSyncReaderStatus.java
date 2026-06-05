package mobi.beyondpod.schedulercore;

import java.util.UUID;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.schedulercore.OperationBase;

/* loaded from: classes.dex */
public class OperationSyncReaderStatus extends OperationBase {
    public static final UUID OperationID = UUID.fromString("FFAACCDD-0C02-4314-B8C4-4FEDE4C83C80");
    private static String TAG = "OperationSyncReaderStatus";

    /* JADX INFO: Access modifiers changed from: package-private */
    public OperationSyncReaderStatus() {
        super("BeyondPod Sync Google Reader Subscriptions", "BeyondPod Sync Google Reader Subscriptions", OperationID);
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public void execute(OperationBase.OperationCompletedCallback operationCompletedCallback) {
        super.execute(operationCompletedCallback);
        CoreHelper.writeTraceEntry(TAG, "Starting a Scheduled Google Sync");
        if (!AggregatorLoginHelper.isSyncing()) {
            try {
                AggregatorLoginHelper.syncItemStatus(new AggregatorLoginHelper.GSyncStatusResult() { // from class: mobi.beyondpod.schedulercore.OperationSyncReaderStatus.1
                    @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSyncStatusResult
                    public void syncCompleted(boolean z, int i, int i2) {
                        if (i2 >= 0) {
                            ScheduledTasksManager.scheduleGoogleSynUpdateIfNeeded();
                        }
                        OperationSyncReaderStatus.this.onOperationCompleted();
                    }
                });
                return;
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to start Google Sync", e);
                onOperationCompleted();
                return;
            }
        }
        CoreHelper.writeLogEntry(TAG, "Another Google Sync is already in progress! Skipping sync!");
        onOperationCompleted();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public OperationBase createInstance(String str) {
        return new OperationSyncReaderStatus();
    }

    @Override // mobi.beyondpod.schedulercore.OperationBase
    public String name() {
        return this._Name;
    }
}
