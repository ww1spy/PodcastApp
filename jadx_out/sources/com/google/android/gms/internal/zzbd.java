package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbd extends zzflm<zzbd> {
    private Long zzgf = null;
    private Integer zzgg = null;
    private Boolean zzgh = null;
    private int[] zzgi = zzflv.zzpvy;
    private Long zzgj = null;

    public zzbd() {
        this.zzpnr = -1;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.zzgf = Long.valueOf(zzfljVar.zzcyr());
            } else if (zzcxx == 16) {
                this.zzgg = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 24) {
                this.zzgh = Boolean.valueOf(zzfljVar.zzcyd());
            } else if (zzcxx == 32) {
                int zzb = zzflv.zzb(zzfljVar, 32);
                int length = this.zzgi == null ? 0 : this.zzgi.length;
                int[] iArr = new int[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzgi, 0, iArr, 0, length);
                }
                while (length < iArr.length - 1) {
                    iArr[length] = zzfljVar.zzcym();
                    zzfljVar.zzcxx();
                    length++;
                }
                iArr[length] = zzfljVar.zzcym();
                this.zzgi = iArr;
            } else if (zzcxx == 34) {
                int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                int position = zzfljVar.getPosition();
                int i = 0;
                while (zzfljVar.zzcyo() > 0) {
                    zzfljVar.zzcym();
                    i++;
                }
                zzfljVar.zzmw(position);
                int length2 = this.zzgi == null ? 0 : this.zzgi.length;
                int[] iArr2 = new int[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzgi, 0, iArr2, 0, length2);
                }
                while (length2 < iArr2.length) {
                    iArr2[length2] = zzfljVar.zzcym();
                    length2++;
                }
                this.zzgi = iArr2;
                zzfljVar.zzlj(zzli);
            } else if (zzcxx == 40) {
                this.zzgj = Long.valueOf(zzfljVar.zzcyr());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzgf != null) {
            zzflkVar.zzf(1, this.zzgf.longValue());
        }
        if (this.zzgg != null) {
            zzflkVar.zzad(2, this.zzgg.intValue());
        }
        if (this.zzgh != null) {
            zzflkVar.zzl(3, this.zzgh.booleanValue());
        }
        if (this.zzgi != null && this.zzgi.length > 0) {
            for (int i = 0; i < this.zzgi.length; i++) {
                zzflkVar.zzad(4, this.zzgi[i]);
            }
        }
        if (this.zzgj != null) {
            zzflkVar.zza(5, this.zzgj.longValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzgf != null) {
            zzq += zzflk.zzc(1, this.zzgf.longValue());
        }
        if (this.zzgg != null) {
            zzq += zzflk.zzag(2, this.zzgg.intValue());
        }
        if (this.zzgh != null) {
            this.zzgh.booleanValue();
            zzq += zzflk.zzlw(3) + 1;
        }
        if (this.zzgi != null && this.zzgi.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzgi.length; i2++) {
                i += zzflk.zzlx(this.zzgi[i2]);
            }
            zzq = zzq + i + (1 * this.zzgi.length);
        }
        if (this.zzgj == null) {
            return zzq;
        }
        return zzq + zzflk.zzlw(5) + zzflk.zzdj(this.zzgj.longValue());
    }
}
