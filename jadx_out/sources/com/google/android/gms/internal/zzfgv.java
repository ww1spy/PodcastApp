package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzfgv extends zzfgz {
    private final int zzpnz;
    private final int zzpoa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfgv(byte[] bArr, int i, int i2) {
        super(bArr);
        zzh(i, i + i2, bArr.length);
        this.zzpnz = i;
        this.zzpoa = i2;
    }

    @Override // com.google.android.gms.internal.zzfgz, com.google.android.gms.internal.zzfgs
    public final int size() {
        return this.zzpoa;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgz, com.google.android.gms.internal.zzfgs
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzjwl, zzcxu() + i, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgz
    public final int zzcxu() {
        return this.zzpnz;
    }

    @Override // com.google.android.gms.internal.zzfgz, com.google.android.gms.internal.zzfgs
    public final byte zzld(int i) {
        zzab(i, size());
        return this.zzjwl[this.zzpnz + i];
    }
}
