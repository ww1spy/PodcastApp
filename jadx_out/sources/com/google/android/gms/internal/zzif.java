package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzif {

    @Nullable
    private Context mContext;

    @Nullable
    private zzim zzbaw;

    @Nullable
    private zziq zzbax;
    private final Runnable zzbav = new zzig(this);
    private final Object mLock = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public final void connect() {
        synchronized (this.mLock) {
            if (this.mContext != null && this.zzbaw == null) {
                this.zzbaw = new zzim(this.mContext, com.google.android.gms.ads.internal.zzbt.zzfa().zzrt(), new zzii(this), new zzij(this));
                this.zzbaw.zzals();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.mLock) {
            if (this.zzbaw == null) {
                return;
            }
            if (this.zzbaw.isConnected() || this.zzbaw.isConnecting()) {
                this.zzbaw.disconnect();
            }
            this.zzbaw = null;
            this.zzbax = null;
            Binder.flushPendingCommands();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzim zza(zzif zzifVar, zzim zzimVar) {
        zzifVar.zzbaw = null;
        return null;
    }

    public final void initialize(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.mLock) {
            if (this.mContext != null) {
                return;
            }
            this.mContext = context.getApplicationContext();
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbue)).booleanValue()) {
                connect();
            } else {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbud)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzbt.zzeo().zza(new zzih(this));
                }
            }
        }
    }

    public final zzik zza(zzin zzinVar) {
        synchronized (this.mLock) {
            if (this.zzbax == null) {
                return new zzik();
            }
            try {
                return this.zzbax.zza(zzinVar);
            } catch (RemoteException e) {
                zzahw.zzb("Unable to call into cache service.", e);
                return new zzik();
            }
        }
    }

    public final void zzhi() {
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbuf)).booleanValue()) {
            synchronized (this.mLock) {
                connect();
                com.google.android.gms.ads.internal.zzbt.zzel();
                zzaij.zzdfn.removeCallbacks(this.zzbav);
                com.google.android.gms.ads.internal.zzbt.zzel();
                zzaij.zzdfn.postDelayed(this.zzbav, ((Long) zzlc.zzio().zzd(zzoi.zzbug)).longValue());
            }
        }
    }
}
