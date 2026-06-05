package com.google.android.gms.tagmanager;

/* loaded from: classes.dex */
final class zzaf implements zzw {
    private /* synthetic */ zzy zzkod;

    private zzaf(zzy zzyVar) {
        this.zzkod = zzyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaf(zzy zzyVar, zzz zzzVar) {
        this(zzyVar);
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final String zzbfn() {
        return this.zzkod.zzbfn();
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final void zzbfp() {
        if (zzy.zza(this.zzkod).zzaas()) {
            zzy.zza(this.zzkod, 0L);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzw
    public final void zzlk(String str) {
        this.zzkod.zzlk(str);
    }
}
