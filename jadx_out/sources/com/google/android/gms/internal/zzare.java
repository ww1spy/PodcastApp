package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzare implements Runnable {
    private /* synthetic */ zzaqz zzdyj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzare(zzaqz zzaqzVar) {
        this.zzdyj = zzaqzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zzxr();
    }
}
