package com.google.android.gms.internal;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* loaded from: classes.dex */
public final class zzdxl extends zzdyn {
    public zzdxl(byte[] bArr) throws InvalidKeyException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.zzdyn, com.google.android.gms.internal.zzdsy
    public final /* bridge */ /* synthetic */ byte[] zzd(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return super.zzd(bArr, bArr2);
    }

    @Override // com.google.android.gms.internal.zzdyn
    final zzdym zzf(byte[] bArr, int i) throws InvalidKeyException {
        return new zzdxj(bArr, i);
    }
}
