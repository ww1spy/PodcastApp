package com.google.android.gms.internal;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzfgz extends zzfgy {
    protected final byte[] zzjwl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfgz(byte[] bArr) {
        this.zzjwl = bArr;
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfgs) || size() != ((zzfgs) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzfgz)) {
            return obj.equals(this);
        }
        zzfgz zzfgzVar = (zzfgz) obj;
        int zzcxt = zzcxt();
        int zzcxt2 = zzfgzVar.zzcxt();
        if (zzcxt == 0 || zzcxt2 == 0 || zzcxt == zzcxt2) {
            return zza(zzfgzVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzfgs
    public int size() {
        return this.zzjwl.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzfgs
    public final void zza(zzfgr zzfgrVar) throws IOException {
        zzfgrVar.zze(this.zzjwl, zzcxu(), size());
    }

    @Override // com.google.android.gms.internal.zzfgy
    final boolean zza(zzfgs zzfgsVar, int i, int i2) {
        if (i2 > zzfgsVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > zzfgsVar.size()) {
            int size2 = zzfgsVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!(zzfgsVar instanceof zzfgz)) {
            return zzfgsVar.zzaa(i, i3).equals(zzaa(0, i2));
        }
        zzfgz zzfgzVar = (zzfgz) zzfgsVar;
        byte[] bArr = this.zzjwl;
        byte[] bArr2 = zzfgzVar.zzjwl;
        int zzcxu = zzcxu() + i2;
        int zzcxu2 = zzcxu();
        int zzcxu3 = zzfgzVar.zzcxu() + i;
        while (zzcxu2 < zzcxu) {
            if (bArr[zzcxu2] != bArr2[zzcxu3]) {
                return false;
            }
            zzcxu2++;
            zzcxu3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final zzfgs zzaa(int i, int i2) {
        int zzh = zzh(i, i2, size());
        return zzh == 0 ? zzfgs.zzpnw : new zzfgv(this.zzjwl, zzcxu() + i, zzh);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzjwl, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final zzfhb zzcxq() {
        return zzfhb.zzb(this.zzjwl, zzcxu(), size(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzcxu() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public final int zzg(int i, int i2, int i3) {
        return zzfhz.zza(i, this.zzjwl, zzcxu() + i2, i3);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public byte zzld(int i) {
        return this.zzjwl[i];
    }
}
