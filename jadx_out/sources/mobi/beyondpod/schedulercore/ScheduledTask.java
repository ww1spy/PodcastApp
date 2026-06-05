package mobi.beyondpod.schedulercore;

import android.os.Build;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class ScheduledTask {
    public static final int Default_Min_BatteryLevel = 6;
    private static String TAG = "ScheduledTask";
    protected OperationBase _Operation;
    protected String _TaskID;
    public Event event;
    private Long m_StorageRowID;
    private boolean m_IsModified = true;
    public int minBatteryLevelRequired = 6;
    public boolean active = true;

    public ScheduledTask(Event event, OperationBase operationBase) {
        this.event = event;
        setOperation(operationBase);
    }

    public ScheduledTask(String str) {
        this._TaskID = str;
    }

    public String taskID() {
        if (this._TaskID == null) {
            this._TaskID = "BPT#" + Long.toString(System.currentTimeMillis());
        }
        return this._TaskID;
    }

    public Long rowID() {
        return this.m_StorageRowID;
    }

    public void initRowID(Long l) {
        this.m_StorageRowID = l;
    }

    public OperationBase operation() {
        return this._Operation;
    }

    public void setOperation(OperationBase operationBase) {
        this._Operation = operationBase;
        operationBase.setOwner(this);
    }

    public boolean checkIfCanExecute() {
        if (!this.active) {
            CoreHelper.writeLogEntry(TAG, String.format(" Task %s is Inactive!", this));
            return false;
        }
        if (CoreHelper.isDevicePlugged()) {
            return true;
        }
        int i = this.minBatteryLevelRequired;
        int powerBatteryStrength = CoreHelper.powerBatteryStrength();
        if (powerBatteryStrength < i) {
            CoreHelper.writeLogEntry(TAG, String.format(" Task %s requires battery level of at least %s%%! Current battery level: %s%%! Task was not executed!", this, Integer.valueOf(i), Integer.valueOf(powerBatteryStrength)));
            return false;
        }
        if (Build.VERSION.SDK_INT < 23 || !CoreHelper.isDeviceIdle()) {
            return true;
        }
        if (CoreHelper.isWhiteListed()) {
            CoreHelper.writeLogEntry(TAG, "Found the device is Dozing, and we are whitelisted - executing task...");
            return true;
        }
        CoreHelper.writeLogEntry(TAG, "Found the device is Dozing, but we are NOT whitelisted - rescheduling task for later");
        return false;
    }

    public boolean existsOnDevice() {
        return ScheduledTasksManager.hasPendingIntentForTask(this);
    }

    public String toString() {
        Object[] objArr = new Object[4];
        objArr[0] = operation();
        objArr[1] = this.event;
        objArr[2] = this.active ? "" : "Inactive!";
        objArr[3] = taskID();
        return String.format("%s, %s, %s (%s)", objArr);
    }

    public static int compare(ScheduledTask scheduledTask, ScheduledTask scheduledTask2) {
        if ((scheduledTask.event == null || scheduledTask.event.startTime() == null) && (scheduledTask2.event == null || scheduledTask2.event.startTime() == null)) {
            return 0;
        }
        if (scheduledTask.event == null || scheduledTask.event.startTime() == null) {
            return -1;
        }
        if (scheduledTask2.event == null || scheduledTask2.event.startTime() == null) {
            return 1;
        }
        return scheduledTask.event.startTime().compareTo(scheduledTask2.event.startTime());
    }

    public boolean isModified() {
        return this.m_IsModified || this.event.isModified() || operation().isModified();
    }

    public void setIsModified(boolean z) {
        this.m_IsModified = z;
    }
}
