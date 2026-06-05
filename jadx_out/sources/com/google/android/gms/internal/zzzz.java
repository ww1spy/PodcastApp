package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzz implements Runnable {
    private /* synthetic */ zzamd zzcpd;
    private /* synthetic */ String zzcpe;
    private /* synthetic */ zzzy zzcpf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzz(zzzy zzzyVar, zzamd zzamdVar, String str) {
        this.zzcpf = zzzyVar;
        this.zzcpd = zzamdVar;
        this.zzcpe = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzbb zzbbVar;
        zzamd zzamdVar = this.zzcpd;
        zzbbVar = this.zzcpf.zzcoy;
        zzamdVar.set(zzbbVar.zzdw().get(this.zzcpe));
    }
}
