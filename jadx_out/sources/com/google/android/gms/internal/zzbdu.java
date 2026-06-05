package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzbdu implements Runnable {
    private /* synthetic */ zzbdp zzfmz;
    private /* synthetic */ zzbdd zzfnc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdu(zzbdr zzbdrVar, zzbdp zzbdpVar, zzbdd zzbddVar) {
        this.zzfmz = zzbdpVar;
        this.zzfnc = zzbddVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzfmz.zza(this.zzfnc);
    }
}
