package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class zzbfo {
    private static long zza(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = (j2 ^ (j4 ^ (j4 >>> 47))) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    private static long zza(byte[] bArr, int i, int i2) {
        byte[] bArr2 = bArr;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        char c = 0;
        long zzc = 95310865018149119L + zzc(bArr2, 0);
        int i3 = i2 - 1;
        int i4 = 0 + ((i3 / 64) << 6);
        int i5 = i3 & 63;
        int i6 = (i4 + i5) - 63;
        long j = 2480279821605975764L;
        long j2 = 1390051526045402406L;
        int i7 = i;
        while (true) {
            long rotateRight = Long.rotateRight(zzc + j + jArr[c] + zzc(bArr2, i7 + 8), 37) * (-5435081209227447693L);
            long rotateRight2 = Long.rotateRight(j + jArr[1] + zzc(bArr2, i7 + 48), 42) * (-5435081209227447693L);
            long j3 = rotateRight ^ jArr2[1];
            long zzc2 = rotateRight2 + jArr[0] + zzc(bArr, i7 + 40);
            long rotateRight3 = Long.rotateRight(j2 + jArr2[0], 33) * (-5435081209227447693L);
            zza(bArr, i7, jArr[1] * (-5435081209227447693L), j3 + jArr2[0], jArr);
            zza(bArr, i7 + 32, rotateRight3 + jArr2[1], zzc2 + zzc(bArr, i7 + 16), jArr2);
            i7 += 64;
            if (i7 == i4) {
                long j4 = (-5435081209227447693L) + ((j3 & 255) << 1);
                jArr2[0] = jArr2[0] + i5;
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long rotateRight4 = Long.rotateRight(rotateRight3 + zzc2 + jArr[0] + zzc(bArr, i6 + 8), 37) * j4;
                long rotateRight5 = Long.rotateRight(zzc2 + jArr[1] + zzc(bArr, i6 + 48), 42) * j4;
                long j5 = rotateRight4 ^ (jArr2[1] * 9);
                long zzc3 = rotateRight5 + (jArr[0] * 9) + zzc(bArr, i6 + 40);
                long rotateRight6 = Long.rotateRight(j3 + jArr2[0], 33) * j4;
                zza(bArr, i6, jArr[1] * j4, j5 + jArr2[0], jArr);
                zza(bArr, i6 + 32, rotateRight6 + jArr2[1], zzc3 + zzc(bArr, i6 + 16), jArr2);
                return zza(zza(jArr[0], jArr2[0], j4) + ((zzc3 ^ (zzc3 >>> 47)) * (-4348849565147123417L)) + j5, zza(jArr[1], jArr2[1], j4) + rotateRight6, j4);
            }
            bArr2 = bArr;
            j = zzc2;
            zzc = rotateRight3;
            j2 = j3;
            c = 0;
        }
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long zzc = zzc(bArr, i);
        long zzc2 = zzc(bArr, i + 8);
        long zzc3 = zzc(bArr, i + 16);
        long zzc4 = zzc(bArr, i + 24);
        long j3 = j + zzc;
        long j4 = j3 + zzc2 + zzc3;
        long rotateRight = Long.rotateRight(j2 + j3 + zzc4, 21) + Long.rotateRight(j4, 44);
        jArr[0] = j4 + zzc4;
        jArr[1] = rotateRight + j3;
    }

    private static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private static long zzc(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    public static long zzi(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("Out of bound index with offput: 0 and length: ");
            sb.append(length);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (length > 32) {
            if (length > 64) {
                return zza(bArr, 0, length);
            }
            long j = (-7286425919675154353L) + (length << 1);
            long zzc = zzc(bArr, 0) * (-7286425919675154353L);
            long zzc2 = zzc(bArr, 8);
            int i = length + 0;
            long zzc3 = zzc(bArr, i - 8) * j;
            long rotateRight = Long.rotateRight(zzc + zzc2, 43) + Long.rotateRight(zzc3, 30) + (zzc(bArr, i - 16) * (-7286425919675154353L));
            long zza = zza(rotateRight, zzc + Long.rotateRight(zzc2 - 7286425919675154353L, 18) + zzc3, j);
            long zzc4 = zzc(bArr, 16) * j;
            long zzc5 = zzc(bArr, 24);
            long zzc6 = (rotateRight + zzc(bArr, i - 32)) * j;
            return zza(Long.rotateRight(zzc4 + zzc5, 43) + Long.rotateRight(zzc6, 30) + ((zza + zzc(bArr, i - 24)) * j), zzc4 + Long.rotateRight(zzc5 + zzc, 18) + zzc6, j);
        }
        if (length > 16) {
            long j2 = (-7286425919675154353L) + (length << 1);
            long zzc7 = zzc(bArr, 0) * (-5435081209227447693L);
            long zzc8 = zzc(bArr, 8);
            int i2 = length + 0;
            long zzc9 = zzc(bArr, i2 - 8) * j2;
            return zza(Long.rotateRight(zzc7 + zzc8, 43) + Long.rotateRight(zzc9, 30) + (zzc(bArr, i2 - 16) * (-7286425919675154353L)), zzc7 + Long.rotateRight(zzc8 - 7286425919675154353L, 18) + zzc9, j2);
        }
        if (length >= 8) {
            long j3 = (-7286425919675154353L) + (length << 1);
            long zzc10 = zzc(bArr, 0) - 7286425919675154353L;
            long zzc11 = zzc(bArr, (length + 0) - 8);
            return zza((Long.rotateRight(zzc11, 37) * j3) + zzc10, (Long.rotateRight(zzc10, 25) + zzc11) * j3, j3);
        }
        if (length >= 4) {
            return zza(length + ((zzb(bArr, 0) & 4294967295L) << 3), zzb(bArr, (length + 0) - 4) & 4294967295L, (-7286425919675154353L) + (length << 1));
        }
        if (length <= 0) {
            return -7286425919675154353L;
        }
        long j4 = (((bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[0 + (length - 1)] & 255) << 2)) * (-4348849565147123417L));
        return (j4 ^ (j4 >>> 47)) * (-7286425919675154353L);
    }
}
