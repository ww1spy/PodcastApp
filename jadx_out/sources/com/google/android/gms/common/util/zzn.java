package com.google.android.gms.common.util;

/* loaded from: classes.dex */
public final class zzn {
    public static String zza(byte[] bArr, int i, int i2, boolean z) {
        String str;
        String str2;
        Object[] objArr;
        if (bArr == null || bArr.length == 0 || i2 <= 0 || i2 > bArr.length) {
            return null;
        }
        StringBuilder sb = new StringBuilder(57 * (((i2 + 16) - 1) / 16));
        int i3 = 0;
        int i4 = 0;
        int i5 = i2;
        while (i5 > 0) {
            if (i3 == 0) {
                if (i2 < 65536) {
                    str2 = "%04X:";
                    objArr = new Object[]{Integer.valueOf(i4)};
                } else {
                    str2 = "%08X:";
                    objArr = new Object[]{Integer.valueOf(i4)};
                }
                str = String.format(str2, objArr);
            } else {
                if (i3 == 8) {
                    str = " -";
                }
                sb.append(String.format(" %02X", Integer.valueOf(bArr[i4] & 255)));
                i5--;
                i3++;
                if (i3 != 16 || i5 == 0) {
                    sb.append('\n');
                    i3 = 0;
                }
                i4++;
            }
            sb.append(str);
            sb.append(String.format(" %02X", Integer.valueOf(bArr[i4] & 255)));
            i5--;
            i3++;
            if (i3 != 16) {
            }
            sb.append('\n');
            i3 = 0;
            i4++;
        }
        return sb.toString();
    }
}
