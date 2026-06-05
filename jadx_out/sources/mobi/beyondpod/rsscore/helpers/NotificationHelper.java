package mobi.beyondpod.rsscore.helpers;

import android.R;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.util.SparseBooleanArray;

/* loaded from: classes.dex */
public abstract class NotificationHelper {
    public static final String GENERAL_CHANNEL_ID = "beyond.pod.general";
    public static final String GENERAL_CHANNEL_NAME = "BeyondPod General";
    public static String NOTIFICATION_LINE1_EXTRA = "LINE1";
    public static String NOTIFICATION_LINE2_EXTRA = "LINE2";
    public static String NOTIFICATION_PROGRESS = "PROGRESS";
    public static String NOTIFICATION_TICKER_EXTRA = "TICKER";
    public static String NOTIFICATION_TYPE_EXTRA = "TYPE";
    public static final int NT_Canceled = 1;
    public static final int NT_Completed = 3;
    public static final int NT_Connecting = 0;
    public static final int NT_ProcessingCompleted = 6;
    public static final int NT_ProcessingStarted = 5;
    public static final int NT_Progress = 4;
    public static final int NT_Started = 2;
    public static final int NT_UpdateAndDownloadCompleted = 7;
    public static final int NT_UpdateAndDownloadCompletedWithErrors = 8;
    private static String TAG = "NotificationHelper";
    public static final int UPDATEANDDOWNLOAD_COMPLETED = 129;
    public static final int UPDATEANDDOWNLOAD_STATUS = 128;
    private static SparseBooleanArray _CurrentNotifications = new SparseBooleanArray();

    public abstract void startForegroundAndShowNotification(Service service, int i, Notification notification);

    public abstract void stopForeground(Service service, int i);

    public static NotificationHelper getInstance() {
        return NewStyle.Holder.sInstance;
    }

    public void updateNotification(Context context, int i, Notification notification) {
        if (CoreHelper.isRunningOnARC()) {
            return;
        }
        try {
            getNotificationManager(context).notify(i, notification);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Notification manager failed to notify.", e);
        }
        markVisible(i);
    }

    public void clearNotification(Context context, int i) {
        if (CoreHelper.isRunningOnARC()) {
            return;
        }
        getNotificationManager(context).cancel(i);
        markCleared(i);
    }

    public static boolean isNotificationIntent(Intent intent) {
        return intent.getIntExtra(NOTIFICATION_TYPE_EXTRA, -1) != -1;
    }

    @TargetApi(26)
    private String getDefaultChannelId(Context context) {
        return getOrCreateNotificationChannel(context).getId();
    }

    public NotificationCompat.Builder getNotificationBuilder(Context context) {
        NotificationCompat.Builder builder;
        if (CoreHelper.isOreoCompatible()) {
            builder = new NotificationCompat.Builder(context, getDefaultChannelId(context));
        } else {
            builder = new NotificationCompat.Builder(context);
        }
        builder.setSmallIcon(R.drawable.ic_dialog_info);
        builder.setOnlyAlertOnce(true);
        return builder;
    }

    protected NotificationManager getNotificationManager(Context context) {
        return (NotificationManager) context.getSystemService("notification");
    }

    @TargetApi(27)
    protected NotificationChannel getOrCreateNotificationChannel(Context context) {
        NotificationChannel notificationChannel = getNotificationManager(context).getNotificationChannel(GENERAL_CHANNEL_ID);
        if (notificationChannel != null) {
            return notificationChannel;
        }
        NotificationChannel notificationChannel2 = new NotificationChannel(GENERAL_CHANNEL_ID, GENERAL_CHANNEL_NAME, 1);
        notificationChannel2.enableVibration(false);
        getNotificationManager(context).createNotificationChannel(notificationChannel2);
        return notificationChannel2;
    }

    /* loaded from: classes.dex */
    private static class NewStyle extends NotificationHelper {
        private static String TAG = "NotificationHelper$NewStyle";

        private NewStyle() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Holder {
            private static final NotificationHelper sInstance;

            private Holder() {
            }

            static {
                sInstance = CoreHelper.isRunningOnARC() ? new ArcStyle() : new NewStyle();
            }
        }

        @TargetApi(26)
        private void checkNotification(Notification notification) {
            if (CoreHelper.isOreoCompatible() && StringUtils.isNullOrEmpty(notification.getChannelId())) {
                throw new IllegalStateException("No channel ID specified for notification: " + notification.toString());
            }
        }

        @Override // mobi.beyondpod.rsscore.helpers.NotificationHelper
        public void startForegroundAndShowNotification(Service service, int i, Notification notification) {
            checkNotification(notification);
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (" + service.getClass().getSimpleName() + ") and passing notification: " + notification.toString());
            service.startForeground(i, notification);
            NotificationHelper.markVisible(i);
        }

        @Override // mobi.beyondpod.rsscore.helpers.NotificationHelper
        public void stopForeground(Service service, int i) {
            try {
                service.stopForeground(i > 0);
                if (i > 0) {
                    getNotificationManager(service).cancel(i);
                    NotificationHelper.markCleared(i);
                }
            } catch (Exception e) {
                CoreHelper.writeLogEntry(TAG, " Cancel Notification failed! reason: " + CoreHelper.extractExceptionMessages(e));
            }
        }
    }

    /* loaded from: classes.dex */
    private static class ArcStyle extends NotificationHelper {
        private ArcStyle() {
        }

        @Override // mobi.beyondpod.rsscore.helpers.NotificationHelper
        public void startForegroundAndShowNotification(Service service, int i, Notification notification) {
            CoreHelper.writeTraceEntry(NotificationHelper.TAG, "startForegroundAndShowNotification services is ignored under ARC");
        }

        @Override // mobi.beyondpod.rsscore.helpers.NotificationHelper
        public void stopForeground(Service service, int i) {
            CoreHelper.writeTraceEntry(NotificationHelper.TAG, "stopForeground services is ignored under ARC");
        }
    }

    public boolean isNotificationShowing(int i) {
        return _CurrentNotifications.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void markVisible(int i) {
        if (_CurrentNotifications.get(i)) {
            return;
        }
        _CurrentNotifications.put(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void markCleared(int i) {
        if (_CurrentNotifications.get(i)) {
            _CurrentNotifications.put(i, false);
        }
    }
}
