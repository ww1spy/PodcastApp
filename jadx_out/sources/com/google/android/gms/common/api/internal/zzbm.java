package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArraySet;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@Hide
/* loaded from: classes.dex */
public final class zzbm implements Handler.Callback {
    private static zzbm zzfzj;
    private final Context mContext;
    private final Handler mHandler;
    private final GoogleApiAvailability zzftg;
    public static final Status zzfzg = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zzfzh = new Status(4, "The user must be signed in to make this API call.");
    private static final Object sLock = new Object();
    private long zzfyg = 5000;
    private long zzfyf = 120000;
    private long zzfzi = 10000;
    private int zzfzk = -1;
    private final AtomicInteger zzfzl = new AtomicInteger(1);
    private final AtomicInteger zzfzm = new AtomicInteger(0);
    private final Map<zzh<?>, zzbo<?>> zzfwg = new ConcurrentHashMap(5, 0.75f, 1);
    private zzah zzfzn = null;
    private final Set<zzh<?>> zzfzo = new ArraySet();
    private final Set<zzh<?>> zzfzp = new ArraySet();

    private zzbm(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.mContext = context;
        this.mHandler = new Handler(looper, this);
        this.zzftg = googleApiAvailability;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6));
    }

    public static zzbm zzajy() {
        zzbm zzbmVar;
        synchronized (sLock) {
            com.google.android.gms.common.internal.zzbq.checkNotNull(zzfzj, "Must guarantee manager is non-null before using getInstance");
            zzbmVar = zzfzj;
        }
        return zzbmVar;
    }

    public static void zzajz() {
        synchronized (sLock) {
            if (zzfzj != null) {
                zzbm zzbmVar = zzfzj;
                zzbmVar.zzfzm.incrementAndGet();
                zzbmVar.mHandler.sendMessageAtFrontOfQueue(zzbmVar.mHandler.obtainMessage(10));
            }
        }
    }

    @WorkerThread
    private final void zzakb() {
        Iterator<zzh<?>> it = this.zzfzp.iterator();
        while (it.hasNext()) {
            this.zzfwg.remove(it.next()).signOut();
        }
        this.zzfzp.clear();
    }

    @WorkerThread
    private final void zzb(GoogleApi<?> googleApi) {
        zzh<?> zzahv = googleApi.zzahv();
        zzbo<?> zzboVar = this.zzfwg.get(zzahv);
        if (zzboVar == null) {
            zzboVar = new zzbo<>(this, googleApi);
            this.zzfwg.put(zzahv, zzboVar);
        }
        if (zzboVar.zzacc()) {
            this.zzfzp.add(zzahv);
        }
        zzboVar.connect();
    }

    public static zzbm zzck(Context context) {
        zzbm zzbmVar;
        synchronized (sLock) {
            if (zzfzj == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                zzfzj = new zzbm(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            zzbmVar = zzfzj;
        }
        return zzbmVar;
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(Message message) {
        zzbo<?> zzboVar;
        switch (message.what) {
            case 1:
                this.zzfzi = ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.mHandler.removeMessages(12);
                Iterator<zzh<?>> it = this.zzfwg.keySet().iterator();
                while (it.hasNext()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(12, it.next()), this.zzfzi);
                }
                return true;
            case 2:
                zzj zzjVar = (zzj) message.obj;
                for (zzh<?> zzhVar : zzjVar.zzaii()) {
                    zzbo<?> zzboVar2 = this.zzfwg.get(zzhVar);
                    if (zzboVar2 == null) {
                        zzjVar.zza(zzhVar, new ConnectionResult(13), null);
                        return true;
                    }
                    if (zzboVar2.isConnected()) {
                        zzjVar.zza(zzhVar, ConnectionResult.zzfqt, zzboVar2.zzaix().zzahp());
                    } else if (zzboVar2.zzakj() != null) {
                        zzjVar.zza(zzhVar, zzboVar2.zzakj(), null);
                    } else {
                        zzboVar2.zza(zzjVar);
                    }
                }
                return true;
            case 3:
                for (zzbo<?> zzboVar3 : this.zzfwg.values()) {
                    zzboVar3.zzaki();
                    zzboVar3.connect();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zzcp zzcpVar = (zzcp) message.obj;
                zzbo<?> zzboVar4 = this.zzfwg.get(zzcpVar.zzgba.zzahv());
                if (zzboVar4 == null) {
                    zzb(zzcpVar.zzgba);
                    zzboVar4 = this.zzfwg.get(zzcpVar.zzgba.zzahv());
                }
                if (!zzboVar4.zzacc() || this.zzfzm.get() == zzcpVar.zzgaz) {
                    zzboVar4.zza(zzcpVar.zzgay);
                    return true;
                }
                zzcpVar.zzgay.zzs(zzfzg);
                zzboVar4.signOut();
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zzbo<?>> it2 = this.zzfwg.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zzboVar = it2.next();
                        if (zzboVar.getInstanceId() == i) {
                        }
                    } else {
                        zzboVar = null;
                    }
                }
                if (zzboVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    sb.append("Could not find API instance ");
                    sb.append(i);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                    return true;
                }
                String errorString = this.zzftg.getErrorString(connectionResult.getErrorCode());
                String errorMessage = connectionResult.getErrorMessage();
                StringBuilder sb2 = new StringBuilder(69 + String.valueOf(errorString).length() + String.valueOf(errorMessage).length());
                sb2.append("Error resolution was canceled by the user, original error message: ");
                sb2.append(errorString);
                sb2.append(": ");
                sb2.append(errorMessage);
                zzboVar.zzw(new Status(17, sb2.toString()));
                return true;
            case 6:
                if (this.mContext.getApplicationContext() instanceof Application) {
                    zzk.zza((Application) this.mContext.getApplicationContext());
                    zzk.zzaij().zza(new zzbn(this));
                    if (!zzk.zzaij().zzbi(true)) {
                        this.zzfzi = 300000L;
                        return true;
                    }
                }
                return true;
            case 7:
                zzb((GoogleApi<?>) message.obj);
                return true;
            case 9:
                if (this.zzfwg.containsKey(message.obj)) {
                    this.zzfwg.get(message.obj).resume();
                    return true;
                }
                return true;
            case 10:
                zzakb();
                return true;
            case 11:
                if (this.zzfwg.containsKey(message.obj)) {
                    this.zzfwg.get(message.obj).zzajr();
                    return true;
                }
                return true;
            case 12:
                if (this.zzfwg.containsKey(message.obj)) {
                    this.zzfwg.get(message.obj).zzakm();
                    return true;
                }
                return true;
            default:
                int i2 = message.what;
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PendingIntent zza(zzh<?> zzhVar, int i) {
        zzcyj zzakn;
        zzbo<?> zzboVar = this.zzfwg.get(zzhVar);
        if (zzboVar == null || (zzakn = zzboVar.zzakn()) == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, i, zzakn.getSignInIntent(), 134217728);
    }

    public final <O extends Api.ApiOptions> Task<Boolean> zza(@NonNull GoogleApi<O> googleApi, @NonNull zzck<?> zzckVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(13, new zzcp(new zzf(zzckVar, taskCompletionSource), this.zzfzm.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> Task<Void> zza(@NonNull GoogleApi<O> googleApi, @NonNull zzcq<Api.zzb, ?> zzcqVar, @NonNull zzdo<Api.zzb, ?> zzdoVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(8, new zzcp(new zzd(new zzcr(zzcqVar, zzdoVar), taskCompletionSource), this.zzfzm.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final Task<Map<zzh<?>, String>> zza(Iterable<? extends GoogleApi<?>> iterable) {
        zzj zzjVar = new zzj(iterable);
        for (GoogleApi<?> googleApi : iterable) {
            zzbo<?> zzboVar = this.zzfwg.get(googleApi.zzahv());
            if (zzboVar == null || !zzboVar.isConnected()) {
                this.mHandler.sendMessage(this.mHandler.obtainMessage(2, zzjVar));
                return zzjVar.getTask();
            }
            zzjVar.zza(googleApi.zzahv(), ConnectionResult.zzfqt, zzboVar.zzaix().zzahp());
        }
        return zzjVar.getTask();
    }

    public final void zza(ConnectionResult connectionResult, int i) {
        if (zzc(connectionResult, i)) {
            return;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i, 0, connectionResult));
    }

    public final void zza(GoogleApi<?> googleApi) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, googleApi));
    }

    public final <O extends Api.ApiOptions, TResult> void zza(GoogleApi<O> googleApi, int i, zzde<Api.zzb, TResult> zzdeVar, TaskCompletionSource<TResult> taskCompletionSource, zzda zzdaVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzcp(new zze(i, zzdeVar, taskCompletionSource, zzdaVar), this.zzfzm.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions> void zza(GoogleApi<O> googleApi, int i, zzm<? extends Result, Api.zzb> zzmVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzcp(new zzc(i, zzmVar), this.zzfzm.get(), googleApi)));
    }

    public final void zza(@NonNull zzah zzahVar) {
        synchronized (sLock) {
            if (this.zzfzn != zzahVar) {
                this.zzfzn = zzahVar;
                this.zzfzo.clear();
                this.zzfzo.addAll(zzahVar.zzajf());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzaia() {
        this.zzfzm.incrementAndGet();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(10));
    }

    public final void zzaih() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
    }

    public final int zzaka() {
        return this.zzfzl.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(@NonNull zzah zzahVar) {
        synchronized (sLock) {
            if (this.zzfzn == zzahVar) {
                this.zzfzn = null;
                this.zzfzo.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzc(ConnectionResult connectionResult, int i) {
        return this.zzftg.zza(this.mContext, connectionResult, i);
    }
}
