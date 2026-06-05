package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdn implements Runnable {
    private /* synthetic */ zzdm zzajh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdn(zzdm zzdmVar) {
        this.zzajh = zzdmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzajh.zzao();
    }
}
