package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzadf implements Runnable {
    private /* synthetic */ zzada zzcve;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadf(zzada zzadaVar) {
        this.zzcve = zzadaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.js.zzaa zzaaVar;
        com.google.android.gms.ads.internal.js.zzaa zzaaVar2;
        zzaaVar = this.zzcve.zzcvd;
        if (zzaaVar != null) {
            zzaaVar2 = this.zzcve.zzcvd;
            zzaaVar2.release();
            this.zzcve.zzcvd = null;
        }
    }
}
