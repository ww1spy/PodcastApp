package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcdb implements com.google.android.gms.common.internal.zzf, com.google.android.gms.common.internal.zzg {
    private final String packageName;
    private zzcdc zzijb;
    private final String zzijc;
    private final LinkedBlockingQueue<zzba> zzijd;
    private final HandlerThread zzije = new HandlerThread("GassClient");

    public zzcdb(Context context, String str, String str2) {
        this.packageName = str;
        this.zzijc = str2;
        this.zzije.start();
        this.zzijb = new zzcdc(context, this.zzije.getLooper(), this, this);
        this.zzijd = new LinkedBlockingQueue<>();
        this.zzijb.zzals();
    }

    private final zzcdh zzawa() {
        try {
            return this.zzijb.zzawc();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    private static zzba zzawb() {
        zzba zzbaVar = new zzba();
        zzbaVar.zzds = Long.valueOf(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        return zzbaVar;
    }

    private final void zzny() {
        if (this.zzijb != null) {
            if (this.zzijb.isConnected() || this.zzijb.isConnecting()) {
                this.zzijb.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnected(Bundle bundle) {
        zzcdh zzawa = zzawa();
        try {
            if (zzawa != null) {
                try {
                    try {
                        this.zzijd.put(zzawa.zza(new zzcdd(this.packageName, this.zzijc)).zzawd());
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable unused2) {
                    this.zzijd.put(zzawb());
                }
            }
        } finally {
            zzny();
            this.zzije.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.zzg
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzijd.put(zzawb());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnectionSuspended(int i) {
        try {
            this.zzijd.put(zzawb());
        } catch (InterruptedException unused) {
        }
    }

    public final zzba zzdy(int i) {
        zzba zzbaVar;
        try {
            zzbaVar = this.zzijd.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzbaVar = null;
        }
        return zzbaVar == null ? zzawb() : zzbaVar;
    }
}
