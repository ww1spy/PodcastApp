package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbfm extends zzbfk {
    private /* synthetic */ zzbfl zzfqi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbfm(zzbfl zzbflVar) {
        super(null);
        this.zzfqi = zzbflVar;
    }

    @Override // com.google.android.gms.internal.zzbfk, com.google.android.gms.internal.zzbfp
    public final void zzo(Status status) {
        this.zzfqi.setResult((zzbfl) status);
    }
}
