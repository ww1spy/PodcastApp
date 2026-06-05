package mobi.beyondpod.evo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.ContextCompat;
import com.crashlytics.android.Crashlytics;
import io.fabric.sdk.android.Fabric;
import java.lang.Thread;
import java.lang.ref.SoftReference;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.Constants;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.ExternalLicenseFactory;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.services.player.MediaAppWidgetProvider;
import mobi.beyondpod.services.player.MediaAppWidgetProviderBase;
import mobi.beyondpod.services.player.MediaAppWidgetProviderLockscreen;
import mobi.beyondpod.services.player.MediaAppWidgetProviderXLarge;
import mobi.beyondpod.services.player.smartplay.PlayFromQuery;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;
import uk.co.chrisjenx.calligraphy.CalligraphyConfig;

/* loaded from: classes.dex */
public class BeyondPodApplicationEvo extends BeyondPodApplication implements Thread.UncaughtExceptionHandler {
    private static SoftReference<Activity> _MasterActivity;
    private static MediaAppWidgetProviderBase _MediaAppWidgetProvider;
    private static MediaAppWidgetProviderBase _MediaAppWidgetProviderLockScreen;
    private static MediaAppWidgetProviderBase _MediaAppWidgetProviderXLarge;
    NotificationCompat.Builder _UpdateNotificationBuilder;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.BeyondPodApplication
    public void initialize() {
        super.initialize();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public Activity masterActivity() {
        if (_MasterActivity == null) {
            return null;
        }
        return _MasterActivity.get();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void setMasterActivity(Activity activity) {
        if (activity == null) {
            if (_MasterActivity != null) {
                _MasterActivity.clear();
            }
            _MasterActivity = null;
            return;
        }
        _MasterActivity = new SoftReference<>(activity);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public Class<?> masterViewClass() {
        return MasterView.class;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c7  */
    @Override // mobi.beyondpod.BeyondPodApplication
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setNotification(android.app.Service r13, android.content.Intent r14) {
        /*
            r12 = this;
            java.lang.String r0 = mobi.beyondpod.rsscore.helpers.NotificationHelper.NOTIFICATION_TYPE_EXTRA
            r1 = -1
            int r0 = r14.getIntExtra(r0, r1)
            java.lang.String r2 = mobi.beyondpod.rsscore.helpers.NotificationHelper.NOTIFICATION_TICKER_EXTRA
            java.lang.String r2 = r14.getStringExtra(r2)
            java.lang.String r3 = mobi.beyondpod.rsscore.helpers.NotificationHelper.NOTIFICATION_LINE1_EXTRA
            java.lang.String r3 = r14.getStringExtra(r3)
            java.lang.String r4 = mobi.beyondpod.rsscore.helpers.NotificationHelper.NOTIFICATION_LINE2_EXTRA
            java.lang.String r4 = r14.getStringExtra(r4)
            java.lang.String r5 = mobi.beyondpod.rsscore.helpers.NotificationHelper.NOTIFICATION_PROGRESS
            int r14 = r14.getIntExtra(r5, r1)
            r5 = 5
            r6 = 129(0x81, float:1.81E-43)
            r7 = 128(0x80, float:1.8E-43)
            r8 = 0
            r9 = 0
            if (r0 == r5) goto L65
            switch(r0) {
                case 7: goto L51;
                case 8: goto L31;
                default: goto L2b;
            }
        L2b:
            r0 = 17301633(0x1080081, float:2.4979616E-38)
        L2e:
            r6 = r7
            r5 = r8
            goto L69
        L31:
            r0 = 17301624(0x1080078, float:2.497959E-38)
            android.content.Intent r5 = new android.content.Intent
            java.lang.Class<mobi.beyondpod.ui.views.HtmlViewActivity> r10 = mobi.beyondpod.ui.views.HtmlViewActivity.class
            r5.<init>(r13, r10)
            android.net.Uri r10 = mobi.beyondpod.rsscore.Configuration.getFeedUpdateLogURL()
            r5.setData(r10)
            java.lang.String r10 = "title"
            java.lang.String r11 = "Update and Download Log"
            r5.putExtra(r10, r11)
            java.lang.String r10 = "IsFeedContentLink"
            r5.putExtra(r10, r9)
            r12._UpdateNotificationBuilder = r8
            goto L69
        L51:
            r0 = 2131231196(0x7f0801dc, float:1.8078466E38)
            android.content.Intent r5 = new android.content.Intent
            java.lang.Class r10 = r12.masterViewClass()
            r5.<init>(r13, r10)
            java.lang.String r10 = "mobi.beyondpod.action.VIEW_LATEST"
            r5.setAction(r10)
            r12._UpdateNotificationBuilder = r8
            goto L69
        L65:
            r0 = 2131231285(0x7f080235, float:1.8078647E38)
            goto L2e
        L69:
            if (r5 == 0) goto L77
            boolean r10 = mobi.beyondpod.downloadengine.UpdateAndDownloadManager.hasWorkToDo()
            if (r10 != 0) goto L77
            int r10 = mobi.beyondpod.downloadengine.EnclosureDownloadManager.queueCount()
            if (r10 <= 0) goto L7e
        L77:
            android.content.Intent r5 = new android.content.Intent
            java.lang.Class<mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog> r10 = mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog.class
            r5.<init>(r13, r10)
        L7e:
            android.support.v4.app.NotificationCompat$Builder r10 = r12._UpdateNotificationBuilder
            if (r10 != 0) goto L91
            mobi.beyondpod.rsscore.helpers.NotificationHelper r10 = mobi.beyondpod.rsscore.helpers.NotificationHelper.getInstance()
            android.support.v4.app.NotificationCompat$Builder r10 = r10.getNotificationBuilder(r13)
            r12._UpdateNotificationBuilder = r10
            android.support.v4.app.NotificationCompat$Builder r10 = r12._UpdateNotificationBuilder
            r10.setSmallIcon(r0)
        L91:
            android.support.v4.app.NotificationCompat$Builder r0 = r12._UpdateNotificationBuilder
            r10 = 134217728(0x8000000, float:3.85186E-34)
            android.app.PendingIntent r5 = android.app.PendingIntent.getActivity(r13, r9, r5, r10)
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setContentIntent(r5)
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setTicker(r2)
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setContentTitle(r3)
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setContentText(r4)
            r2 = 1
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setLocalOnly(r2)
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setPriority(r1)
            r1 = 2131099690(0x7f06002a, float:1.781174E38)
            int r1 = android.support.v4.content.ContextCompat.getColor(r13, r1)
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setColor(r1)
            java.lang.String r1 = "progress"
            android.support.v4.app.NotificationCompat$Builder r0 = r0.setCategory(r1)
            if (r6 != r7) goto Lc7
            r1 = r2
            goto Lc8
        Lc7:
            r1 = r9
        Lc8:
            r0.setOngoing(r1)
            if (r14 < 0) goto Ld9
            android.support.v4.app.NotificationCompat$Builder r0 = r12._UpdateNotificationBuilder
            r1 = 100
            if (r14 != 0) goto Ld4
            goto Ld5
        Ld4:
            r2 = r9
        Ld5:
            r0.setProgress(r1, r14, r2)
            goto Lde
        Ld9:
            android.support.v4.app.NotificationCompat$Builder r14 = r12._UpdateNotificationBuilder
            r14.setProgress(r9, r9, r9)
        Lde:
            mobi.beyondpod.rsscore.helpers.NotificationHelper r14 = mobi.beyondpod.rsscore.helpers.NotificationHelper.getInstance()
            android.support.v4.app.NotificationCompat$Builder r0 = r12._UpdateNotificationBuilder
            android.app.Notification r0 = r0.build()
            r14.updateNotification(r13, r6, r0)
            if (r6 == r7) goto Lef
            r12._UpdateNotificationBuilder = r8
        Lef:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.evo.BeyondPodApplicationEvo.setNotification(android.app.Service, android.content.Intent):void");
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    @TargetApi(21)
    public Notification getDefaultNotificationForService(Service service, String str) {
        Intent intent = new Intent(service, masterViewClass());
        intent.setAction(Constants.INTENT_ACTION_VIEW_LATEST);
        NotificationCompat.Builder notificationBuilder = NotificationHelper.getInstance().getNotificationBuilder(service);
        notificationBuilder.setSmallIcon(mobi.beyondpod.R.drawable.stat_notify_sync).setLocalOnly(true).setPriority(-2).setCategory(NotificationCompat.CATEGORY_SERVICE).setColor(ContextCompat.getColor(service, mobi.beyondpod.R.color.bp_orange)).setContentIntent(PendingIntent.getActivity(service, 0, intent, 134217728)).setContentTitle(str).setContentText("").setOnlyAlertOnce(true).setAutoCancel(true).setOngoing(false);
        if (CoreHelper.apiLevel() >= 21) {
            notificationBuilder.setVisibility(-1);
        }
        return notificationBuilder.build();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void setReaderSyncNotification(String str, String str2) {
        setSyncNotificationInternal(171, str, str2);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void clearReaderSyncNotification() {
        NotificationHelper.getInstance().clearNotification(BeyondPodApplication.getInstance(), 171);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void clearChangeSyncNotification() {
        NotificationHelper.getInstance().clearNotification(BeyondPodApplication.getInstance(), 179);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void setChangeSyncNotification(String str, String str2) {
        setSyncNotificationInternal(179, str, str2);
    }

    private void setSyncNotificationInternal(int i, String str, String str2) {
        Intent intent = new Intent(this, masterViewClass());
        BeyondPodApplication beyondPodApplication = BeyondPodApplication.getInstance();
        NotificationCompat.Builder notificationBuilder = NotificationHelper.getInstance().getNotificationBuilder(beyondPodApplication);
        notificationBuilder.setSmallIcon(android.R.drawable.stat_sys_upload).setLocalOnly(true).setPriority(-2).setCategory(NotificationCompat.CATEGORY_PROGRESS).setColor(ContextCompat.getColor(beyondPodApplication, mobi.beyondpod.R.color.bp_orange)).setContentIntent(PendingIntent.getActivity(beyondPodApplication, 0, intent, 134217728)).setContentTitle(str).setContentText(str2).setOngoing(true);
        NotificationHelper.getInstance().updateNotification(BeyondPodApplication.getInstance(), i, notificationBuilder.build());
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void setPlayerNotification(Service service, Track track) {
        if (!isMainUIWindowVisible() || Configuration.showPlayerPausedNotication()) {
            NotificationHelper.getInstance().startForegroundAndShowNotification(service, 1, MediaAppWidgetProvider.createPlayerNotification(service, track, false));
        }
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void setPlayerPauseNotification(Context context, Track track) {
        if (!isMainUIWindowVisible() || Configuration.showPlayerPausedNotication()) {
            if (track == null) {
                if (context instanceof Service) {
                    NotificationHelper.getInstance().stopForeground((Service) context, 1);
                    return;
                }
                return;
            }
            NotificationHelper.getInstance().updateNotification(context, 1, MediaAppWidgetProvider.createPlayerNotification(context, track, false));
        }
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void initializeWidgets() {
        _MediaAppWidgetProvider = new MediaAppWidgetProvider();
        _MediaAppWidgetProvider.initialize();
        _MediaAppWidgetProviderXLarge = new MediaAppWidgetProviderXLarge();
        _MediaAppWidgetProviderXLarge.initialize();
        _MediaAppWidgetProviderLockScreen = new MediaAppWidgetProviderLockscreen();
        _MediaAppWidgetProviderLockScreen.initialize();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void refreshWidgets() {
        new MediaAppWidgetProvider().refreshViews();
        new MediaAppWidgetProviderXLarge().refreshViews();
        new MediaAppWidgetProviderLockscreen().refreshViews();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void executeCommandPlaySmartPlayList(int i, Context context) {
        SmartPlaylist smartPlaylist = SmartPlaylistManager.getSmartPlaylist(i);
        if (smartPlaylist == null) {
            smartPlaylist = SmartPlaylistManager.primarySmartPlay();
        }
        if (smartPlaylist != null) {
            CommandManager.cmdPlaySmartPlayList(smartPlaylist.id(), context);
        }
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public String appKind() {
        return getResources().getString(mobi.beyondpod.R.string.app_kind);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void configureDefaults() {
        Configuration.configureDefaults();
        Configuration.setShowContentListPostImages(true);
        Configuration.setEnableBrowserPlugins(true);
        Configuration.setAllowVideosInPlaylist(true);
        Configuration.setSetAsPlayedOnMarkRead(true);
        Configuration.setItemFilter(0);
        Configuration.setShowPlayerPausedNotication(true);
        Configuration.setContentTheme(Configuration.contentThemes[0]);
        Configuration.setDefaultDocFontSize(Configuration.contentFontSizes[2]);
        if (CoreHelper.isRunningOnARC()) {
            Configuration.setAllowPullToRefresh(false);
            Configuration.setAttachDownloadedPodcastsWhenSharing(true);
            Configuration.setUseExternalBrowser(true);
        }
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public StartupContentBuilder.Content[] getDemoContent() {
        return StartupContentBuilder.loadSeedFeedImages();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void startVideoPlayback(Track track) {
        CommandManager.cmdPlayMovie(getApplicationContext(), track);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public boolean sendCommandToVideoPlayer(Intent intent) {
        if (!isMovieViewActive()) {
            return false;
        }
        CommandManager.cmdSendMediaCommandToVideoPlayer(getApplicationContext(), intent);
        return true;
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public void configureDefaultsForVersionUpgrade(int i, int i2) {
        if (i < 40009 && i2 >= 40009) {
            Configuration.setContentTheme(Configuration.contentThemes[0]);
            Configuration.setDefaultDocFontSize(Configuration.contentFontSizes[2]);
            UserNotificationManager.resetDefaultPrefs();
            Configuration.setFeedSelectedAction(1);
        }
        if (i < 40013 && i2 >= 40013) {
            Configuration.setHideReadFeeds(false);
        }
        if (i < 40033 && i2 >= 40033) {
            Configuration.setShowPlayerPausedNotication(true);
        }
        if (i > 40024 || i2 < 40025) {
            return;
        }
        Configuration.setGatherAnalyticsData(true);
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public boolean isLockScreenWidgetInstalled() {
        return _MediaAppWidgetProviderLockScreen != null && _MediaAppWidgetProviderLockScreen.hasInstances();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public String getExternalLicenseKey() {
        return ExternalLicenseFactory.getLicenseKey();
    }

    @Override // mobi.beyondpod.BeyondPodApplication
    public boolean playFromQuery(String str) {
        return PlayFromQuery.cmdPlayFromVoiceSearch(str);
    }

    @Override // mobi.beyondpod.BeyondPodApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        Fabric.with(this, new Crashlytics());
        CalligraphyConfig.initDefault(new CalligraphyConfig.Builder().setFontAttrId(mobi.beyondpod.R.attr.fontPath).build());
    }
}
