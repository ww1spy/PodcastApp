package mobi.beyondpod.schedulercore;

import mobi.beyondpod.rsscore.helpers.TimeSpan;

/* loaded from: classes.dex */
public class UpdateSmartPlayFeedsScheduledTask extends ScheduledTask {
    public static final String UPDATE_SMARTPLAY_FEEDS_TASK_ID = "BPT#UPDATE_SMARTPLAY_FEEDS";

    public UpdateSmartPlayFeedsScheduledTask() {
        super(UPDATE_SMARTPLAY_FEEDS_TASK_ID);
        setOperation(new OperationUpdateSmartplayFeeds());
        this.event = new Event(null, 15, TimeSpan.fromMinutes(1.0d));
    }
}
