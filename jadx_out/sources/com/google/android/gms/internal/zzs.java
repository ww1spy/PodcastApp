package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzs implements Runnable {
    private /* synthetic */ String zzas;
    private /* synthetic */ long zzat;
    private /* synthetic */ zzr zzau;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(zzr zzrVar, String str, long j) {
        this.zzau = zzrVar;
        this.zzas = str;
        this.zzat = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaf.zza zzaVar;
        zzaf.zza zzaVar2;
        zzaVar = this.zzau.zzae;
        zzaVar.zza(this.zzas, this.zzat);
        zzaVar2 = this.zzau.zzae;
        zzaVar2.zzc(toString());
    }
}
