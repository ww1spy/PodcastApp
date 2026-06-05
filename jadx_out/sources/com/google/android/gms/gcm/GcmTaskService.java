package com.google.android.gms.gcm;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.common.util.zzz;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public abstract class GcmTaskService extends Service {
    public static final String SERVICE_ACTION_EXECUTE_TASK = "com.google.android.gms.gcm.ACTION_TASK_READY";
    public static final String SERVICE_ACTION_INITIALIZE = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
    public static final String SERVICE_PERMISSION = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
    private ComponentName componentName;
    private final Object lock = new Object();
    private ExecutorService zzair;
    private int zzijt;
    private Messenger zziju;
    private GcmNetworkManager zzijv;

    @TargetApi(21)
    /* loaded from: classes.dex */
    class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger;
            if (!zzz.zzb(GcmTaskService.this, message.sendingUid, "com.google.android.gms")) {
                Log.e("GcmTaskService", "unable to verify presence of Google Play Services");
                return;
            }
            int i = message.what;
            if (i == 4) {
                GcmTaskService.this.onInitializeTasks();
                return;
            }
            switch (i) {
                case 1:
                    Bundle data = message.getData();
                    if (data.isEmpty() || (messenger = message.replyTo) == null) {
                        return;
                    }
                    String string = data.getString("tag");
                    ArrayList parcelableArrayList = data.getParcelableArrayList("triggered_uris");
                    if (GcmTaskService.this.zzig(string)) {
                        return;
                    }
                    GcmTaskService.this.zza(new zzb(string, messenger, data.getBundle("extras"), parcelableArrayList));
                    return;
                case 2:
                    if (Log.isLoggable("GcmTaskService", 3)) {
                        String valueOf = String.valueOf(message);
                        StringBuilder sb = new StringBuilder(45 + String.valueOf(valueOf).length());
                        sb.append("ignoring unimplemented stop message for now: ");
                        sb.append(valueOf);
                        Log.d("GcmTaskService", sb.toString());
                        return;
                    }
                    return;
                default:
                    String valueOf2 = String.valueOf(message);
                    StringBuilder sb2 = new StringBuilder(31 + String.valueOf(valueOf2).length());
                    sb2.append("Unrecognized message received: ");
                    sb2.append(valueOf2);
                    Log.e("GcmTaskService", sb2.toString());
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class zzb implements Runnable {
        private final Bundle mExtras;

        @Nullable
        private final Messenger mMessenger;
        private final String mTag;
        private final List<Uri> zzijy;

        @Nullable
        private final zzd zzijz;

        zzb(String str, @NonNull IBinder iBinder, Bundle bundle, List<Uri> list) {
            zzd zzeVar;
            this.mTag = str;
            if (iBinder == null) {
                zzeVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gcm.INetworkTaskCallback");
                zzeVar = queryLocalInterface instanceof zzd ? (zzd) queryLocalInterface : new zze(iBinder);
            }
            this.zzijz = zzeVar;
            this.mExtras = bundle;
            this.zzijy = list;
            this.mMessenger = null;
        }

        zzb(String str, @NonNull Messenger messenger, Bundle bundle, List<Uri> list) {
            this.mTag = str;
            this.mMessenger = messenger;
            this.mExtras = bundle;
            this.zzijy = list;
            this.zzijz = null;
        }

        private final boolean zzawg() {
            return this.mMessenger != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzea(int i) {
            GcmTaskService gcmTaskService;
            int i2;
            synchronized (GcmTaskService.this.lock) {
                try {
                    try {
                    } catch (RemoteException unused) {
                        String valueOf = String.valueOf(this.mTag);
                        Log.e("GcmTaskService", valueOf.length() != 0 ? "Error reporting result of operation to scheduler for ".concat(valueOf) : new String("Error reporting result of operation to scheduler for "));
                        GcmTaskService.this.zzijv.zzab(this.mTag, GcmTaskService.this.componentName.getClassName());
                        if (!zzawg() && !GcmTaskService.this.zzijv.zzif(GcmTaskService.this.componentName.getClassName())) {
                            gcmTaskService = GcmTaskService.this;
                            i2 = GcmTaskService.this.zzijt;
                        }
                    }
                    if (GcmTaskService.this.zzijv.zzac(this.mTag, GcmTaskService.this.componentName.getClassName())) {
                        return;
                    }
                    if (zzawg()) {
                        Messenger messenger = this.mMessenger;
                        Message obtain = Message.obtain();
                        obtain.what = 3;
                        obtain.arg1 = i;
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("component", GcmTaskService.this.componentName);
                        bundle.putString("tag", this.mTag);
                        obtain.setData(bundle);
                        messenger.send(obtain);
                    } else {
                        this.zzijz.zzeb(i);
                    }
                    GcmTaskService.this.zzijv.zzab(this.mTag, GcmTaskService.this.componentName.getClassName());
                    if (!zzawg() && !GcmTaskService.this.zzijv.zzif(GcmTaskService.this.componentName.getClassName())) {
                        gcmTaskService = GcmTaskService.this;
                        i2 = GcmTaskService.this.zzijt;
                        gcmTaskService.stopSelf(i2);
                    }
                } finally {
                    GcmTaskService.this.zzijv.zzab(this.mTag, GcmTaskService.this.componentName.getClassName());
                    if (!zzawg() && !GcmTaskService.this.zzijv.zzif(GcmTaskService.this.componentName.getClassName())) {
                        GcmTaskService.this.stopSelf(GcmTaskService.this.zzijt);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            zzea(GcmTaskService.this.onRunTask(new TaskParams(this.mTag, this.mExtras, this.zzijy)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        try {
            this.zzair.execute(zzbVar);
        } catch (RejectedExecutionException e) {
            Log.e("GcmTaskService", "Executor is shutdown. onDestroy was called but main looper had an unprocessed start task message. The task will be retried with backoff delay.", e);
            zzbVar.zzea(1);
        }
    }

    private final void zzdz(int i) {
        synchronized (this.lock) {
            this.zzijt = i;
            if (!this.zzijv.zzif(this.componentName.getClassName())) {
                stopSelf(this.zzijt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Hide
    public final boolean zzig(String str) {
        boolean z;
        synchronized (this.lock) {
            z = !this.zzijv.zzaa(str, this.componentName.getClassName());
            if (z) {
                String packageName = getPackageName();
                StringBuilder sb = new StringBuilder(44 + String.valueOf(packageName).length() + String.valueOf(str).length());
                sb.append(packageName);
                sb.append(" ");
                sb.append(str);
                sb.append(": Task already running, won't start another");
                Log.w("GcmTaskService", sb.toString());
            }
        }
        return z;
    }

    @Override // android.app.Service
    @CallSuper
    public IBinder onBind(Intent intent) {
        if (intent != null && zzs.zzanx() && SERVICE_ACTION_EXECUTE_TASK.equals(intent.getAction())) {
            return this.zziju.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        super.onCreate();
        this.zzijv = GcmNetworkManager.getInstance(this);
        this.zzair = Executors.newFixedThreadPool(2, new com.google.android.gms.gcm.zzb(this));
        this.zziju = new Messenger(new zza(Looper.getMainLooper()));
        this.componentName = new ComponentName(this, getClass());
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        super.onDestroy();
        List<Runnable> shutdownNow = this.zzair.shutdownNow();
        if (shutdownNow.isEmpty()) {
            return;
        }
        int size = shutdownNow.size();
        StringBuilder sb = new StringBuilder(79);
        sb.append("Shutting down, but not all tasks are finished executing. Remaining: ");
        sb.append(size);
        Log.e("GcmTaskService", sb.toString());
    }

    public void onInitializeTasks() {
    }

    public abstract int onRunTask(TaskParams taskParams);

    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 2;
        }
        try {
            intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
            String action = intent.getAction();
            if (SERVICE_ACTION_EXECUTE_TASK.equals(action)) {
                String stringExtra = intent.getStringExtra("tag");
                Parcelable parcelableExtra = intent.getParcelableExtra("callback");
                Bundle bundleExtra = intent.getBundleExtra("extras");
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("triggered_uris");
                if (!(parcelableExtra instanceof PendingCallback)) {
                    String packageName = getPackageName();
                    StringBuilder sb = new StringBuilder(47 + String.valueOf(packageName).length() + String.valueOf(stringExtra).length());
                    sb.append(packageName);
                    sb.append(" ");
                    sb.append(stringExtra);
                    sb.append(": Could not process request, invalid callback.");
                    Log.e("GcmTaskService", sb.toString());
                    return 2;
                }
                if (zzig(stringExtra)) {
                    return 2;
                }
                zza(new zzb(stringExtra, ((PendingCallback) parcelableExtra).zzgfp, bundleExtra, parcelableArrayListExtra));
            } else if (SERVICE_ACTION_INITIALIZE.equals(action)) {
                onInitializeTasks();
            } else {
                StringBuilder sb2 = new StringBuilder(37 + String.valueOf(action).length());
                sb2.append("Unknown action received ");
                sb2.append(action);
                sb2.append(", terminating");
                Log.e("GcmTaskService", sb2.toString());
            }
            return 2;
        } finally {
            zzdz(i2);
        }
    }
}
