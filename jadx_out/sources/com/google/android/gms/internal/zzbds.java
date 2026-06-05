package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzbds implements Runnable {
    private /* synthetic */ zzbdp zzfmz;
    private /* synthetic */ int zzfna;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbds(zzbdr zzbdrVar, zzbdp zzbdpVar, int i) {
        this.zzfmz = zzbdpVar;
        this.zzfna = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cast.Listener listener;
        listener = this.zzfmz.zzetn;
        listener.onApplicationDisconnected(this.zzfna);
    }
}
