package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzard implements Runnable {
    private /* synthetic */ zzaqz zzdyj;
    private /* synthetic */ zzasy zzdyn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzard(zzaqz zzaqzVar, zzasy zzasyVar) {
        this.zzdyj = zzaqzVar;
        this.zzdyn = zzasyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zza(this.zzdyn);
    }
}
