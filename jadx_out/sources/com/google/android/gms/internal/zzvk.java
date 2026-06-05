package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzvk implements zzamg {
    private /* synthetic */ com.google.android.gms.ads.internal.js.zzaa zzcgv;
    private /* synthetic */ zzamd zzcgx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvk(zzvi zzviVar, zzamd zzamdVar, com.google.android.gms.ads.internal.js.zzaa zzaaVar) {
        this.zzcgx = zzamdVar;
        this.zzcgv = zzaaVar;
    }

    @Override // com.google.android.gms.internal.zzamg
    public final void run() {
        this.zzcgx.setException(new zzuw("Unable to obtain a JavascriptEngine."));
        this.zzcgv.release();
    }
}
