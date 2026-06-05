package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzhx extends zzhs {
    private MessageDigest zzbaj;

    @Override // com.google.android.gms.internal.zzhs
    public final byte[] zzy(String str) {
        byte[] bArr;
        String[] split = str.split(" ");
        int i = 4;
        if (split.length == 1) {
            int zzaa = zzhw.zzaa(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zzaa);
            bArr = allocate.array();
        } else if (split.length < 5) {
            byte[] bArr2 = new byte[split.length << 1];
            for (int i2 = 0; i2 < split.length; i2++) {
                int zzaa2 = zzhw.zzaa(split[i2]);
                int i3 = (zzaa2 >> 16) ^ (65535 & zzaa2);
                byte[] bArr3 = {(byte) i3, (byte) (i3 >> 8)};
                int i4 = i2 << 1;
                bArr2[i4] = bArr3[0];
                bArr2[i4 + 1] = bArr3[1];
            }
            bArr = bArr2;
        } else {
            byte[] bArr4 = new byte[split.length];
            for (int i5 = 0; i5 < split.length; i5++) {
                int zzaa3 = zzhw.zzaa(split[i5]);
                bArr4[i5] = (byte) ((zzaa3 >> 24) ^ (((zzaa3 & 255) ^ ((zzaa3 >> 8) & 255)) ^ ((zzaa3 >> 16) & 255)));
            }
            bArr = bArr4;
        }
        this.zzbaj = zzhh();
        synchronized (this.mLock) {
            if (this.zzbaj == null) {
                return new byte[0];
            }
            this.zzbaj.reset();
            this.zzbaj.update(bArr);
            byte[] digest = this.zzbaj.digest();
            if (digest.length <= 4) {
                i = digest.length;
            }
            byte[] bArr5 = new byte[i];
            System.arraycopy(digest, 0, bArr5, 0, bArr5.length);
            return bArr5;
        }
    }
}
