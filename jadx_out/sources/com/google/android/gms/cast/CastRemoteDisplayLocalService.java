package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.NotificationCompat;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.text.TextUtils;
import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbei;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

@TargetApi(19)
/* loaded from: classes.dex */
public abstract class CastRemoteDisplayLocalService extends Service {
    private static final zzbei zzeus = new zzbei("CastRemoteDisplayLocalService");
    private static final int zzeut = com.google.android.gms.R.id.cast_notification_id;
    private static final Object zzeuu = new Object();
    private static AtomicBoolean zzeuv = new AtomicBoolean(false);
    private static CastRemoteDisplayLocalService zzevi;
    private Handler mHandler;
    private Notification mNotification;
    private Display zzdmh;
    private String zzetb;
    private WeakReference<Callbacks> zzeuw;
    private zzb zzeux;
    private NotificationSettings zzeuy;
    private boolean zzeuz;
    private PendingIntent zzeva;
    private CastDevice zzevb;
    private Context zzevc;
    private ServiceConnection zzevd;
    private MediaRouter zzeve;
    private CastRemoteDisplayClient zzevg;
    private boolean zzevf = false;
    private final MediaRouter.Callback zzevh = new zzu(this);
    private final IBinder zzevj = new zza();

    /* loaded from: classes.dex */
    public interface Callbacks {
        void onRemoteDisplaySessionEnded(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onRemoteDisplaySessionError(Status status);

        void onRemoteDisplaySessionStarted(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onServiceCreated(CastRemoteDisplayLocalService castRemoteDisplayLocalService);
    }

    /* loaded from: classes.dex */
    public static final class NotificationSettings {
        private Notification mNotification;
        private PendingIntent zzevr;
        private String zzevs;
        private String zzevt;

        /* loaded from: classes.dex */
        public static final class Builder {
            private NotificationSettings zzevu = new NotificationSettings((zzu) null);

            public final NotificationSettings build() {
                if (this.zzevu.mNotification != null) {
                    if (!TextUtils.isEmpty(this.zzevu.zzevs)) {
                        throw new IllegalArgumentException("notificationTitle requires using the default notification");
                    }
                    if (!TextUtils.isEmpty(this.zzevu.zzevt)) {
                        throw new IllegalArgumentException("notificationText requires using the default notification");
                    }
                    if (this.zzevu.zzevr != null) {
                        throw new IllegalArgumentException("notificationPendingIntent requires using the default notification");
                    }
                } else if (TextUtils.isEmpty(this.zzevu.zzevs) && TextUtils.isEmpty(this.zzevu.zzevt) && this.zzevu.zzevr == null) {
                    throw new IllegalArgumentException("At least an argument must be provided");
                }
                return this.zzevu;
            }

            public final Builder setNotification(Notification notification) {
                this.zzevu.mNotification = notification;
                return this;
            }

            public final Builder setNotificationPendingIntent(PendingIntent pendingIntent) {
                this.zzevu.zzevr = pendingIntent;
                return this;
            }

            public final Builder setNotificationText(String str) {
                this.zzevu.zzevt = str;
                return this;
            }

            public final Builder setNotificationTitle(String str) {
                this.zzevu.zzevs = str;
                return this;
            }
        }

        private NotificationSettings() {
        }

        private NotificationSettings(NotificationSettings notificationSettings) {
            this.mNotification = notificationSettings.mNotification;
            this.zzevr = notificationSettings.zzevr;
            this.zzevs = notificationSettings.zzevs;
            this.zzevt = notificationSettings.zzevt;
        }

        /* synthetic */ NotificationSettings(NotificationSettings notificationSettings, zzu zzuVar) {
            this(notificationSettings);
        }

        /* synthetic */ NotificationSettings(zzu zzuVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static class Options {

        @CastRemoteDisplay.Configuration
        private int zzeuf = 2;

        @CastRemoteDisplay.Configuration
        public int getConfigPreset() {
            return this.zzeuf;
        }

        public void setConfigPreset(@CastRemoteDisplay.Configuration int i) {
            this.zzeuf = i;
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    class zza extends Binder {
        zza() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class zzb extends BroadcastReceiver {
        private zzb() {
        }

        /* synthetic */ zzb(zzu zzuVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT")) {
                CastRemoteDisplayLocalService.stopService();
            } else if (intent.getAction().equals("com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED")) {
                CastRemoteDisplayLocalService.zzax(false);
            }
        }
    }

    public static CastRemoteDisplayLocalService getInstance() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        synchronized (zzeuu) {
            castRemoteDisplayLocalService = zzevi;
        }
        return castRemoteDisplayLocalService;
    }

    protected static void setDebugEnabled() {
        zzeus.zzbh(true);
    }

    public static void startService(Context context, Class<? extends CastRemoteDisplayLocalService> cls, String str, CastDevice castDevice, NotificationSettings notificationSettings, Callbacks callbacks) {
        startServiceWithOptions(context, cls, str, castDevice, new Options(), notificationSettings, callbacks);
    }

    public static void startServiceWithOptions(@NonNull Context context, @NonNull Class<? extends CastRemoteDisplayLocalService> cls, @NonNull String str, @NonNull CastDevice castDevice, @NonNull Options options, @NonNull NotificationSettings notificationSettings, @NonNull Callbacks callbacks) {
        zzeus.zzb("Starting Service", new Object[0]);
        synchronized (zzeuu) {
            if (zzevi != null) {
                zzeus.zzf("An existing service had not been stopped before starting one", new Object[0]);
                zzax(true);
            }
        }
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 128);
            if (serviceInfo != null && serviceInfo.exported) {
                throw new IllegalStateException("The service must not be exported, verify the manifest configuration");
            }
            zzbq.checkNotNull(context, "activityContext is required.");
            zzbq.checkNotNull(cls, "serviceClass is required.");
            zzbq.checkNotNull(str, "applicationId is required.");
            zzbq.checkNotNull(castDevice, "device is required.");
            zzbq.checkNotNull(options, "options is required.");
            zzbq.checkNotNull(notificationSettings, "notificationSettings is required.");
            zzbq.checkNotNull(callbacks, "callbacks is required.");
            if (notificationSettings.mNotification == null && notificationSettings.zzevr == null) {
                throw new IllegalArgumentException("notificationSettings: Either the notification or the notificationPendingIntent must be provided");
            }
            if (zzeuv.getAndSet(true)) {
                zzeus.zzc("Service is already being started, startService has been called twice", new Object[0]);
                return;
            }
            Intent intent = new Intent(context, cls);
            context.startService(intent);
            context.bindService(intent, new zzw(str, castDevice, options, notificationSettings, context, callbacks), 64);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new IllegalStateException("Service not found, did you forget to configure it in the manifest?");
        }
    }

    public static void stopService() {
        zzax(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Context zza(CastRemoteDisplayLocalService castRemoteDisplayLocalService, Context context) {
        castRemoteDisplayLocalService.zzevc = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ ServiceConnection zza(CastRemoteDisplayLocalService castRemoteDisplayLocalService, ServiceConnection serviceConnection) {
        castRemoteDisplayLocalService.zzevd = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Display display) {
        this.zzdmh = display;
        if (this.zzeuz) {
            this.mNotification = zzay(true);
            startForeground(zzeut, this.mNotification);
        }
        if (this.zzeuw.get() != null) {
            this.zzeuw.get().onRemoteDisplaySessionStarted(this);
        }
        onCreatePresentation(this.zzdmh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(NotificationSettings notificationSettings) {
        zzbq.zzgn("updateNotificationSettingsInternal must be called on the main thread");
        if (this.zzeuy == null) {
            throw new IllegalStateException("No current notification settings to update");
        }
        if (!this.zzeuz) {
            zzbq.checkNotNull(notificationSettings.mNotification, "notification is required.");
            this.mNotification = notificationSettings.mNotification;
            this.zzeuy.mNotification = this.mNotification;
        } else {
            if (notificationSettings.mNotification != null) {
                throw new IllegalStateException("Current mode is default notification, notification attribute must not be provided");
            }
            if (notificationSettings.zzevr != null) {
                this.zzeuy.zzevr = notificationSettings.zzevr;
            }
            if (!TextUtils.isEmpty(notificationSettings.zzevs)) {
                this.zzeuy.zzevs = notificationSettings.zzevs;
            }
            if (!TextUtils.isEmpty(notificationSettings.zzevt)) {
                this.zzeuy.zzevt = notificationSettings.zzevt;
            }
            this.mNotification = zzay(true);
        }
        startForeground(zzeut, this.mNotification);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zza(String str, CastDevice castDevice, Options options, NotificationSettings notificationSettings, Context context, ServiceConnection serviceConnection, Callbacks callbacks) {
        Notification notification;
        zzeb("startRemoteDisplaySession");
        zzbq.zzgn("Starting the Cast Remote Display must be done on the main thread");
        synchronized (zzeuu) {
            if (zzevi != null) {
                zzeus.zzf("An existing service had not been stopped before starting one", new Object[0]);
                return false;
            }
            zzevi = this;
            this.zzeuw = new WeakReference<>(callbacks);
            this.zzetb = str;
            this.zzevb = castDevice;
            this.zzevc = context;
            this.zzevd = serviceConnection;
            if (this.zzeve == null) {
                this.zzeve = MediaRouter.getInstance(getApplicationContext());
            }
            MediaRouteSelector build = new MediaRouteSelector.Builder().addControlCategory(CastMediaControlIntent.categoryForCast(this.zzetb)).build();
            zzeb("addMediaRouterCallback");
            this.zzeve.addCallback(build, this.zzevh, 4);
            this.mNotification = notificationSettings.mNotification;
            zzu zzuVar = null;
            this.zzeux = new zzb(zzuVar);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT");
            intentFilter.addAction("com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED");
            registerReceiver(this.zzeux, intentFilter);
            this.zzeuy = new NotificationSettings(notificationSettings, zzuVar);
            if (this.zzeuy.mNotification == null) {
                this.zzeuz = true;
                notification = zzay(false);
            } else {
                this.zzeuz = false;
                notification = this.zzeuy.mNotification;
            }
            this.mNotification = notification;
            startForeground(zzeut, this.mNotification);
            zzeb("startRemoteDisplay");
            Intent intent = new Intent("com.google.android.gms.cast.remote_display.ACTION_SESSION_ENDED");
            intent.setPackage(this.zzevc.getPackageName());
            this.zzevg.startRemoteDisplay(castDevice, this.zzetb, options.getConfigPreset(), PendingIntent.getBroadcast(this, 0, intent, 0)).addOnCompleteListener(new zzz(this));
            if (this.zzeuw.get() != null) {
                this.zzeuw.get().onServiceCreated(this);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzadp() {
        if (this.zzeuw.get() != null) {
            this.zzeuw.get().onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_CREATION_FAILED));
        }
        stopService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaw(boolean z) {
        zzeb("Stopping Service");
        zzbq.zzgn("stopServiceInstanceInternal must be called on the main thread");
        if (!z && this.zzeve != null) {
            zzeb("Setting default route");
            this.zzeve.selectRoute(this.zzeve.getDefaultRoute());
        }
        if (this.zzeux != null) {
            zzeb("Unregistering notification receiver");
            unregisterReceiver(this.zzeux);
        }
        zzeb("stopRemoteDisplaySession");
        zzeb("stopRemoteDisplay");
        this.zzevg.stopRemoteDisplay().addOnCompleteListener(new zzaa(this));
        if (this.zzeuw.get() != null) {
            this.zzeuw.get().onRemoteDisplaySessionEnded(this);
        }
        onDismissPresentation();
        zzeb("Stopping the remote display Service");
        stopForeground(true);
        stopSelf();
        if (this.zzeve != null) {
            zzbq.zzgn("CastRemoteDisplayLocalService calls must be done on the main thread");
            zzeb("removeMediaRouterCallback");
            this.zzeve.removeCallback(this.zzevh);
        }
        if (this.zzevc != null && this.zzevd != null) {
            try {
                this.zzevc.unbindService(this.zzevd);
            } catch (IllegalArgumentException unused) {
                zzeb("No need to unbind service, already unbound");
            }
            this.zzevd = null;
            this.zzevc = null;
        }
        this.zzetb = null;
        this.mNotification = null;
        this.zzdmh = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzax(boolean z) {
        zzeus.zzb("Stopping Service", new Object[0]);
        zzeuv.set(false);
        synchronized (zzeuu) {
            if (zzevi == null) {
                zzeus.zzc("Service is already being stopped", new Object[0]);
                return;
            }
            CastRemoteDisplayLocalService castRemoteDisplayLocalService = zzevi;
            zzevi = null;
            if (castRemoteDisplayLocalService.mHandler != null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    castRemoteDisplayLocalService.mHandler.post(new zzx(castRemoteDisplayLocalService, z));
                } else {
                    castRemoteDisplayLocalService.zzaw(z);
                }
            }
        }
    }

    private final Notification zzay(boolean z) {
        int i;
        int i2;
        zzeb("createDefaultNotification");
        String str = this.zzeuy.zzevs;
        String str2 = this.zzeuy.zzevt;
        if (z) {
            i = com.google.android.gms.R.string.cast_notification_connected_message;
            i2 = com.google.android.gms.R.drawable.cast_ic_notification_on;
        } else {
            i = com.google.android.gms.R.string.cast_notification_connecting_message;
            i2 = com.google.android.gms.R.drawable.cast_ic_notification_connecting;
        }
        if (TextUtils.isEmpty(str)) {
            str = (String) getPackageManager().getApplicationLabel(getApplicationInfo());
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = getString(i, new Object[]{this.zzevb.getFriendlyName()});
        }
        NotificationCompat.Builder ongoing = new NotificationCompat.Builder(this, "cast_remote_display_local_service").setContentTitle(str).setContentText(str2).setContentIntent(this.zzeuy.zzevr).setSmallIcon(i2).setOngoing(true);
        String string = getString(com.google.android.gms.R.string.cast_notification_disconnect);
        if (this.zzeva == null) {
            Intent intent = new Intent("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT");
            intent.setPackage(this.zzevc.getPackageName());
            this.zzeva = PendingIntent.getBroadcast(this, 0, intent, 134217728);
        }
        return ongoing.addAction(android.R.drawable.ic_menu_close_clear_cancel, string, this.zzeva).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Display zzb(CastRemoteDisplayLocalService castRemoteDisplayLocalService, Display display) {
        castRemoteDisplayLocalService.zzdmh = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzeb(String str) {
        zzeus.zzb("[Instance: %s] %s", this, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzee(String str) {
        zzeus.zzc("[Instance: %s] %s", this, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContextWrapper, android.content.Context
    public Display getDisplay() {
        return this.zzdmh;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        zzeb("onBind");
        return this.zzevj;
    }

    @Override // android.app.Service
    public void onCreate() {
        zzeb("onCreate");
        super.onCreate();
        this.mHandler = new Handler(getMainLooper());
        this.mHandler.postDelayed(new zzv(this), 100L);
        if (this.zzevg == null) {
            this.zzevg = CastRemoteDisplay.getClient(this);
        }
        if (com.google.android.gms.common.util.zzs.isAtLeastO()) {
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            NotificationChannel notificationChannel = new NotificationChannel("cast_remote_display_local_service", getString(com.google.android.gms.R.string.cast_notification_default_channel_name), 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    public abstract void onCreatePresentation(Display display);

    public abstract void onDismissPresentation();

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        zzeb("onStartCommand");
        this.zzevf = true;
        return 2;
    }

    public void updateNotificationSettings(NotificationSettings notificationSettings) {
        zzbq.checkNotNull(notificationSettings, "notificationSettings is required.");
        zzbq.checkNotNull(this.mHandler, "Service is not ready yet.");
        this.mHandler.post(new zzy(this, notificationSettings));
    }
}
