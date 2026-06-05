package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzig implements Runnable {
    private /* synthetic */ zzif zzbay;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzig(zzif zzifVar) {
        this.zzbay = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbay.disconnect();
    }
}
