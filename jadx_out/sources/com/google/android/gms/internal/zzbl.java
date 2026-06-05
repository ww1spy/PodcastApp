package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbl extends zzflm<zzbl> {
    private static volatile zzbl[] zzwg;
    public int[] zzwh = zzflv.zzpvy;
    private int zzwi = 0;
    private int name = 0;
    private boolean zzwj = false;
    private boolean zzwk = false;

    public zzbl() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzbl[] zzs() {
        if (zzwg == null) {
            synchronized (zzflq.zzpvt) {
                if (zzwg == null) {
                    zzwg = new zzbl[0];
                }
            }
        }
        return zzwg;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbl)) {
            return false;
        }
        zzbl zzblVar = (zzbl) obj;
        if (zzflq.equals(this.zzwh, zzblVar.zzwh) && this.zzwi == zzblVar.zzwi && this.name == zzblVar.name && this.zzwj == zzblVar.zzwj && this.zzwk == zzblVar.zzwk) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzblVar.zzpvl == null || zzblVar.zzpvl.isEmpty() : this.zzpvl.equals(zzblVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((527 + getClass().getName().hashCode()) * 31) + zzflq.hashCode(this.zzwh)) * 31) + this.zzwi) * 31) + this.name) * 31) + (this.zzwj ? 1231 : 1237)) * 31) + (this.zzwk ? 1231 : 1237)) * 31) + ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode());
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.zzwk = zzfljVar.zzcyd();
            } else if (zzcxx == 16) {
                this.zzwi = zzfljVar.zzcym();
            } else if (zzcxx == 24) {
                int zzb = zzflv.zzb(zzfljVar, 24);
                int length = this.zzwh == null ? 0 : this.zzwh.length;
                int[] iArr = new int[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzwh, 0, iArr, 0, length);
                }
                while (length < iArr.length - 1) {
                    iArr[length] = zzfljVar.zzcym();
                    zzfljVar.zzcxx();
                    length++;
                }
                iArr[length] = zzfljVar.zzcym();
                this.zzwh = iArr;
            } else if (zzcxx == 26) {
                int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                int position = zzfljVar.getPosition();
                int i = 0;
                while (zzfljVar.zzcyo() > 0) {
                    zzfljVar.zzcym();
                    i++;
                }
                zzfljVar.zzmw(position);
                int length2 = this.zzwh == null ? 0 : this.zzwh.length;
                int[] iArr2 = new int[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzwh, 0, iArr2, 0, length2);
                }
                while (length2 < iArr2.length) {
                    iArr2[length2] = zzfljVar.zzcym();
                    length2++;
                }
                this.zzwh = iArr2;
                zzfljVar.zzlj(zzli);
            } else if (zzcxx == 32) {
                this.name = zzfljVar.zzcym();
            } else if (zzcxx == 48) {
                this.zzwj = zzfljVar.zzcyd();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzwk) {
            zzflkVar.zzl(1, this.zzwk);
        }
        zzflkVar.zzad(2, this.zzwi);
        if (this.zzwh != null && this.zzwh.length > 0) {
            for (int i = 0; i < this.zzwh.length; i++) {
                zzflkVar.zzad(3, this.zzwh[i]);
            }
        }
        if (this.name != 0) {
            zzflkVar.zzad(4, this.name);
        }
        if (this.zzwj) {
            zzflkVar.zzl(6, this.zzwj);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzwk) {
            zzq += zzflk.zzlw(1) + 1;
        }
        int zzag = zzq + zzflk.zzag(2, this.zzwi);
        if (this.zzwh != null && this.zzwh.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzwh.length; i2++) {
                i += zzflk.zzlx(this.zzwh[i2]);
            }
            zzag = zzag + i + (this.zzwh.length * 1);
        }
        if (this.name != 0) {
            zzag += zzflk.zzag(4, this.name);
        }
        return this.zzwj ? zzag + zzflk.zzlw(6) + 1 : zzag;
    }
}
