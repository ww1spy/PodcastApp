package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzara implements Runnable {
    private /* synthetic */ int zzdyi;
    private /* synthetic */ zzaqz zzdyj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzara(zzaqz zzaqzVar, int i) {
        this.zzdyj = zzaqzVar;
        this.zzdyi = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zzr(this.zzdyi * 1000);
    }
}
