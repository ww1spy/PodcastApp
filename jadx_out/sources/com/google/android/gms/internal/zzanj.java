package com.google.android.gms.internal;

import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzanj implements Runnable {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanj(zzani zzaniVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Looper.myLooper().quit();
    }
}
