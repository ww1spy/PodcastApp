package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Hide;

/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes.dex */
public abstract class zzasn {
    private static volatile Handler zzebe;
    private final zzark zzdyp;
    private volatile long zzebf;
    private final Runnable zzy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasn(zzark zzarkVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarkVar);
        this.zzdyp = zzarkVar;
        this.zzy = new zzaso(this);
    }

    private final Handler getHandler() {
        Handler handler;
        if (zzebe != null) {
            return zzebe;
        }
        synchronized (zzasn.class) {
            if (zzebe == null) {
                zzebe = new Handler(this.zzdyp.getContext().getMainLooper());
            }
            handler = zzebe;
        }
        return handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ long zza(zzasn zzasnVar, long j) {
        zzasnVar.zzebf = 0L;
        return 0L;
    }

    public final void cancel() {
        this.zzebf = 0L;
        getHandler().removeCallbacks(this.zzy);
    }

    public abstract void run();

    public final long zzaag() {
        if (this.zzebf == 0) {
            return 0L;
        }
        return Math.abs(this.zzdyp.zzxx().currentTimeMillis() - this.zzebf);
    }

    public final boolean zzea() {
        return this.zzebf != 0;
    }

    public final void zzs(long j) {
        cancel();
        if (j >= 0) {
            this.zzebf = this.zzdyp.zzxx().currentTimeMillis();
            if (getHandler().postDelayed(this.zzy, j)) {
                return;
            }
            this.zzdyp.zzxy().zze("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final void zzt(long j) {
        if (zzea()) {
            if (j < 0) {
                cancel();
                return;
            }
            long abs = j - Math.abs(this.zzdyp.zzxx().currentTimeMillis() - this.zzebf);
            long j2 = abs >= 0 ? abs : 0L;
            getHandler().removeCallbacks(this.zzy);
            if (getHandler().postDelayed(this.zzy, j2)) {
                return;
            }
            this.zzdyp.zzxy().zze("Failed to adjust delayed post. time", Long.valueOf(j2));
        }
    }
}
