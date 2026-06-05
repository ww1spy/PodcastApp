package mobi.beyondpod.schedulercore;

import java.util.Comparator;

/* loaded from: classes.dex */
public class TaskStartTimeSorter implements Comparator<ScheduledTask> {
    @Override // java.util.Comparator
    public int compare(ScheduledTask scheduledTask, ScheduledTask scheduledTask2) {
        if (scheduledTask.equals(scheduledTask2)) {
            return 0;
        }
        return ScheduledTask.compare(scheduledTask, scheduledTask2);
    }
}
