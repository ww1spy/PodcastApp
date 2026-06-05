package mobi.beyondpod.services.download;

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
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.DownloadEngineNotificationManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class DownloadHolderService extends Service {
    private static final long IDLE_DELAY = 1800000;
    private static final String PREPARING_FOR_DOWNLOAD = CoreHelper.loadResourceString(R.string.download_holder_preparing_for_download);
    private static String TAG = "DownloadHolderService";
    Thread _DownloadResumeThread;
    long _LoadDataStartTime;
    private volatile boolean _started = false;

    @SuppressLint({"HandlerLeak"})
    private Handler _DelayedStopHandler = new Handler() { // from class: mobi.beyondpod.services.download.DownloadHolderService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (UpdateAndDownloadManager.isWorking()) {
                CoreHelper.writeLogEntry(DownloadHolderService.TAG, "DownloadService IDLE handler found that the download is still in progress! Starting a new wait cycle...");
                DownloadHolderService.this._DelayedStopHandler.sendMessageDelayed(DownloadHolderService.this._DelayedStopHandler.obtainMessage(), DownloadHolderService.IDLE_DELAY);
            } else {
                CoreHelper.writeLogEntry(DownloadHolderService.TAG, "Terminating an IDLE Download Holder service...");
                DownloadHolderService.this.checkCanStop();
                DownloadHolderService.this.stopSelf();
            }
        }
    };
    private final IBinder mBinder = new Binder() { // from class: mobi.beyondpod.services.download.DownloadHolderService.2
    };

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(26)
    public void checkCanStop() {
        if (!CoreHelper.isOreoCompatible() || this._started) {
            return;
        }
        Notification build = NotificationHelper.getInstance().getNotificationBuilder(BeyondPodApplication.getInstance().getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
        CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (DownloadHolderService) and passing notification: " + build.toString());
        startForeground(101, build);
        this._started = true;
    }

    @Override // android.app.Service
    @TargetApi(26)
    public void onCreate() {
        super.onCreate();
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(BeyondPodApplication.getInstance().getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (DownloadHolderService) and passing notification: " + build.toString());
            startForeground(101, build);
            this._started = true;
        }
        CoreHelper.writeTraceEntry(TAG, "========================= Download Service Holder is Created! =======================");
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        this._DelayedStopHandler.sendMessageDelayed(this._DelayedStopHandler.obtainMessage(), IDLE_DELAY);
        this._DownloadResumeThread = new Thread(null, new Runnable() { // from class: mobi.beyondpod.services.download.DownloadHolderService.3
            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                try {
                    DownloadHolderService.this._LoadDataStartTime = System.currentTimeMillis();
                    if (FeedRepository.repositoryLoadState() == -1) {
                        DownloadEngineNotificationManager.clearNotification();
                        CoreHelper.writeTraceEntry(DownloadHolderService.TAG, "******* DownloadHolderService OnCreate found that repository is not loaded! (repo state is: " + FeedRepository.repositoryLoadState() + ") Loading repository...");
                        if (!FeedRepository.initializeAndLoadRepository()) {
                            CoreHelper.writeLogEntry(DownloadHolderService.TAG, "Download Service - the repository failed to load! Giving Up!");
                            DownloadHolderService.this.checkCanStop();
                            DownloadHolderService.this.stopSelf();
                            return;
                        }
                        while (System.currentTimeMillis() - DownloadHolderService.this._LoadDataStartTime < 20000) {
                            if (DownloadHolderService.this.resumeDownloadIfRepositoryIsLoaded()) {
                                return;
                            }
                            CoreHelper.writeTraceEntry(DownloadHolderService.TAG, "Download Service Holder is waiting for Repository to load...");
                            Thread.sleep(1000L);
                        }
                        CoreHelper.writeLogEntry(DownloadHolderService.TAG, "Repository is taking too long to load! Giving Up!");
                        DownloadHolderService.this.checkCanStop();
                        DownloadHolderService.this.stopSelf();
                    }
                } catch (Exception e) {
                    CoreHelper.logException(DownloadHolderService.TAG, "failed to resume download!", e);
                }
            }
        }, "DownloadHolderService execution thread");
        this._DownloadResumeThread.start();
    }

    @Override // android.app.Service
    @TargetApi(26)
    public int onStartCommand(Intent intent, int i, int i2) {
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(BeyondPodApplication.getInstance().getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(R.drawable.ic_notification_update).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (DownloadHolderService) and passing notification: " + build.toString());
            startForeground(101, build);
            this._started = true;
        }
        if (intent == null || !NotificationHelper.isNotificationIntent(intent)) {
            CoreHelper.writeTraceEntry(TAG, "========= Download Service Holder Started!");
            NotificationHelper.getInstance().startForegroundAndShowNotification(this, 128, BeyondPodApplication.getInstance().getDefaultNotificationForService(this, PREPARING_FOR_DOWNLOAD));
        } else {
            BeyondPodApplication.getInstance().setNotification(this, intent);
        }
        return super.onStartCommand(intent, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean resumeDownloadIfRepositoryIsLoaded() {
        if (FeedRepository.repositoryLoadState() != 2) {
            return false;
        }
        if (UpdateAndDownloadManager.resumeUpdateAndDownloads()) {
            return true;
        }
        CoreHelper.writeTraceEntry(TAG, "No Downloads to resume! Stopping the holder service...");
        checkCanStop();
        stopSelf();
        return true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        NotificationHelper.getInstance().stopForeground(this, 128);
        CoreHelper.writeTraceEntry(TAG, "============================ Download Service Holder is Destroyed! =======================");
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this._DelayedStopHandler.removeCallbacksAndMessages(null);
        return this.mBinder;
    }
}
