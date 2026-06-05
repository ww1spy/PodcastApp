package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzps implements Runnable {
    private /* synthetic */ zzpr zzbyr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzps(zzpr zzprVar) {
        this.zzbyr = zzprVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpv zzpvVar;
        zzpv zzpvVar2;
        zzpv zzpvVar3;
        zzpvVar = this.zzbyr.zzbyi;
        if (zzpvVar != null) {
            zzpvVar2 = this.zzbyr.zzbyi;
            zzpvVar2.zzks();
            zzpvVar3 = this.zzbyr.zzbyi;
            zzpvVar3.zzkr();
        }
        zzpr.zza(this.zzbyr, null);
    }
}
