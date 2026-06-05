package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzqm implements Runnable {
    private /* synthetic */ zzpz zzcae;
    private /* synthetic */ zzql zzcaf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqm(zzql zzqlVar, zzpz zzpzVar) {
        this.zzcaf = zzqlVar;
        this.zzcae = zzpzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcaf.zza(this.zzcae);
    }
}
