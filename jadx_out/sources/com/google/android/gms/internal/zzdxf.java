package com.google.android.gms.internal;

import android.support.v7.widget.ActivityChooserView;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzdxf implements zzdyi {
    private final SecretKeySpec zzmkf;
    private final int zzmkg;
    private final int zzmkh = zzdxx.zzmlk.zzoy("AES/CTR/NoPadding").getBlockSize();

    public zzdxf(byte[] bArr, int i) throws GeneralSecurityException {
        this.zzmkf = new SecretKeySpec(bArr, "AES");
        if (i < 12 || i > this.zzmkh) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.zzmkg = i;
    }

    @Override // com.google.android.gms.internal.zzdyi
    public final byte[] zzaj(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length > ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - this.zzmkg) {
            int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - this.zzmkg;
            StringBuilder sb = new StringBuilder(43);
            sb.append("plaintext length can not exceed ");
            sb.append(i);
            throw new GeneralSecurityException(sb.toString());
        }
        byte[] bArr2 = new byte[this.zzmkg + bArr.length];
        byte[] zzgy = zzdyl.zzgy(this.zzmkg);
        System.arraycopy(zzgy, 0, bArr2, 0, this.zzmkg);
        int length = bArr.length;
        int i2 = this.zzmkg;
        Cipher zzoy = zzdxx.zzmlk.zzoy("AES/CTR/NoPadding");
        byte[] bArr3 = new byte[this.zzmkh];
        System.arraycopy(zzgy, 0, bArr3, 0, this.zzmkg);
        zzoy.init(1, this.zzmkf, new IvParameterSpec(bArr3));
        if (zzoy.doFinal(bArr, 0, length, bArr2, i2) != length) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        return bArr2;
    }
}
