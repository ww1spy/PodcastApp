package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzbo<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zzu {
    private final zzh<O> zzfsn;
    private final Api.zze zzfwd;
    private boolean zzfye;
    final /* synthetic */ zzbm zzfzq;
    private final Api.zzb zzfzs;
    private final zzae zzfzt;
    private final int zzfzw;
    private final zzcv zzfzx;
    private final Queue<zza> zzfzr = new LinkedList();
    private final Set<zzj> zzfzu = new HashSet();
    private final Map<zzck<?>, zzcr> zzfzv = new HashMap();
    private int zzfzy = -1;
    private ConnectionResult zzfzz = null;

    @WorkerThread
    public zzbo(zzbm zzbmVar, GoogleApi<O> googleApi) {
        Handler handler;
        Context context;
        Handler handler2;
        this.zzfzq = zzbmVar;
        handler = zzbmVar.mHandler;
        this.zzfwd = googleApi.zza(handler.getLooper(), this);
        this.zzfzs = this.zzfwd instanceof com.google.android.gms.common.internal.zzbz ? com.google.android.gms.common.internal.zzbz.zzanb() : this.zzfwd;
        this.zzfsn = googleApi.zzahv();
        this.zzfzt = new zzae();
        this.zzfzw = googleApi.getInstanceId();
        if (!this.zzfwd.zzacc()) {
            this.zzfzx = null;
            return;
        }
        context = zzbmVar.mContext;
        handler2 = zzbmVar.mHandler;
        this.zzfzx = googleApi.zza(context, handler2);
    }

    private final void zzake() {
        this.zzfzy = -1;
        this.zzfzq.zzfzk = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzakf() {
        zzaki();
        zzi(ConnectionResult.zzfqt);
        zzakk();
        Iterator<zzcr> it = this.zzfzv.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().zzfty.zzb(this.zzfzs, new TaskCompletionSource<>());
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                this.zzfwd.disconnect();
            } catch (RemoteException unused2) {
            }
        }
        while (this.zzfwd.isConnected() && !this.zzfzr.isEmpty()) {
            zzb(this.zzfzr.remove());
        }
        zzakl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzakg() {
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        zzaki();
        this.zzfye = true;
        this.zzfzt.zzaje();
        handler = this.zzfzq.mHandler;
        handler2 = this.zzfzq.mHandler;
        Message obtain = Message.obtain(handler2, 9, this.zzfsn);
        j = this.zzfzq.zzfyg;
        handler.sendMessageDelayed(obtain, j);
        handler3 = this.zzfzq.mHandler;
        handler4 = this.zzfzq.mHandler;
        Message obtain2 = Message.obtain(handler4, 11, this.zzfsn);
        j2 = this.zzfzq.zzfyf;
        handler3.sendMessageDelayed(obtain2, j2);
        zzake();
    }

    @WorkerThread
    private final void zzakk() {
        Handler handler;
        Handler handler2;
        if (this.zzfye) {
            handler = this.zzfzq.mHandler;
            handler.removeMessages(11, this.zzfsn);
            handler2 = this.zzfzq.mHandler;
            handler2.removeMessages(9, this.zzfsn);
            this.zzfye = false;
        }
    }

    private final void zzakl() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        handler = this.zzfzq.mHandler;
        handler.removeMessages(12, this.zzfsn);
        handler2 = this.zzfzq.mHandler;
        handler3 = this.zzfzq.mHandler;
        Message obtainMessage = handler3.obtainMessage(12, this.zzfsn);
        j = this.zzfzq.zzfzi;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    @WorkerThread
    private final void zzb(zza zzaVar) {
        zzaVar.zza(this.zzfzt, zzacc());
        try {
            zzaVar.zza((zzbo<?>) this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.zzfwd.disconnect();
        }
    }

    @WorkerThread
    private final void zzi(ConnectionResult connectionResult) {
        for (zzj zzjVar : this.zzfzu) {
            String str = null;
            if (connectionResult == ConnectionResult.zzfqt) {
                str = this.zzfwd.zzahp();
            }
            zzjVar.zza(this.zzfsn, connectionResult, str);
        }
        this.zzfzu.clear();
    }

    @WorkerThread
    public final void connect() {
        Handler handler;
        int i;
        Context context;
        GoogleApiAvailability unused;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        if (this.zzfwd.isConnected() || this.zzfwd.isConnecting()) {
            return;
        }
        if (this.zzfwd.zzahn()) {
            this.zzfwd.zzahq();
            i = this.zzfzq.zzfzk;
            if (i != 0) {
                unused = this.zzfzq.zzftg;
                context = this.zzfzq.mContext;
                int zzc = GoogleApiAvailability.zzc(context, this.zzfwd.zzahq());
                this.zzfwd.zzahq();
                this.zzfzq.zzfzk = zzc;
                if (zzc != 0) {
                    onConnectionFailed(new ConnectionResult(zzc, null));
                    return;
                }
            }
        }
        zzbu zzbuVar = new zzbu(this.zzfzq, this.zzfwd, this.zzfsn);
        if (this.zzfwd.zzacc()) {
            this.zzfzx.zza(zzbuVar);
        }
        this.zzfwd.zza(zzbuVar);
    }

    public final int getInstanceId() {
        return this.zzfzw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isConnected() {
        return this.zzfwd.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.zzfzq.mHandler;
        if (myLooper == handler.getLooper()) {
            zzakf();
        } else {
            handler2 = this.zzfzq.mHandler;
            handler2.post(new zzbp(this));
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        Object obj;
        zzah zzahVar;
        Handler handler2;
        Handler handler3;
        long j;
        Set set;
        zzah zzahVar2;
        Status status;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        if (this.zzfzx != null) {
            this.zzfzx.zzakz();
        }
        zzaki();
        zzake();
        zzi(connectionResult);
        if (connectionResult.getErrorCode() == 4) {
            status = zzbm.zzfzh;
            zzw(status);
            return;
        }
        if (this.zzfzr.isEmpty()) {
            this.zzfzz = connectionResult;
            return;
        }
        obj = zzbm.sLock;
        synchronized (obj) {
            zzahVar = this.zzfzq.zzfzn;
            if (zzahVar != null) {
                set = this.zzfzq.zzfzo;
                if (set.contains(this.zzfsn)) {
                    zzahVar2 = this.zzfzq.zzfzn;
                    zzahVar2.zzb(connectionResult, this.zzfzw);
                    return;
                }
            }
            if (this.zzfzq.zzc(connectionResult, this.zzfzw)) {
                return;
            }
            if (connectionResult.getErrorCode() == 18) {
                this.zzfye = true;
            }
            if (this.zzfye) {
                handler2 = this.zzfzq.mHandler;
                handler3 = this.zzfzq.mHandler;
                Message obtain = Message.obtain(handler3, 9, this.zzfsn);
                j = this.zzfzq.zzfyg;
                handler2.sendMessageDelayed(obtain, j);
                return;
            }
            String zzaig = this.zzfsn.zzaig();
            StringBuilder sb = new StringBuilder(38 + String.valueOf(zzaig).length());
            sb.append("API: ");
            sb.append(zzaig);
            sb.append(" is not available on this device.");
            zzw(new Status(17, sb.toString()));
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.zzfzq.mHandler;
        if (myLooper == handler.getLooper()) {
            zzakg();
        } else {
            handler2 = this.zzfzq.mHandler;
            handler2.post(new zzbq(this));
        }
    }

    @WorkerThread
    public final void resume() {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        if (this.zzfye) {
            connect();
        }
    }

    @WorkerThread
    public final void signOut() {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        zzw(zzbm.zzfzg);
        this.zzfzt.zzajd();
        for (zzck zzckVar : (zzck[]) this.zzfzv.keySet().toArray(new zzck[this.zzfzv.size()])) {
            zza(new zzf(zzckVar, new TaskCompletionSource()));
        }
        zzi(new ConnectionResult(4));
        if (this.zzfwd.isConnected()) {
            this.zzfwd.zza(new zzbs(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzu
    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.zzfzq.mHandler;
        if (myLooper == handler.getLooper()) {
            onConnectionFailed(connectionResult);
        } else {
            handler2 = this.zzfzq.mHandler;
            handler2.post(new zzbr(this, connectionResult));
        }
    }

    @WorkerThread
    public final void zza(zza zzaVar) {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        if (this.zzfwd.isConnected()) {
            zzb(zzaVar);
            zzakl();
            return;
        }
        this.zzfzr.add(zzaVar);
        if (this.zzfzz == null || !this.zzfzz.hasResolution()) {
            connect();
        } else {
            onConnectionFailed(this.zzfzz);
        }
    }

    @WorkerThread
    public final void zza(zzj zzjVar) {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        this.zzfzu.add(zzjVar);
    }

    public final boolean zzacc() {
        return this.zzfwd.zzacc();
    }

    public final Api.zze zzaix() {
        return this.zzfwd;
    }

    @WorkerThread
    public final void zzajr() {
        Handler handler;
        GoogleApiAvailability googleApiAvailability;
        Context context;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        if (this.zzfye) {
            zzakk();
            googleApiAvailability = this.zzfzq.zzftg;
            context = this.zzfzq.mContext;
            zzw(googleApiAvailability.isGooglePlayServicesAvailable(context) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
            this.zzfwd.disconnect();
        }
    }

    public final Map<zzck<?>, zzcr> zzakh() {
        return this.zzfzv;
    }

    @WorkerThread
    public final void zzaki() {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        this.zzfzz = null;
    }

    @WorkerThread
    public final ConnectionResult zzakj() {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        return this.zzfzz;
    }

    @WorkerThread
    public final void zzakm() {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        if (this.zzfwd.isConnected() && this.zzfzv.size() == 0) {
            if (this.zzfzt.zzajc()) {
                zzakl();
            } else {
                this.zzfwd.disconnect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcyj zzakn() {
        if (this.zzfzx == null) {
            return null;
        }
        return this.zzfzx.zzakn();
    }

    @WorkerThread
    public final void zzh(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        this.zzfwd.disconnect();
        onConnectionFailed(connectionResult);
    }

    @WorkerThread
    public final void zzw(Status status) {
        Handler handler;
        handler = this.zzfzq.mHandler;
        com.google.android.gms.common.internal.zzbq.zza(handler);
        Iterator<zza> it = this.zzfzr.iterator();
        while (it.hasNext()) {
            it.next().zzs(status);
        }
        this.zzfzr.clear();
    }
}
