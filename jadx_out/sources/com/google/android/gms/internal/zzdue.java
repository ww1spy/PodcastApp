package com.google.android.gms.internal;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final class zzdue implements zzdte {
    private /* synthetic */ zzdtl zzmfj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdue(zzdtl zzdtlVar) {
        this.zzmfj = zzdtlVar;
    }

    @Override // com.google.android.gms.internal.zzdte
    public final byte[] zzd(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return zzdxi.zzc(this.zzmfj.zzbof().zzboh(), ((zzdte) this.zzmfj.zzbof().zzbog()).zzd(bArr, bArr2));
    }
}
