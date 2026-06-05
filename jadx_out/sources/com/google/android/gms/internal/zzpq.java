package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzpq implements Runnable {
    private /* synthetic */ zzpo zzbyq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpq(zzpo zzpoVar) {
        this.zzbyq = zzpoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpv zzpvVar;
        zzpv zzpvVar2;
        zzpv zzpvVar3;
        zzpvVar = this.zzbyq.zzbyi;
        if (zzpvVar != null) {
            zzpvVar2 = this.zzbyq.zzbyi;
            zzpvVar2.zzks();
            zzpvVar3 = this.zzbyq.zzbyi;
            zzpvVar3.zzkr();
        }
        zzpo.zza(this.zzbyq, null);
    }
}
