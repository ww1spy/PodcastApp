package mobi.beyondpod.schedulercore;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.helpers.XmlTextWriter;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.services.scheduler.CommandReceiver;
import mobi.beyondpod.services.scheduler.ScheduledEventReceiver;
import mobi.beyondpod.sync.ChangeTracker;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class ScheduledTasksManager {
    private static String MANUAL_CATEGORY_UPDATE_TASK_ID = "MANUAL_CATEGORY_UPDATE_TASK:";
    private static String MANUAL_SMART_PLAY_UPDATE_TASK_ID = "MANUAL_SMART_PLAY_UPDATE_TASK:";
    public static final String SCHEDULER_ACTION = "mobi.beyondpod.scheduling.SCHEDULED_TASK";
    private static String TAG = "ScheduledTasksManager";
    public static final String TASK_EXTRA = "task_id";
    public static final String TIME_EXTRA = "task_start_time";
    private static HashMap<UUID, OperationBase> _Operations = new HashMap<>();
    private static ArrayList<OperationBase> _OperationsForAssignment = new ArrayList<>(6);
    private static ConcurrentHashMap<String, ScheduledTask> _ScheduledTasks = new ConcurrentHashMap<>();
    private static SyncGoogleReaderScheduledTask _GoogleReaderSyncTask = new SyncGoogleReaderScheduledTask();
    private static UpdateSmartPlayFeedsScheduledTask _UpdateSmartPlayTask = new UpdateSmartPlayFeedsScheduledTask();
    private static SyncChangeTrackingScheduledTask _SyncChangesTask = new SyncChangeTrackingScheduledTask();

    static {
        loadOperations();
    }

    public static HashMap<UUID, OperationBase> operations() {
        return _Operations;
    }

    public static ArrayList<OperationBase> operationsForAssignment() {
        return _OperationsForAssignment;
    }

    public static int activeTaskCount() {
        return activeTasks().size();
    }

    public static int registeredTaskCount() {
        int i = 0;
        for (ScheduledTask scheduledTask : _ScheduledTasks.values()) {
            if (scheduledTask.active && scheduledTask.event.startTime() != null && scheduledTask.event.startTime().compareTo(new Date()) > 0 && scheduledTask.existsOnDevice()) {
                i++;
            }
        }
        return i;
    }

    public static boolean executeTaskFor(String str, OperationBase.OperationCompletedCallback operationCompletedCallback) {
        ScheduledTask taskById = getTaskById(str);
        if (taskById == null) {
            if (str.startsWith(MANUAL_CATEGORY_UPDATE_TASK_ID)) {
                return handleOperationCategoryUpdate(str, operationCompletedCallback);
            }
            if (str.startsWith(MANUAL_SMART_PLAY_UPDATE_TASK_ID)) {
                return handleOperationSmartPlayUpdate(str, operationCompletedCallback);
            }
            CoreHelper.writeLogEntry(TAG, String.format("Unable to find task for key: %s", str));
            return false;
        }
        if (taskById.event.occursInTheFuture()) {
            setScheduledTaskToDevice(taskById);
        }
        if (!taskById.checkIfCanExecute()) {
            return false;
        }
        taskById.operation().execute(operationCompletedCallback);
        return true;
    }

    private static boolean handleOperationCategoryUpdate(String str, OperationBase.OperationCompletedCallback operationCompletedCallback) {
        FeedCategory categoryByValue;
        String replace = str.replace(MANUAL_CATEGORY_UPDATE_TASK_ID, "");
        if ("ALL FEEDS".equals(replace.toUpperCase(Locale.ROOT))) {
            categoryByValue = CategoryManager.AllFeeds;
        } else if ("UNCATEGORIZED".equals(replace.toUpperCase(Locale.ROOT))) {
            categoryByValue = CategoryManager.Unassigned;
        } else {
            categoryByValue = CategoryManager.getCategoryByValue(replace);
        }
        if (categoryByValue == CategoryManager.CategoryNull) {
            CoreHelper.writeLogEntry(TAG, "Scheduled task MANUAL CATEGORY UPDATE was invoked with an invalid category '" + replace + "'");
            return false;
        }
        OperationBase createInstance = operations().get(OperationUpdateCategory.OperationID).createInstance("");
        ((OperationUpdateCategory) createInstance).setCategoryToUpdate(categoryByValue.value());
        createInstance.execute(operationCompletedCallback);
        return true;
    }

    private static boolean handleOperationSmartPlayUpdate(String str, OperationBase.OperationCompletedCallback operationCompletedCallback) {
        String replace = str.replace(MANUAL_SMART_PLAY_UPDATE_TASK_ID, "");
        OperationBase createInstance = operations().get(OperationUpdateSmartplayFeeds.OperationID).createInstance("");
        ((OperationUpdateSmartplayFeeds) createInstance).setSmartPlayToUpdate(replace);
        createInstance.execute(operationCompletedCallback);
        return true;
    }

    public static boolean areAllActiveTasksScheduled() {
        return activeTaskCount() == registeredTaskCount();
    }

    public static int rescheduleAllActiveTasks() {
        int scheduledTasksToDevice;
        CoreHelper.writeLogEntry(TAG, "Rescheduling all active scheduled tasks...");
        deleteScheduledTasksFromDevice();
        if (PolicyManager.ifSchedulingRestricted()) {
            CoreHelper.writeLogEntry(TAG, "Application is running in restricted mode! (Expired on: " + DateTime.formatDate(LicenseManager.trialExpirationDate()) + ") Scheduling is disabled!");
            scheduledTasksToDevice = 0;
        } else {
            scheduledTasksToDevice = setScheduledTasksToDevice();
        }
        CoreHelper.writeLogEntry(TAG, "Scheduled " + registeredTaskCount() + " of " + activeTaskCount() + " active tasks.");
        return scheduledTasksToDevice;
    }

    private static int setScheduledTasksToDevice() {
        int i = 0;
        try {
            for (ScheduledTask scheduledTask : _ScheduledTasks.values()) {
                if (scheduledTask.active) {
                    setScheduledTaskToDevice(scheduledTask);
                    i++;
                }
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to schedule tasks!", e);
        }
        return i;
    }

    public static void setScheduledTaskToDevice(ScheduledTask scheduledTask) {
        String str;
        AlarmManager alarmManager = (AlarmManager) BeyondPodApplication.getInstance().getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager == null) {
            CoreHelper.writeLogEntry(TAG, "ERROR: Cannot retrieve AlarmManager service!");
            return;
        }
        if (scheduledTask.event.startTime() == null) {
            alarmManager.set(2, SystemClock.elapsedRealtime() + scheduledTask.event.recurrence().getTotalMilliseconds(), PendingIntent.getBroadcast(BeyondPodApplication.getInstance(), 0, buildIntent(scheduledTask), 1073741824));
            CoreHelper.writeTraceEntry(TAG, "Scheduled ELAPSED_REALTIME_WAKEUP task: " + scheduledTask);
            return;
        }
        long startTimeBias = scheduledTask.operation().startTimeBias();
        if (startTimeBias > 0) {
            str = " (Bias: +" + (startTimeBias / 1000) + "s.)";
        } else {
            str = "";
        }
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(0, scheduledTask.event.startTime().getTime() + startTimeBias, buildPendingIntentForTask(scheduledTask));
            CoreHelper.writeTraceEntry(TAG, "Scheduled Idle RTC_WAKEUP task: " + scheduledTask + str);
            return;
        }
        alarmManager.setRepeating(0, scheduledTask.event.startTime().getTime() + startTimeBias, 900000L, buildPendingIntentForTask(scheduledTask));
        CoreHelper.writeTraceEntry(TAG, "Scheduled RTC_WAKEUP task: " + scheduledTask + str);
    }

    private static void deleteScheduledTasksFromDevice() {
        try {
            Iterator<ScheduledTask> it = _ScheduledTasks.values().iterator();
            while (it.hasNext()) {
                deleteScheduledTaskFromDevice(it.next());
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to delete old scheduled tasks!", e);
        }
    }

    public static void deleteScheduledTaskFromDevice(ScheduledTask scheduledTask) {
        AlarmManager alarmManager = (AlarmManager) BeyondPodApplication.getInstance().getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null) {
            PendingIntent buildPendingIntentForTask = buildPendingIntentForTask(scheduledTask);
            alarmManager.cancel(buildPendingIntentForTask);
            buildPendingIntentForTask.cancel();
            CoreHelper.writeTraceEntry(TAG, "Removed scheduled task: " + scheduledTask);
        }
    }

    public static void registerTask(ScheduledTask scheduledTask) {
        _ScheduledTasks.put(scheduledTask.taskID(), scheduledTask);
    }

    public static void unregisterTask(ScheduledTask scheduledTask) {
        if (_ScheduledTasks.containsKey(scheduledTask.taskID())) {
            _ScheduledTasks.remove(scheduledTask.taskID());
        }
        deleteScheduledTaskFromDevice(scheduledTask);
    }

    public static ScheduledTask getTaskById(String str) {
        if (_GoogleReaderSyncTask.taskID().equals(str)) {
            return _GoogleReaderSyncTask;
        }
        if (_UpdateSmartPlayTask.taskID().equals(str)) {
            return _UpdateSmartPlayTask;
        }
        if (_SyncChangesTask.taskID().equals(str)) {
            return _SyncChangesTask;
        }
        if (_ScheduledTasks.containsKey(str)) {
            return _ScheduledTasks.get(str);
        }
        return null;
    }

    public static ScheduledTask getLastTaskThatExecutedBefore(Date date) {
        ScheduledTask scheduledTask = null;
        double d = 2.147483647E9d;
        for (ScheduledTask scheduledTask2 : _ScheduledTasks.values()) {
            if (scheduledTask2.active && scheduledTask2.event.getUnadjustedStartTime() != null && date.compareTo(scheduledTask2.event.getUnadjustedStartTime()) >= 0) {
                double time = date.getTime() - scheduledTask2.event.getUnadjustedStartTime().getTime();
                if (time < d) {
                    scheduledTask = scheduledTask2;
                    d = time;
                }
            }
        }
        return scheduledTask;
    }

    public static ScheduledTask loadTask(AttributesImpl attributesImpl) {
        ScheduledTask scheduledTask = new ScheduledTask(attributesImpl.getValue("", "id"));
        scheduledTask.active = StringUtils.tryParseBooleanFromString(attributesImpl.getValue("", "active"), false);
        scheduledTask.minBatteryLevelRequired = StringUtils.tryParseIntFromString(attributesImpl.getValue("", "minBattLevel"), 6).intValue();
        scheduledTask.event = new Event(new Date(StringUtils.tryParseLongFromString(attributesImpl.getValue("", "startTime"), Long.valueOf(new Date().getTime())).longValue()), StringUtils.tryParseIntFromString(attributesImpl.getValue("", "recInterval"), 1).intValue(), new TimeSpan(StringUtils.tryParseLongFromString(attributesImpl.getValue("", "recPeriod"), 1L).longValue()));
        UUID tryParseUUIDFromString = StringUtils.tryParseUUIDFromString(attributesImpl.getValue("", "operationId"), null);
        String value = attributesImpl.getValue("", "state");
        if (_Operations.containsKey(tryParseUUIDFromString)) {
            scheduledTask.setOperation(_Operations.get(tryParseUUIDFromString).createInstance(value));
        }
        registerTask(scheduledTask);
        return scheduledTask;
    }

    public static ScheduledTask loadTask(long j, String str, boolean z, int i, Date date, int i2, long j2, UUID uuid, String str2) {
        ScheduledTask scheduledTask = new ScheduledTask(str);
        scheduledTask.initRowID(Long.valueOf(j));
        scheduledTask.active = z;
        scheduledTask.minBatteryLevelRequired = i;
        scheduledTask.event = new Event(date, i2, new TimeSpan(j2));
        if (_Operations.containsKey(uuid)) {
            scheduledTask.setOperation(_Operations.get(uuid).createInstance(str2));
        }
        registerTask(scheduledTask);
        return scheduledTask;
    }

    public static void unregisterAndClearAllTasks() {
        Iterator it = new ArrayList(_ScheduledTasks.values()).iterator();
        while (it.hasNext()) {
            unregisterTask((ScheduledTask) it.next());
        }
    }

    public static void clearAllTasks() {
        _ScheduledTasks.clear();
    }

    public static Collection<ScheduledTask> tasks() {
        return _ScheduledTasks.values();
    }

    public static List<ScheduledTask> activeTasks() {
        ArrayList arrayList = new ArrayList();
        for (ScheduledTask scheduledTask : _ScheduledTasks.values()) {
            if (scheduledTask.active && scheduledTask.event.startTime() != null && scheduledTask.event.startTime().compareTo(new Date()) > 0) {
                arrayList.add(scheduledTask);
            }
        }
        return arrayList;
    }

    public static void saveTasks(XmlTextWriter xmlTextWriter) {
        try {
            xmlTextWriter.writeStartElement("scheduledTasks");
            for (ScheduledTask scheduledTask : _ScheduledTasks.values()) {
                xmlTextWriter.writeStartElement("task");
                xmlTextWriter.writeAttributeString("id", scheduledTask.taskID());
                xmlTextWriter.writeAttributeString("active", scheduledTask.active ? NotificationPreferences.YES : NotificationPreferences.NO);
                xmlTextWriter.writeAttributeString("minBattLevel", Integer.toString(scheduledTask.minBatteryLevelRequired));
                xmlTextWriter.writeAttributeString("startTime", Long.toString(scheduledTask.event.getUnadjustedStartTime().getTime()));
                xmlTextWriter.writeAttributeString("recPeriod", Long.toString(scheduledTask.event.getRecurrencePeriod().getTotalMilliseconds()));
                xmlTextWriter.writeAttributeString("recInterval", Integer.toString(scheduledTask.event.getRecurrenceInterval()));
                xmlTextWriter.writeAttributeString("operationId", scheduledTask.operation().id().toString());
                xmlTextWriter.writeAttributeString("state", scheduledTask.operation().serializedData());
                xmlTextWriter.writeEndElement("task");
            }
            xmlTextWriter.writeEndElement("scheduledTasks");
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to save ScheduledTasks", e);
        }
    }

    public static ScheduledTask getFirstTaskToExecuteAfter(Date date) {
        ScheduledTask scheduledTask = null;
        double d = 2.147483647E9d;
        for (ScheduledTask scheduledTask2 : _ScheduledTasks.values()) {
            if (scheduledTask2.active && scheduledTask2.event.startTime() != null && date.compareTo(scheduledTask2.event.startTime()) < 0) {
                double time = scheduledTask2.event.startTime().getTime() - date.getTime();
                if (time < d) {
                    scheduledTask = scheduledTask2;
                    d = time;
                }
            }
        }
        return scheduledTask;
    }

    public static String dumpRepository() {
        String str = "";
        Iterator<ScheduledTask> it = _ScheduledTasks.values().iterator();
        while (it.hasNext()) {
            str = str + it.next() + "\n";
        }
        return str;
    }

    private static PendingIntent buildPendingIntentForTask(ScheduledTask scheduledTask) {
        return PendingIntent.getBroadcast(BeyondPodApplication.getInstance(), 0, buildIntent(scheduledTask), CoreHelper.apiLevel() < 21 ? 268435456 : 134217728);
    }

    public static boolean hasPendingIntentForTask(ScheduledTask scheduledTask) {
        return PendingIntent.getBroadcast(BeyondPodApplication.getInstance(), 0, buildIntent(scheduledTask), 536870912) != null;
    }

    private static Intent buildIntent(ScheduledTask scheduledTask) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) ScheduledEventReceiver.class);
        intent.setPackage("mobi.beyondpod.evo");
        intent.setData(Uri.parse("bpscheduler:task/" + scheduledTask.taskID()));
        intent.putExtra(TASK_EXTRA, scheduledTask.taskID());
        intent.putExtra(TIME_EXTRA, scheduledTask.event.startTime() != null ? scheduledTask.event.startTime().getTime() : scheduledTask.event.recurrence().getTotalMilliseconds());
        return intent;
    }

    private static void loadOperations() {
        _Operations.put(OperationUpdateCategory.OperationID, new OperationUpdateCategory());
        _Operations.put(OperationUpdateSmartplayFeeds.OperationID, new OperationUpdateSmartplayFeeds());
    }

    public static void scheduleGoogleSynUpdateIfNeeded() {
        if (ItemStateHistory.hasUnsynchronizedGoogleReaderItems()) {
            CoreHelper.writeTraceEntry(TAG, "Scheduling Google Sync Task");
            setScheduledTaskToDevice(_GoogleReaderSyncTask);
        }
    }

    public static boolean scheduleSyncTaskIfSyncIsEnabled(int i, TimeSpan timeSpan, boolean z) {
        if (!ChangeTracker.isTrackingEnabled()) {
            return false;
        }
        if (!ChangeTracker.hasUploadPendingChanges() && !z) {
            return false;
        }
        if (i == 0) {
            deleteScheduledTaskFromDevice(_SyncChangesTask);
            CoreHelper.writeTraceEntryInDebug(TAG, "Executing Change Sync Task without a delay!");
            CommandReceiver.startScheduledTask(BeyondPodApplication.getInstance().getApplicationContext(), SyncChangeTrackingScheduledTask.CHANGE_TRACKING_SYNC_TASK_ID);
            return true;
        }
        _SyncChangesTask.event.setRecurrenceInterval(i);
        _SyncChangesTask.event.setRecurrencePeriod(timeSpan);
        long time = new Date().getTime() + _SyncChangesTask.event.recurrence().getTotalMilliseconds();
        CoreHelper.writeTraceEntryInDebug(TAG, "Scheduling Change Sync Task for: " + DateTime.HOURMINSECFORMAT.format(new Date(time)));
        AlarmManager alarmManager = (AlarmManager) BeyondPodApplication.getInstance().getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager == null) {
            return true;
        }
        alarmManager.set(2, SystemClock.elapsedRealtime() + _SyncChangesTask.event.recurrence().getTotalMilliseconds(), buildPendingIntentForTask(_SyncChangesTask));
        return true;
    }

    public static ArrayList<ScheduledTask> findOverlappingTasksWith(Event event) {
        ArrayList<ScheduledTask> arrayList = new ArrayList<>();
        for (ScheduledTask scheduledTask : _ScheduledTasks.values()) {
            if (scheduledTask.active && scheduledTask.event.startTime() != null && scheduledTask.event.overlapsWith(event)) {
                arrayList.add(scheduledTask);
            }
        }
        return arrayList;
    }

    public static void deleteScheduledTask(ScheduledTask scheduledTask) {
        if (scheduledTask != null) {
            unregisterTask(scheduledTask);
            FeedRepository.deleteScheduledTask(scheduledTask);
        }
    }

    public static String buildAdHockCategoryUpdateTaskID(String str) {
        return MANUAL_CATEGORY_UPDATE_TASK_ID + str;
    }

    public static String buildAdHockSmartPlayUpdateTaskID(String str) {
        return MANUAL_SMART_PLAY_UPDATE_TASK_ID + str;
    }
}
