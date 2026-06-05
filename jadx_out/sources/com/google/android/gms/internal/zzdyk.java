package com.google.android.gms.internal;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzdyk {
    private static void zza(byte[] bArr, long j, int i) {
        int i2 = 0;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (j & 255);
            i2++;
            j >>= 8;
        }
    }

    private static long zzd(byte[] bArr, int i, int i2) {
        return (zzg(bArr, i) >> i2) & 67108863;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] zzf(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
        long zzd = zzd(bArr, 0, 0) & 67108863;
        int i = 2;
        int i2 = 3;
        long zzd2 = zzd(bArr, 3, 2) & 67108611;
        long zzd3 = zzd(bArr, 6, 4) & 67092735;
        long zzd4 = zzd(bArr, 9, 6) & 66076671;
        long zzd5 = zzd(bArr, 12, 8) & 1048575;
        long j = zzd2 * 5;
        long j2 = zzd3 * 5;
        long j3 = zzd4 * 5;
        long j4 = zzd5 * 5;
        byte[] bArr3 = new byte[17];
        long j5 = 0;
        int i3 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        while (i3 < bArr2.length) {
            int min = Math.min(16, bArr2.length - i3);
            System.arraycopy(bArr2, i3, bArr3, 0, min);
            bArr3[min] = 1;
            if (min != 16) {
                Arrays.fill(bArr3, min + 1, 17, (byte) 0);
            }
            long zzd6 = j9 + zzd(bArr3, 0, 0);
            long zzd7 = j5 + zzd(bArr3, i2, i);
            long zzd8 = j6 + zzd(bArr3, 6, 4);
            long zzd9 = j7 + zzd(bArr3, 9, 6);
            long zzd10 = j8 + (zzd(bArr3, 12, 8) | (bArr3[16] << 24));
            long j10 = (zzd6 * zzd) + (zzd7 * j4) + (zzd8 * j3) + (zzd9 * j2) + (zzd10 * j);
            long j11 = (zzd6 * zzd2) + (zzd7 * zzd) + (zzd8 * j4) + (zzd9 * j3) + (zzd10 * j2);
            long j12 = (zzd6 * zzd3) + (zzd7 * zzd2) + (zzd8 * zzd) + (zzd9 * j4) + (zzd10 * j3);
            long j13 = (zzd6 * zzd4) + (zzd7 * zzd3) + (zzd8 * zzd2) + (zzd9 * zzd) + (zzd10 * j4);
            long j14 = (zzd6 * zzd5) + (zzd7 * zzd4) + (zzd8 * zzd3) + (zzd9 * zzd2) + (zzd10 * zzd);
            long j15 = j10 & 67108863;
            long j16 = j11 + (j10 >> 26);
            long j17 = j16 & 67108863;
            long j18 = j12 + (j16 >> 26);
            long j19 = j18 & 67108863;
            long j20 = j13 + (j18 >> 26);
            long j21 = j20 & 67108863;
            long j22 = j14 + (j20 >> 26);
            long j23 = j22 & 67108863;
            long j24 = j15 + ((j22 >> 26) * 5);
            long j25 = j24 & 67108863;
            long j26 = j17 + (j24 >> 26);
            i3 += 16;
            j8 = j23;
            j6 = j19;
            i = 2;
            i2 = 3;
            j9 = j25;
            j5 = j26;
            j7 = j21;
        }
        long j27 = j6 + (j5 >> 26);
        long j28 = j27 & 67108863;
        long j29 = j7 + (j27 >> 26);
        long j30 = j29 & 67108863;
        long j31 = j8 + (j29 >> 26);
        long j32 = j31 & 67108863;
        long j33 = j9 + ((j31 >> 26) * 5);
        long j34 = j33 & 67108863;
        long j35 = (j5 & 67108863) + (j33 >> 26);
        long j36 = j34 + 5;
        long j37 = j36 & 67108863;
        long j38 = j35 + (j36 >> 26);
        long j39 = j38 & 67108863;
        long j40 = j28 + (j38 >> 26);
        long j41 = j40 & 67108863;
        long j42 = j30 + (j40 >> 26);
        long j43 = j42 & 67108863;
        long j44 = (j32 + (j42 >> 26)) - 67108864;
        long j45 = j44 >> 63;
        long j46 = j34 & j45;
        long j47 = j35 & j45;
        long j48 = j28 & j45;
        long j49 = j30 & j45;
        long j50 = j32 & j45;
        long j51 = j45 ^ (-1);
        long j52 = j46 | (j37 & j51);
        long j53 = j47 | (j39 & j51);
        long j54 = j48 | (j41 & j51);
        long j55 = j49 | (j43 & j51);
        long j56 = ((j54 >> 12) | (j55 << 14)) & 4294967295L;
        long zzg = ((j52 | (j53 << 26)) & 4294967295L) + zzg(bArr, 16);
        long j57 = zzg & 4294967295L;
        long zzg2 = (((j53 >> 6) | (j54 << 20)) & 4294967295L) + zzg(bArr, 20) + (zzg >> 32);
        long j58 = zzg2 & 4294967295L;
        long zzg3 = j56 + zzg(bArr, 24) + (zzg2 >> 32);
        long zzg4 = ((((j55 >> 18) | ((j50 | (j44 & j51)) << 8)) & 4294967295L) + zzg(bArr, 28) + (zzg3 >> 32)) & 4294967295L;
        byte[] bArr4 = new byte[16];
        zza(bArr4, j57, 0);
        zza(bArr4, j58, 4);
        zza(bArr4, zzg3 & 4294967295L, 8);
        zza(bArr4, zzg4, 12);
        return bArr4;
    }

    private static long zzg(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }
}
