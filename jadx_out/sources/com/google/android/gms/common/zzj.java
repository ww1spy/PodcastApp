package com.google.android.gms.common;

import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;

@Hide
/* loaded from: classes.dex */
abstract class zzj extends zzh {
    private static final WeakReference<byte[]> zzfrg = new WeakReference<>(null);
    private WeakReference<byte[]> zzfrf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(byte[] bArr) {
        super(bArr);
        this.zzfrf = zzfrg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.zzh
    public final byte[] getBytes() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.zzfrf.get();
            if (bArr == null) {
                bArr = zzahi();
                this.zzfrf = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    protected abstract byte[] zzahi();
}
