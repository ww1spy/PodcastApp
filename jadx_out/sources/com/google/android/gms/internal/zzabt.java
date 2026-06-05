package com.google.android.gms.internal;

import android.os.Handler;

/* loaded from: classes.dex */
final class zzabt implements Runnable {
    private /* synthetic */ zzabk zzcrm;
    private /* synthetic */ zzamf zzcrn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabt(zzabk zzabkVar, zzamf zzamfVar) {
        this.zzcrm = zzabkVar;
        this.zzcrn = zzamfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        zzacg zzacgVar;
        Runnable runnable;
        obj = this.zzcrm.zzcoe;
        synchronized (obj) {
            zzabk zzabkVar = this.zzcrm;
            zzabk zzabkVar2 = this.zzcrm;
            zzacgVar = this.zzcrm.zzcrf;
            zzabkVar.zzcri = zzabkVar2.zza(zzacgVar.zzatz, this.zzcrn);
            if (this.zzcrm.zzcri == null) {
                this.zzcrm.zzc(0, "Could not start the ad request service.");
                Handler handler = zzaij.zzdfn;
                runnable = this.zzcrm.zzcod;
                handler.removeCallbacks(runnable);
            }
        }
    }
}
