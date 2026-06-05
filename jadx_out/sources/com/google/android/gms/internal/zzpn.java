package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzpn implements Runnable {
    private /* synthetic */ zzpm zzbym;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpn(zzpm zzpmVar) {
        this.zzbym = zzpmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpv zzpvVar;
        zzpv zzpvVar2;
        zzpv zzpvVar3;
        zzpvVar = this.zzbym.zzbyi;
        if (zzpvVar != null) {
            zzpvVar2 = this.zzbym.zzbyi;
            zzpvVar2.zzks();
            zzpvVar3 = this.zzbym.zzbyi;
            zzpvVar3.zzkr();
        }
        zzpm.zza(this.zzbym, null);
    }
}
