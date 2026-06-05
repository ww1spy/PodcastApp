package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzzj implements Runnable {
    private /* synthetic */ zzzi zzcoh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzj(zzzi zzziVar) {
        this.zzcoh = zzziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcoh.onStop();
    }
}
