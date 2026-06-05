package mobi.beyondpod.services.scheduler;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.support.v4.app.NotificationCompat;
import android.text.format.DateUtils;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.GenericQueue;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.PlayList;

/* loaded from: classes.dex */
public class SchedulingService extends Service {
    private static final long IDLE_DELAY = 1800000;
    private static String TAG = "SchedulingService";
    long _LoadDataStartTime;
    Thread _TaskExecutorThread;
    private final GenericQueue<String> _TaskQueue = new GenericQueue<>();
    private volatile boolean _started = false;
    OperationBase.OperationCompletedCallback _OnTaskCompleted = new OperationBase.OperationCompletedCallback() { // from class: mobi.beyondpod.services.scheduler.SchedulingService.2
        @Override // mobi.beyondpod.schedulercore.OperationBase.OperationCompletedCallback
        public void onOperationComplete() {
            if (SchedulingService.this._TaskQueue.hasItems()) {
                CoreHelper.writeTraceEntry(SchedulingService.TAG, "Scheduled task " + ((String) SchedulingService.this._TaskQueue.peek()) + " completed!");
                SchedulingService.this._TaskQueue.dequeue();
                if (SchedulingService.this._TaskQueue.hasItems()) {
                    String str = (String) SchedulingService.this._TaskQueue.peek();
                    CoreHelper.writeLogEntryInProduction(SchedulingService.TAG, "Found a waiting task (" + str + ") in the scheduling queue!");
                    if (FeedRepository.repositoryLoadState() == 2) {
                        SchedulingService.this.startScheduledTaskIfRepositoryIsLoaded();
                    } else {
                        CoreHelper.writeLogEntryInProduction(SchedulingService.TAG, "Unable to execute the task from the scheduling queue, because the Repository is uninitilizad. Exiting...");
                    }
                }
            }
            CoreHelper.writeTraceEntry(SchedulingService.TAG, "Terminating the scheduling service service...");
            BeyondPodApplication.releaseWakeLocks();
            SchedulingService.this.checkCanStop();
            SchedulingService.this.stopSelf();
        }
    };

    @SuppressLint({"HandlerLeak"})
    private Handler _DelayedStopHandler = new Handler() { // from class: mobi.beyondpod.services.scheduler.SchedulingService.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (UpdateAndDownloadManager.isWorking()) {
                CoreHelper.writeLogEntry(SchedulingService.TAG, "SchedulingService IDLE handler found that the download is still in progress! Starting a new wait cycle...");
                SchedulingService.this._DelayedStopHandler.sendMessageDelayed(SchedulingService.this._DelayedStopHandler.obtainMessage(), SchedulingService.IDLE_DELAY);
            } else {
                CoreHelper.writeLogEntry(SchedulingService.TAG, "Terminating an IDLE scheduling service...");
                SchedulingService.this.checkCanStop();
                SchedulingService.this.stopSelf();
            }
        }
    };
    private final IBinder mBinder = new Binder() { // from class: mobi.beyondpod.services.scheduler.SchedulingService.4
    };

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(26)
    public void checkCanStop() {
        if (!CoreHelper.isOreoCompatible() || this._started) {
            return;
        }
        Notification build = NotificationHelper.getInstance().getNotificationBuilder(BeyondPodApplication.getInstance().getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
        CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (SchedulingService) and passing notification: " + build.toString());
        startForeground(101, build);
        this._started = true;
    }

    @Override // android.app.Service
    @SuppressLint({"NewApi"})
    public void onCreate() {
        super.onCreate();
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(PlayList.isCurrentlyPlaying() ? R.drawable.ic_notification_pause : R.drawable.ic_notification_play).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (SchedulingService) and passing notification: " + build.toString());
            startForeground(101, build);
            this._started = true;
        }
        CoreHelper.writeTraceEntry(TAG, "--------------------------- Scheduling Service is Created!---------------------------");
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), IDLE_DELAY);
    }

    private synchronized void handleCommand(Intent intent) {
        if (intent == null) {
            CoreHelper.writeLogEntry(TAG, "Scheduling service was started without an intent! Exiting...");
            checkCanStop();
            stopSelf();
            return;
        }
        String action = intent.getAction();
        String str = TAG;
        Locale currentLocale = CoreHelper.getCurrentLocale();
        Object[] objArr = new Object[3];
        objArr[0] = action;
        objArr[1] = Integer.valueOf(BeyondPodApplication.batteryLevel);
        objArr[2] = CoreHelper.isDevicePlugged() ? "Yes" : "No";
        CoreHelper.writeLogEntryInProduction(str, String.format(currentLocale, "SchedulingService was started for task: %s. Battery Level: %d%%, Charging: %s", objArr));
        if (this._TaskQueue.hasItems()) {
            long currentTimeMillis = System.currentTimeMillis() - this._LoadDataStartTime;
            CoreHelper.writeLogEntryInProduction(TAG, String.format("Found that another scheduled task (%s) is already running! The task has been running for: %s", this._TaskQueue.peek(), DateUtils.formatElapsedTime(currentTimeMillis / 1000)));
            if (currentTimeMillis < 600000) {
                CoreHelper.writeLogEntryInProduction(TAG, "Last task has been running for less than 10 minutes.");
                if (enqueueTask(action)) {
                    CoreHelper.writeLogEntryInProduction(TAG, "Queing the new task...");
                } else {
                    CoreHelper.writeLogEntryInProduction(TAG, "Task with the same id already exists - Exiting...");
                }
                return;
            }
            if (UpdateAndDownloadManager.isWorking()) {
                CoreHelper.writeLogEntryInProduction(TAG, "Last task's Update & Download Manager is still working.");
                if (enqueueTask(action)) {
                    CoreHelper.writeLogEntryInProduction(TAG, "Queueing the new task...");
                } else {
                    CoreHelper.writeLogEntryInProduction(TAG, "Task with the same id already exists - Exiting...");
                }
                return;
            }
            CoreHelper.writeLogEntry(TAG, "The last task appears to be stuck! Starting the execution of the new task");
            this._TaskQueue.dequeue();
        }
        if (StringUtils.isNullOrEmpty(action)) {
            CoreHelper.writeLogEntry(TAG, "SchedulingService was started with invalid task id");
            checkCanStop();
            stopSelf();
        } else {
            enqueueTask(action);
            this._TaskExecutorThread = new Thread(null, new Runnable() { // from class: mobi.beyondpod.services.scheduler.SchedulingService.1
                @Override // java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(10);
                    try {
                        SchedulingService.this._LoadDataStartTime = System.currentTimeMillis();
                        if (FeedRepository.repositoryLoadState() == -1) {
                            NotificationHelper.getInstance().startForegroundAndShowNotification(SchedulingService.this, 128, BeyondPodApplication.getInstance().getDefaultNotificationForService(SchedulingService.this, "Loading feeds..."));
                            long currentTimeMillis2 = System.currentTimeMillis();
                            while (true) {
                                if (System.currentTimeMillis() - currentTimeMillis2 >= 30000) {
                                    break;
                                }
                                if (FeedRepository.canRepositoryBeLoaded()) {
                                    CoreHelper.writeTraceEntry(SchedulingService.TAG, "Storage card found...");
                                    break;
                                } else {
                                    CoreHelper.writeTraceEntry(SchedulingService.TAG, "Waiting for the Storage Card to get mounted...");
                                    Thread.sleep(1000L);
                                }
                            }
                            CoreHelper.writeTraceEntry(SchedulingService.TAG, "******* SchedulingService OnStart found that repository is not loaded! (repo state is: " + FeedRepository.repositoryLoadState() + ") Loading repository...");
                            if (!FeedRepository.initializeAndLoadRepository()) {
                                CoreHelper.writeLogEntry(SchedulingService.TAG, "Scheduling Service - the repository failed to load! (Possibly no Storage Card) Exiting...!");
                                SchedulingService.this.checkCanStop();
                                SchedulingService.this.stopSelf();
                                System.exit(0);
                                return;
                            }
                        }
                        while (System.currentTimeMillis() - SchedulingService.this._LoadDataStartTime < 50000) {
                            if (SchedulingService.this.startScheduledTaskIfRepositoryIsLoaded()) {
                                return;
                            }
                            CoreHelper.writeTraceEntry(SchedulingService.TAG, "Repository is still loading...");
                            Thread.sleep(1000L);
                        }
                    } catch (Exception e) {
                        CoreHelper.logException(SchedulingService.TAG, "failed to start scheduled task!", e);
                    }
                    CoreHelper.writeLogEntry(SchedulingService.TAG, "Repository is taking too long to load! Giving Up!");
                    SchedulingService.this.checkCanStop();
                    SchedulingService.this.stopSelf();
                }
            }, "SchedulingService task executing thread");
            this._TaskExecutorThread.start();
        }
    }

    @Override // android.app.Service
    @TargetApi(26)
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(PlayList.isCurrentlyPlaying() ? R.drawable.ic_notification_pause : R.drawable.ic_notification_play).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (SchedulingService) and passing notification: " + build.toString());
            startForeground(101, build);
            this._started = true;
        }
        handleCommand(intent);
        return 1;
    }

    private boolean enqueueTask(String str) {
        if (this._TaskQueue.contains(str)) {
            return false;
        }
        this._TaskQueue.enqueue(str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean startScheduledTaskIfRepositoryIsLoaded() {
        if (BeyondPodApplication.isRuntimeShuttingDown().booleanValue()) {
            return false;
        }
        if (FeedRepository.repositoryLoadState() != 2) {
            return false;
        }
        if (this._TaskQueue.hasItems() && this._TaskQueue.peek() != null) {
            String peek = this._TaskQueue.peek();
            if (PolicyManager.ifSchedulingRestricted()) {
                CoreHelper.writeTraceEntry(TAG, "BeyondPod is running in restricted mode! (Expired on: " + DateTime.formatDate(LicenseManager.trialExpirationDate()) + ") Scheduled Updates are disabled!");
                this._OnTaskCompleted.onOperationComplete();
            } else if ("android.intent.action.BOOT_COMPLETED".equals(peek) || "android.intent.action.TIMEZONE_CHANGED".equals(peek) || "android.intent.action.TIME_SET".equals(peek)) {
                if ("android.intent.action.BOOT_COMPLETED".equals(peek)) {
                    CoreHelper.writeLogEntry(TAG, "device was rebooted. Restoring schedules...");
                }
                AnalyticsTracker.onSystemScheduledTaskStarted(peek);
                ScheduledTasksManager.rescheduleAllActiveTasks();
                ScheduledTasksManager.scheduleGoogleSynUpdateIfNeeded();
                ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(20, TimeSpan.fromMinutes(1.0d), true);
                this._OnTaskCompleted.onOperationComplete();
                if ("android.intent.action.BOOT_COMPLETED".equals(peek)) {
                    System.exit(0);
                }
            } else {
                try {
                    if (!ScheduledTasksManager.executeTaskFor(peek, this._OnTaskCompleted)) {
                        this._OnTaskCompleted.onOperationComplete();
                    }
                } catch (Exception e) {
                    CoreHelper.writeLogEntry(TAG, e.getMessage());
                }
            }
            return true;
        }
        CoreHelper.writeLogEntry(TAG, "Attempting to execute scheduled task when the scheduling task Queue is empty!");
        this._OnTaskCompleted.onOperationComplete();
        return true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this._TaskQueue.clear();
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        NotificationHelper.getInstance().stopForeground(this, 128);
        CoreHelper.writeTraceEntry(TAG, "--------------------------- Scheduling service is Destroyed! ---------------------------");
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        return this.mBinder;
    }
}
