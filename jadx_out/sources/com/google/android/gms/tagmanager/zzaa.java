package com.google.android.gms.tagmanager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaa implements zzw {
    private /* synthetic */ zzy zzkod;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzy zzyVar) {
        this.zzkod = zzyVar;
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final String zzbfn() {
        return this.zzkod.zzbfn();
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final void zzbfp() {
        zzdj.zzcz("Refresh ignored: container loaded as default only.");
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final void zzlk(String str) {
        this.zzkod.zzlk(str);
    }
}
