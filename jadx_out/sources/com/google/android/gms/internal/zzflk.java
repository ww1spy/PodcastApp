package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: classes.dex */
public final class zzflk {
    private final ByteBuffer buffer;

    private zzflk(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        this.buffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzflk(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r10 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zza(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzflk.zza(java.lang.CharSequence, byte[], int, int):int");
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            zzb(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int zzag(int i, int i2) {
        return zzlw(i) + zzlx(i2);
    }

    public static int zzb(int i, zzfls zzflsVar) {
        int zzlw = zzlw(i);
        int zzhs = zzflsVar.zzhs();
        return zzlw + zzmf(zzhs) + zzhs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13 */
    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            char c = charAt;
            if (charAt >= 128) {
                if (charAt < 2048) {
                    i = 960 | (charAt >>> 6);
                } else {
                    if (charAt >= 55296 && 57343 >= charAt) {
                        int i3 = i2 + 1;
                        if (i3 != charSequence.length()) {
                            char charAt2 = charSequence.charAt(i3);
                            if (Character.isSurrogatePair(charAt, charAt2)) {
                                int codePoint = Character.toCodePoint(charAt, charAt2);
                                byteBuffer.put((byte) (240 | (codePoint >>> 18)));
                                byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint & 63) | 128));
                                i2 = i3;
                                i2++;
                            } else {
                                i2 = i3;
                            }
                        }
                        StringBuilder sb = new StringBuilder(39);
                        sb.append("Unpaired surrogate at index ");
                        sb.append(i2 - 1);
                        throw new IllegalArgumentException(sb.toString());
                    }
                    byteBuffer.put((byte) (480 | (charAt >>> '\f')));
                    i = ((charAt >>> 6) & 63) | 128;
                }
                byteBuffer.put((byte) i);
                c = (charAt & '?') | 128;
            }
            byteBuffer.put((byte) c);
            i2++;
        }
    }

    public static zzflk zzbf(byte[] bArr) {
        return zzp(bArr, 0, bArr.length);
    }

    public static int zzbg(byte[] bArr) {
        return zzmf(bArr.length) + bArr.length;
    }

    public static int zzc(int i, long j) {
        return zzlw(i) + zzdj(j);
    }

    public static int zzd(int i, byte[] bArr) {
        return zzlw(i) + zzbg(bArr);
    }

    private static int zzd(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = charSequence.length();
                while (i2 < length2) {
                    char charAt2 = charSequence.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i2);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i3 + 4294967296L);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static long zzdc(long j) {
        return (j << 1) ^ (j >> 63);
    }

    private final void zzdi(long j) throws IOException {
        while ((j & (-128)) != 0) {
            zzmx((((int) j) & 127) | 128);
            j >>>= 7;
        }
        zzmx((int) j);
    }

    public static int zzdj(long j) {
        if ((j & (-128)) == 0) {
            return 1;
        }
        if ((j & (-16384)) == 0) {
            return 2;
        }
        if ((j & (-2097152)) == 0) {
            return 3;
        }
        if ((j & (-268435456)) == 0) {
            return 4;
        }
        if ((j & (-34359738368L)) == 0) {
            return 5;
        }
        if ((j & (-4398046511104L)) == 0) {
            return 6;
        }
        if ((j & (-562949953421312L)) == 0) {
            return 7;
        }
        if ((j & (-72057594037927936L)) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    private final void zzdk(long j) throws IOException {
        if (this.buffer.remaining() < 8) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.putLong(j);
    }

    public static int zzh(int i, long j) {
        return zzlw(i) + zzdj(zzdc(j));
    }

    public static int zzlw(int i) {
        return zzmf(i << 3);
    }

    public static int zzlx(int i) {
        if (i >= 0) {
            return zzmf(i);
        }
        return 10;
    }

    public static int zzme(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zzmf(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    private final void zzmx(int i) throws IOException {
        byte b = (byte) i;
        if (!this.buffer.hasRemaining()) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(b);
    }

    public static zzflk zzp(byte[] bArr, int i, int i2) {
        return new zzflk(bArr, 0, i2);
    }

    public static int zzq(int i, String str) {
        return zzlw(i) + zztx(str);
    }

    public static int zztx(String str) {
        int zzd = zzd(str);
        return zzmf(zzd) + zzd;
    }

    public final void zza(int i, double d) throws IOException {
        zzac(i, 1);
        zzdk(Double.doubleToLongBits(d));
    }

    public final void zza(int i, long j) throws IOException {
        zzac(i, 0);
        zzdi(j);
    }

    public final void zza(int i, zzfls zzflsVar) throws IOException {
        zzac(i, 2);
        zzb(zzflsVar);
    }

    public final void zzac(int i, int i2) throws IOException {
        zzmy((i << 3) | i2);
    }

    public final void zzad(int i, int i2) throws IOException {
        zzac(i, 0);
        if (i2 >= 0) {
            zzmy(i2);
        } else {
            zzdi(i2);
        }
    }

    public final void zzb(int i, long j) throws IOException {
        zzac(i, 1);
        zzdk(j);
    }

    public final void zzb(zzfls zzflsVar) throws IOException {
        zzmy(zzflsVar.zzdcr());
        zzflsVar.zza(this);
    }

    public final void zzbh(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.buffer.remaining() < length) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(bArr, 0, length);
    }

    public final void zzc(int i, byte[] bArr) throws IOException {
        zzac(i, 2);
        zzmy(bArr.length);
        zzbh(bArr);
    }

    public final void zzcyx() {
        if (this.buffer.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.buffer.remaining())));
        }
    }

    public final void zzd(int i, float f) throws IOException {
        zzac(i, 5);
        int floatToIntBits = Float.floatToIntBits(f);
        if (this.buffer.remaining() < 4) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.putInt(floatToIntBits);
    }

    public final void zzf(int i, long j) throws IOException {
        zzac(i, 0);
        zzdi(j);
    }

    public final void zzg(int i, long j) throws IOException {
        zzac(i, 0);
        zzdi(zzdc(j));
    }

    public final void zzl(int i, boolean z) throws IOException {
        zzac(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (!this.buffer.hasRemaining()) {
            throw new zzfll(this.buffer.position(), this.buffer.limit());
        }
        this.buffer.put(b);
    }

    public final void zzmy(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzmx((i & 127) | 128);
            i >>>= 7;
        }
        zzmx(i);
    }

    public final void zzp(int i, String str) throws IOException {
        zzac(i, 2);
        try {
            int zzmf = zzmf(str.length());
            if (zzmf != zzmf(str.length() * 3)) {
                zzmy(zzd(str));
                zza(str, this.buffer);
                return;
            }
            int position = this.buffer.position();
            if (this.buffer.remaining() < zzmf) {
                throw new zzfll(position + zzmf, this.buffer.limit());
            }
            this.buffer.position(position + zzmf);
            zza(str, this.buffer);
            int position2 = this.buffer.position();
            this.buffer.position(position);
            zzmy((position2 - position) - zzmf);
            this.buffer.position(position2);
        } catch (BufferOverflowException e) {
            zzfll zzfllVar = new zzfll(this.buffer.position(), this.buffer.limit());
            zzfllVar.initCause(e);
            throw zzfllVar;
        }
    }
}
