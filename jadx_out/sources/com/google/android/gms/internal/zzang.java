package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzang {
    private long zzdmc;
    private final long zzdmb = TimeUnit.MILLISECONDS.toNanos(((Long) zzlc.zzio().zzd(zzoi.zzbme)).longValue());
    private boolean zzdmd = true;

    public final void zza(SurfaceTexture surfaceTexture, zzamy zzamyVar) {
        if (zzamyVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (this.zzdmd || Math.abs(timestamp - this.zzdmc) >= this.zzdmb) {
            this.zzdmd = false;
            this.zzdmc = timestamp;
            zzaij.zzdfn.post(new zzanh(this, zzamyVar));
        }
    }

    public final void zzsq() {
        this.zzdmd = true;
    }
}
