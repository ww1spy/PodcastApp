package mobi.beyondpod.schedulercore;

import mobi.beyondpod.rsscore.helpers.TimeSpan;

/* loaded from: classes.dex */
public class SyncGoogleReaderScheduledTask extends ScheduledTask {
    public static final String GOOGLE_SYNC_TASK_ID = "BPT#SYNC_GOOGLE_READER";

    public SyncGoogleReaderScheduledTask() {
        super(GOOGLE_SYNC_TASK_ID);
        setOperation(new OperationSyncReaderStatus());
        this.event = new Event(null, 15, TimeSpan.fromMinutes(1.0d));
    }
}
