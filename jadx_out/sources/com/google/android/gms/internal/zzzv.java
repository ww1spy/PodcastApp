package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzzv implements Runnable {
    private /* synthetic */ zzahd zzarv;
    private /* synthetic */ zzzu zzcot;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzv(zzzu zzzuVar, zzahd zzahdVar) {
        this.zzcot = zzzuVar;
        this.zzarv = zzahdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzzn zzznVar;
        zzznVar = this.zzcot.zzcoa;
        zzznVar.zzb(this.zzarv);
    }
}
