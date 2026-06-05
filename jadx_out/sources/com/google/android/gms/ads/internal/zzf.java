package com.google.android.gms.ads.internal;

/* loaded from: classes.dex */
final /* synthetic */ class zzf implements Runnable {
    private final zzbj zzanw;

    private zzf(zzbj zzbjVar) {
        this.zzanw = zzbjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable zza(zzbj zzbjVar) {
        return new zzf(zzbjVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzanw.resume();
    }
}
