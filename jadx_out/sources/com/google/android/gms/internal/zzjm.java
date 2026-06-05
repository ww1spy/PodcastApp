package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjm extends zzflm<zzjm> {
    private Integer zzbew = null;
    private int[] zzbeu = zzflv.zzpvy;

    public zzjm() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public final zzjm zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbew = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 16) {
                int zzb = zzflv.zzb(zzfljVar, 16);
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
            } else if (zzcxx == 18) {
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
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbew != null) {
            zzflkVar.zzad(1, this.zzbew.intValue());
        }
        if (this.zzbeu != null && this.zzbeu.length > 0) {
            for (int i = 0; i < this.zzbeu.length; i++) {
                zzflkVar.zzad(2, this.zzbeu[i]);
            }
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbew != null) {
            zzq += zzflk.zzag(1, this.zzbew.intValue());
        }
        if (this.zzbeu == null || this.zzbeu.length <= 0) {
            return zzq;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzbeu.length; i2++) {
            i += zzflk.zzlx(this.zzbeu[i2]);
        }
        return zzq + i + (1 * this.zzbeu.length);
    }
}
