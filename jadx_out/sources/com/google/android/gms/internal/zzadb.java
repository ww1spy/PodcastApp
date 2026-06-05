package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzadb implements Runnable {
    private /* synthetic */ zzahe zzant;
    private /* synthetic */ zzada zzcve;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadb(zzada zzadaVar, zzahe zzaheVar) {
        this.zzcve = zzadaVar;
        this.zzant = zzaheVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzabj zzabjVar;
        com.google.android.gms.ads.internal.js.zzaa zzaaVar;
        com.google.android.gms.ads.internal.js.zzaa zzaaVar2;
        zzabjVar = this.zzcve.zzcre;
        zzabjVar.zza(this.zzant);
        zzaaVar = this.zzcve.zzcvd;
        if (zzaaVar != null) {
            zzaaVar2 = this.zzcve.zzcvd;
            zzaaVar2.release();
            this.zzcve.zzcvd = null;
        }
    }
}
