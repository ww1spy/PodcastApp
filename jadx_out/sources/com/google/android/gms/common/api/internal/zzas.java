package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zzas extends zzbj {
    private /* synthetic */ ConnectionResult zzfxw;
    private /* synthetic */ zzar zzfxx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(zzar zzarVar, zzbh zzbhVar, ConnectionResult connectionResult) {
        super(zzbhVar);
        this.zzfxx = zzarVar;
        this.zzfxw = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zzbj
    public final void zzajj() {
        this.zzfxx.zzfxt.zze(this.zzfxw);
    }
}
