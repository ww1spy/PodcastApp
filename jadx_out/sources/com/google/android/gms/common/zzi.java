package com.google.android.gms.common;

import com.google.android.gms.common.internal.Hide;
import java.util.Arrays;

@Hide
/* loaded from: classes.dex */
final class zzi extends zzh {
    private final byte[] zzfre;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.zzfre = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.zzh
    public final byte[] getBytes() {
        return this.zzfre;
    }
}
