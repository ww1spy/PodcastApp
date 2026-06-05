package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzam extends zzbj {
    private /* synthetic */ zzal zzfxf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzam(zzal zzalVar, zzbh zzbhVar) {
        super(zzbhVar);
        this.zzfxf = zzalVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzbj
    public final void zzajj() {
        this.zzfxf.onConnectionSuspended(1);
    }
}
