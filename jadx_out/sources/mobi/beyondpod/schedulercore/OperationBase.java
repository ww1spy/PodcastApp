package mobi.beyondpod.schedulercore;

import android.os.SystemClock;
import java.util.Random;
import java.util.UUID;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class OperationBase {
    private static String TAG = "OperationBase";
    static Random _Random = new Random(SystemClock.elapsedRealtime());
    protected String _Description;
    protected UUID _ID;
    protected String _Name;
    OperationCompletedCallback _OnOperationCompleted;
    private ScheduledTask _Owner;
    protected boolean m_IsModified;

    /* loaded from: classes.dex */
    public interface OperationCompletedCallback {
        void onOperationComplete();
    }

    public OperationBase createInstance(String str) {
        return this;
    }

    public boolean isConfigurable() {
        return false;
    }

    public String serializedData() {
        return "";
    }

    public long startTimeBias() {
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OperationBase(String str, String str2, UUID uuid) {
        this._Description = "Unknown";
        this._ID = null;
        this._Name = "Unknown";
        this._Description = str2;
        this._Name = str;
        this._ID = uuid;
    }

    public String name() {
        return this._Name;
    }

    public String description() {
        return this._Description;
    }

    public UUID id() {
        return this._ID;
    }

    public ScheduledTask owner() {
        return this._Owner;
    }

    public void setOwner(ScheduledTask scheduledTask) {
        this._Owner = scheduledTask;
    }

    public void execute(OperationCompletedCallback operationCompletedCallback) {
        AnalyticsTracker.onBPScheduledTaskStarted(name());
        CoreHelper.writeLogEntryInProduction(TAG, "#=> Executing operation: " + name());
        this._OnOperationCompleted = operationCompletedCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onOperationCompleted() {
        CoreHelper.writeLogEntryInProduction(TAG, "*=> operation Execution completed: " + name());
        if (this._OnOperationCompleted != null) {
            this._OnOperationCompleted.onOperationComplete();
        }
    }

    public String toString() {
        return name();
    }

    public static boolean compare(OperationBase operationBase, OperationBase operationBase2) {
        return StringUtils.equalsIgnoreCase(operationBase.description(), operationBase2.description());
    }

    public boolean isModified() {
        return this.m_IsModified;
    }

    public void setIsModified(boolean z) {
        this.m_IsModified = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long generateRandomOffest(long j, long j2) {
        return CoreHelper.generateRandomNumber(j, j2, _Random);
    }
}
