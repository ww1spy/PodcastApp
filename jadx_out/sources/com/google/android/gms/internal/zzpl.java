package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzpl implements Runnable {
    private /* synthetic */ zzpk zzbyj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpl(zzpk zzpkVar) {
        this.zzbyj = zzpkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpv zzpvVar;
        zzpv zzpvVar2;
        zzpv zzpvVar3;
        zzpvVar = this.zzbyj.zzbyi;
        if (zzpvVar != null) {
            zzpvVar2 = this.zzbyj.zzbyi;
            zzpvVar2.zzks();
            zzpvVar3 = this.zzbyj.zzbyi;
            zzpvVar3.zzkr();
        }
        zzpk.zza(this.zzbyj, null);
    }
}
