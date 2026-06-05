package mobi.beyondpod;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import java.util.Date;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.sync.TrackedChangeBase;
import mobi.beyondpod.sync.trackers.bp.BPTracker;

/* loaded from: classes.dex */
public class GcmIntentService extends GcmIntentServiceBase {
    private static final String TAG = "GcmIntentService";

    @Override // android.app.IntentService, android.app.Service
    @TargetApi(26)
    public void onCreate() {
        super.onCreate();
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (GcmIntentService) and passing notification: " + build.toString());
            startForeground(101, build);
        }
        CoreHelper.writeTraceEntry(TAG, "--------------------------- GCM Service is Created! ---------------------------");
    }

    @Override // android.app.IntentService, android.app.Service
    @TargetApi(26)
    public int onStartCommand(Intent intent, int i, int i2) {
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (GcmIntentService) and passing notification: " + build.toString());
            startForeground(101, build);
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // mobi.beyondpod.GcmIntentServiceBase
    protected void onRegistered(String str) {
        CoreHelper.writeTraceEntry(TAG, "### device registered! Adding to CDS server... Reg id:" + str);
        try {
            BPTracker bPTracker = new BPTracker();
            bPTracker.initialize();
            bPTracker.updateServerCDMRegistration(str, true);
        } catch (Exception e) {
            TrackedChangeBase.logSyncEvent(TAG, "### failed to add CDS registration! reason: " + e.getMessage(), null);
        }
    }

    @Override // mobi.beyondpod.GcmIntentServiceBase
    protected void onUnregistered(String str) {
        CoreHelper.writeTraceEntry(TAG, "### device unregistered! Removing from CDS server... Token: " + str);
        if (Configuration.isRegisteredOnServer()) {
            try {
                new BPTracker().updateServerCDMRegistration(str, false);
                return;
            } catch (Exception e) {
                TrackedChangeBase.logSyncEvent(TAG, "### failed to remove CDS registration! reason: " + e.getMessage(), null);
                return;
            }
        }
        CoreHelper.writeTraceEntry(TAG, "### No need to unregister");
    }

    @Override // mobi.beyondpod.GcmIntentServiceBase
    protected void onMessage(Intent intent) {
        String str;
        String str2;
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("device");
        String stringExtra2 = intent.getStringExtra("from");
        boolean equals = StringUtils.equals(Configuration.GCMSenderID(), stringExtra2);
        if (StringUtils.isNullOrEmpty(stringExtra)) {
            String str3 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("\n### ");
            sb.append(new Date());
            sb.append(": Received CDS sync request from an invalid device! ");
            if (equals) {
                str2 = "";
            } else {
                str2 = " Sender: " + stringExtra2;
            }
            sb.append(str2);
            TrackedChangeBase.logSyncEvent(str3, sb.toString(), null);
            return;
        }
        String str4 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n### ");
        sb2.append(new Date());
        sb2.append(": Received CDS sync request from ");
        sb2.append(stringExtra);
        if (equals) {
            str = "";
        } else {
            str = ". Sender: " + stringExtra2;
        }
        sb2.append(str);
        TrackedChangeBase.logSyncEvent(str4, sb2.toString(), null);
        if (StringUtils.equals(stringExtra, Configuration.CDSDeviceID())) {
            TrackedChangeBase.logSyncEvent(TAG, "### Sync request is from this device! Ignoring...", null);
        } else {
            ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(5, TimeSpan.fromSeconds(1.0d), true);
        }
    }

    @Override // mobi.beyondpod.GcmIntentServiceBase
    protected void onDeletedMessages(Intent intent) {
        TrackedChangeBase.logSyncEvent(TAG, "\n### " + new Date() + ": " + intent + " CDS sync requests were deleted as old!", null);
    }

    @Override // mobi.beyondpod.GcmIntentServiceBase
    public void onError(String str) {
        CoreHelper.writeTraceEntry(TAG, "### GCM registration Error: " + str);
        TrackedChangeBase.logSyncEvent(TAG, "\n### " + new Date() + ": Error registering with CDS! reason: " + str, null);
    }
}
