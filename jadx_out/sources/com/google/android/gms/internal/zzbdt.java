package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzbdt implements Runnable {
    private /* synthetic */ zzbdp zzfmz;
    private /* synthetic */ zzbdx zzfnb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdt(zzbdr zzbdrVar, zzbdp zzbdpVar, zzbdx zzbdxVar) {
        this.zzfmz = zzbdpVar;
        this.zzfnb = zzbdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfmz.zza(this.zzfnb);
    }
}
