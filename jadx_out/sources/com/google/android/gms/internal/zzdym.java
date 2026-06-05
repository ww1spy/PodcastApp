package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* loaded from: classes.dex */
abstract class zzdym implements zzdyi {
    static final int[] zzmly = zza(ByteBuffer.wrap(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107}));
    final zzdyh zzmlz;
    private final int zzmma;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdym(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.zzmlz = zzdyh.zzal(bArr);
        this.zzmma = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int rotateLeft(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    private final void zza(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
        int remaining = byteBuffer2.remaining();
        int i = (remaining / 64) + 1;
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer zze = zze(bArr, this.zzmma + i2);
            if (i2 == i - 1) {
                zzdxi.zza(byteBuffer, byteBuffer2, zze, remaining % 64);
            } else {
                zzdxi.zza(byteBuffer, byteBuffer2, zze, 64);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] zza(ByteBuffer byteBuffer) {
        IntBuffer asIntBuffer = byteBuffer.order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - zzbsp() < bArr.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        byte[] zzgy = zzdyl.zzgy(zzbsp());
        byteBuffer.put(zzgy);
        zza(zzgy, byteBuffer, ByteBuffer.wrap(bArr));
    }

    @Override // com.google.android.gms.internal.zzdyi
    public final byte[] zzaj(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        zzbsp();
        if (length > 2147483635) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer allocate = ByteBuffer.allocate(zzbsp() + bArr.length);
        zza(allocate, bArr);
        return allocate.array();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zzbsp();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ByteBuffer zze(byte[] bArr, int i);
}
