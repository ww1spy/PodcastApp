package com.google.android.gms.internal;

import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaso implements Runnable {
    private /* synthetic */ zzasn zzebg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaso(zzasn zzasnVar) {
        this.zzebg = zzasnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzark zzarkVar;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzarkVar = this.zzebg.zzdyp;
            zzarkVar.zzya().zzd(this);
            return;
        }
        boolean zzea = this.zzebg.zzea();
        zzasn.zza(this.zzebg, 0L);
        if (zzea) {
            this.zzebg.run();
        }
    }
}
