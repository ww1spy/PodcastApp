package mobi.beyondpod.schedulercore;

import mobi.beyondpod.rsscore.helpers.TimeSpan;

/* loaded from: classes.dex */
public class SyncChangeTrackingScheduledTask extends ScheduledTask {
    public static final String CHANGE_TRACKING_SYNC_TASK_ID = "BPT#SYNC_CHANGE_TRACKING";

    public SyncChangeTrackingScheduledTask() {
        super(CHANGE_TRACKING_SYNC_TASK_ID);
        setOperation(new OperationSyncChangeTracking());
        this.event = new Event(null, 20, TimeSpan.fromMinutes(1.0d));
    }
}
