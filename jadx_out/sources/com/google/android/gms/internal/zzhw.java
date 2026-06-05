package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzhw {
    public static int zzaa(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes(HttpRequest.CHARSET_UTF8);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        int i = 0;
        int length = bytes.length;
        int i2 = (length & (-4)) + 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4 += 4) {
            int i5 = ((bytes[i4] & 255) | ((bytes[i4 + 1] & 255) << 8) | ((bytes[i4 + 2] & 255) << 16) | (bytes[i4 + 3] << 24)) * (-862048943);
            int i6 = i3 ^ (((i5 << 15) | (i5 >>> 17)) * 461845907);
            i3 = (((i6 >>> 19) | (i6 << 13)) * 5) - 430675100;
        }
        switch (length & 3) {
            case 3:
                i = (bytes[i2 + 2] & 255) << 16;
            case 2:
                i |= (bytes[i2 + 1] & 255) << 8;
            case 1:
                int i7 = (i | (bytes[i2] & 255)) * (-862048943);
                i3 ^= ((i7 >>> 17) | (i7 << 15)) * 461845907;
                break;
        }
        int i8 = i3 ^ length;
        int i9 = (i8 ^ (i8 >>> 16)) * (-2048144789);
        int i10 = (i9 ^ (i9 >>> 13)) * (-1028477387);
        return i10 ^ (i10 >>> 16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x007f, code lost:
    
        if (((r6 >= 65382 && r6 <= 65437) || (r6 >= 65441 && r6 <= 65500)) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00c4, code lost:
    
        if (r4 == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00d4, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d3, code lost:
    
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00d1, code lost:
    
        if (r4 == false) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x009c  */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] zzb(@android.support.annotation.Nullable java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzhw.zzb(java.lang.String, boolean):java.lang.String[]");
    }
}
