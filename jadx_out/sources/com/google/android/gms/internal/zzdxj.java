package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.InvalidKeyException;

/* loaded from: classes.dex */
final class zzdxj extends zzdxk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdxj(byte[] bArr, int i) throws InvalidKeyException {
        super(bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzdym
    public final int zzbsp() {
        return 12;
    }

    @Override // com.google.android.gms.internal.zzdxk
    final int[] zzd(byte[] bArr, int i) {
        int[] iArr = new int[16];
        System.arraycopy(zzdym.zzmly, 0, iArr, 0, zzdxk.zzmly.length);
        int[] zza = zzdxk.zza(ByteBuffer.wrap(this.zzmlz.getBytes()));
        System.arraycopy(zza, 0, iArr, 4, zza.length);
        iArr[12] = i;
        System.arraycopy(zza(ByteBuffer.wrap(bArr)), 0, iArr, 13, 3);
        return iArr;
    }
}
