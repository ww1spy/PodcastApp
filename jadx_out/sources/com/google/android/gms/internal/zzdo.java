package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdo implements Runnable {
    private /* synthetic */ zzdm zzajh;
    private /* synthetic */ int zzaji;
    private /* synthetic */ boolean zzajj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdo(zzdm zzdmVar, int i, boolean z) {
        this.zzajh = zzdmVar;
        this.zzaji = i;
        this.zzajj = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zza;
        zzba zzb = this.zzajh.zzb(this.zzaji, this.zzajj);
        this.zzajh.zzaiy = zzb;
        zza = zzdm.zza(this.zzaji, zzb);
        if (zza) {
            this.zzajh.zza(this.zzaji + 1, this.zzajj);
        }
    }
}
