package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjl extends zzflm<zzjl> {
    private String zzbes = null;
    private Integer zzbet = null;
    private int[] zzbeu = zzflv.zzpvy;
    private zzju zzbev = null;

    public zzjl() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzjl zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzbes = zzfljVar.readString();
            } else if (zzcxx == 16) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbet = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 24) {
                int zzb = zzflv.zzb(zzfljVar, 24);
                int length = this.zzbeu == null ? 0 : this.zzbeu.length;
                int[] iArr = new int[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzbeu, 0, iArr, 0, length);
                }
                while (length < iArr.length - 1) {
                    iArr[length] = zzfljVar.zzcym();
                    zzfljVar.zzcxx();
                    length++;
                }
                iArr[length] = zzfljVar.zzcym();
                this.zzbeu = iArr;
            } else if (zzcxx == 26) {
                int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                int position2 = zzfljVar.getPosition();
                int i = 0;
                while (zzfljVar.zzcyo() > 0) {
                    zzfljVar.zzcym();
                    i++;
                }
                zzfljVar.zzmw(position2);
                int length2 = this.zzbeu == null ? 0 : this.zzbeu.length;
                int[] iArr2 = new int[i + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzbeu, 0, iArr2, 0, length2);
                }
                while (length2 < iArr2.length) {
                    iArr2[length2] = zzfljVar.zzcym();
                    length2++;
                }
                this.zzbeu = iArr2;
                zzfljVar.zzlj(zzli);
            } else if (zzcxx == 34) {
                if (this.zzbev == null) {
                    this.zzbev = new zzju();
                }
                zzfljVar.zza(this.zzbev);
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbes != null) {
            zzflkVar.zzp(1, this.zzbes);
        }
        if (this.zzbet != null) {
            zzflkVar.zzad(2, this.zzbet.intValue());
        }
        if (this.zzbeu != null && this.zzbeu.length > 0) {
            for (int i = 0; i < this.zzbeu.length; i++) {
                zzflkVar.zzad(3, this.zzbeu[i]);
            }
        }
        if (this.zzbev != null) {
            zzflkVar.zza(4, this.zzbev);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbes != null) {
            zzq += zzflk.zzq(1, this.zzbes);
        }
        if (this.zzbet != null) {
            zzq += zzflk.zzag(2, this.zzbet.intValue());
        }
        if (this.zzbeu != null && this.zzbeu.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzbeu.length; i2++) {
                i += zzflk.zzlx(this.zzbeu[i2]);
            }
            zzq = zzq + i + (1 * this.zzbeu.length);
        }
        return this.zzbev != null ? zzq + zzflk.zzb(4, this.zzbev) : zzq;
    }
}
