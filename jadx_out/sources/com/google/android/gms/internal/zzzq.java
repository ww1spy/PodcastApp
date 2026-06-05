package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzzq implements Runnable {
    private /* synthetic */ zzahd zzcoi;
    private /* synthetic */ zzzp zzcoj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzq(zzzp zzzpVar, zzahd zzahdVar) {
        this.zzcoj = zzzpVar;
        this.zzcoi = zzahdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzzn zzznVar;
        zzznVar = this.zzcoj.zzcoa;
        zzznVar.zzb(this.zzcoi);
    }
}
