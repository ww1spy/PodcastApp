package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzzk implements Runnable {
    private /* synthetic */ zzahd zzarv;
    private /* synthetic */ zzzi zzcoh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzk(zzzi zzziVar, zzahd zzahdVar) {
        this.zzcoh = zzziVar;
        this.zzarv = zzahdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzcoh.mLock) {
            zzzi zzziVar = this.zzcoh;
            zzziVar.zzcoa.zzb(this.zzarv);
        }
    }
}
