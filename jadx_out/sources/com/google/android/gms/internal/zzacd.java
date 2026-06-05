package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;

@zzabh
/* loaded from: classes.dex */
public final class zzacd extends zzabz implements com.google.android.gms.common.internal.zzf, com.google.android.gms.common.internal.zzg {
    private Context mContext;
    private final Object mLock;
    private zzala zzapq;
    private zzamf<zzacf> zzcro;
    private final zzabx zzcrp;
    private zzace zzcrs;

    public zzacd(Context context, zzala zzalaVar, zzamf<zzacf> zzamfVar, zzabx zzabxVar) {
        super(zzamfVar, zzabxVar);
        this.mLock = new Object();
        this.mContext = context;
        this.zzapq = zzalaVar;
        this.zzcro = zzamfVar;
        this.zzcrp = zzabxVar;
        this.zzcrs = new zzace(context, ((Boolean) zzlc.zzio().zzd(zzoi.zzbmw)).booleanValue() ? com.google.android.gms.ads.internal.zzbt.zzfa().zzrt() : context.getMainLooper(), this, this, this.zzapq.zzdja);
        this.zzcrs.zzals();
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnected(Bundle bundle) {
        zzns();
    }

    @Override // com.google.android.gms.common.internal.zzg
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzahw.zzby("Cannot connect to remote service, fallback to local instance.");
        new zzacc(this.mContext, this.zzcro, this.zzcrp).zzns();
        Bundle bundle = new Bundle();
        bundle.putString("action", "gms_connection_failed_fallback_to_local");
        com.google.android.gms.ads.internal.zzbt.zzel().zzb(this.mContext, this.zzapq.zzcu, "gmob-apps", bundle, true);
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnectionSuspended(int i) {
        zzahw.zzby("Disconnected from remote ad request service.");
    }

    @Override // com.google.android.gms.internal.zzabz
    public final void zzny() {
        synchronized (this.mLock) {
            if (this.zzcrs.isConnected() || this.zzcrs.isConnecting()) {
                this.zzcrs.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.internal.zzabz
    public final zzacn zznz() {
        zzacn zzoa;
        synchronized (this.mLock) {
            try {
                try {
                    zzoa = this.zzcrs.zzoa();
                } catch (DeadObjectException | IllegalStateException unused) {
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzoa;
    }
}
