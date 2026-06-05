package com.google.android.gms.ads.internal.js;

/* loaded from: classes.dex */
final /* synthetic */ class zzr implements Runnable {
    private final zzc zzcfr;

    private zzr(zzc zzcVar) {
        this.zzcfr = zzcVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable zza(zzc zzcVar) {
        return new zzr(zzcVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcfr.destroy();
    }
}
