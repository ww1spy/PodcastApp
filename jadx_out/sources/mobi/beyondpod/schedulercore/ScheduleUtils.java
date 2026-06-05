package mobi.beyondpod.schedulercore;

import java.util.ArrayList;
import java.util.Collections;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;

/* loaded from: classes.dex */
public class ScheduleUtils {
    private static TaskStartTimeSorter _startTimeSorter = new TaskStartTimeSorter();

    public static ScheduledTask getScheduledTaskForCategory(FeedCategory feedCategory) {
        for (ScheduledTask scheduledTask : ScheduledTasksManager.tasks()) {
            OperationBase operation = scheduledTask.operation();
            if ((operation instanceof OperationUpdateCategory) && feedCategory.value().equals(((OperationUpdateCategory) operation).getCategoryToUpdate())) {
                return scheduledTask;
            }
        }
        return null;
    }

    public static ScheduledTask getEarliestTask(ArrayList<ScheduledTask> arrayList) {
        if (arrayList.size() == 0) {
            return null;
        }
        Collections.sort(arrayList, _startTimeSorter);
        return arrayList.get(0);
    }

    public static boolean isSingleSchedule() {
        ScheduledTask scheduledTaskForCategory = getScheduledTaskForCategory(CategoryManager.AllFeeds);
        return scheduledTaskForCategory != null && scheduledTaskForCategory.active && ScheduledTasksManager.activeTaskCount() == 1;
    }
}
