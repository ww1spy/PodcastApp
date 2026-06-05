package com.google.android.gms.ads.internal;

/* loaded from: classes.dex */
final /* synthetic */ class zze implements Runnable {
    private final zzbj zzanw;

    private zze(zzbj zzbjVar) {
        this.zzanw = zzbjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable zza(zzbj zzbjVar) {
        return new zze(zzbjVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzanw.pause();
    }
}
