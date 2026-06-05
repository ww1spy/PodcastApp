package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;
import java.security.MessageDigest;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzib extends zzhs {
    private MessageDigest zzbaj;
    private final int zzbam;
    private final int zzban;

    public zzib(int i) {
        int i2 = i / 8;
        this.zzbam = i % 8 > 0 ? i2 + 1 : i2;
        this.zzban = i;
    }

    @Override // com.google.android.gms.internal.zzhs
    public final byte[] zzy(String str) {
        synchronized (this.mLock) {
            this.zzbaj = zzhh();
            int i = 0;
            if (this.zzbaj == null) {
                return new byte[0];
            }
            this.zzbaj.reset();
            this.zzbaj.update(str.getBytes(Charset.forName(HttpRequest.CHARSET_UTF8)));
            byte[] digest = this.zzbaj.digest();
            byte[] bArr = new byte[digest.length > this.zzbam ? this.zzbam : digest.length];
            System.arraycopy(digest, 0, bArr, 0, bArr.length);
            if (this.zzban % 8 > 0) {
                long j = 0;
                while (i < bArr.length) {
                    if (i > 0) {
                        j <<= 8;
                    }
                    long j2 = j + (bArr[i] & 255);
                    i++;
                    j = j2;
                }
                long j3 = j >>> (8 - (this.zzban % 8));
                for (int i2 = this.zzbam - 1; i2 >= 0; i2--) {
                    bArr[i2] = (byte) (j3 & 255);
                    j3 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
