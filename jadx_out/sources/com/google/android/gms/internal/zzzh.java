package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
final class zzzh implements Runnable {
    private /* synthetic */ zzzg zzcog;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzh(zzzg zzzgVar) {
        this.zzcog = zzzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.zzcog.zzcof;
        if (atomicBoolean.get()) {
            zzahw.e("Timed out waiting for WebView to finish loading.");
            this.zzcog.cancel();
        }
    }
}
