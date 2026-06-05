package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzbdi implements Runnable {
    private /* synthetic */ zzbdg zzfly;

    private zzbdi(zzbdg zzbdgVar) {
        this.zzfly = zzbdgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfly.zzflx = false;
        this.zzfly.zzbg(this.zzfly.zzz(this.zzfly.zzata.elapsedRealtime()));
    }
}
