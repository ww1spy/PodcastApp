package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzarb implements Runnable {
    private /* synthetic */ zzaqz zzdyj;
    private /* synthetic */ boolean zzdyk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarb(zzaqz zzaqzVar, boolean z) {
        this.zzdyj = zzaqzVar;
        this.zzdyk = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zzzk();
    }
}
