package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzarf implements Runnable {
    private /* synthetic */ zzaqz zzdyj;
    private /* synthetic */ zzasr zzdyo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarf(zzaqz zzaqzVar, zzasr zzasrVar) {
        this.zzdyj = zzaqzVar;
        this.zzdyo = zzasrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarw zzarwVar;
        zzarwVar = this.zzdyj.zzdyh;
        zzarwVar.zzb(this.zzdyo);
    }
}
