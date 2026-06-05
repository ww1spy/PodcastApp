package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzaot implements Runnable {
    private /* synthetic */ zzaor zzdrm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaot(zzaor zzaorVar) {
        this.zzdrm = zzaorVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        super/*android.webkit.WebView*/.destroy();
    }
}
