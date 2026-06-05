package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjn extends zzflm<zzjn> {
    private zzjl zzbex = null;
    private zzjt[] zzbey = zzjt.zzhw();
    private Integer zzbew = null;
    private zzju zzbev = null;

    public zzjn() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzp, reason: merged with bridge method [inline-methods] */
    public final zzjn zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                if (this.zzbex == null) {
                    this.zzbex = new zzjl();
                }
                zzflsVar = this.zzbex;
            } else if (zzcxx == 18) {
                int zzb = zzflv.zzb(zzfljVar, 18);
                int length = this.zzbey == null ? 0 : this.zzbey.length;
                zzjt[] zzjtVarArr = new zzjt[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzbey, 0, zzjtVarArr, 0, length);
                }
                while (length < zzjtVarArr.length - 1) {
                    zzjtVarArr[length] = new zzjt();
                    zzfljVar.zza(zzjtVarArr[length]);
                    zzfljVar.zzcxx();
                    length++;
                }
                zzjtVarArr[length] = new zzjt();
                zzfljVar.zza(zzjtVarArr[length]);
                this.zzbey = zzjtVarArr;
            } else if (zzcxx == 24) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbew = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 34) {
                if (this.zzbev == null) {
                    this.zzbev = new zzju();
                }
                zzflsVar = this.zzbev;
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
            zzfljVar.zza(zzflsVar);
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbex != null) {
            zzflkVar.zza(1, this.zzbex);
        }
        if (this.zzbey != null && this.zzbey.length > 0) {
            for (int i = 0; i < this.zzbey.length; i++) {
                zzjt zzjtVar = this.zzbey[i];
                if (zzjtVar != null) {
                    zzflkVar.zza(2, zzjtVar);
                }
            }
        }
        if (this.zzbew != null) {
            zzflkVar.zzad(3, this.zzbew.intValue());
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
        if (this.zzbex != null) {
            zzq += zzflk.zzb(1, this.zzbex);
        }
        if (this.zzbey != null && this.zzbey.length > 0) {
            for (int i = 0; i < this.zzbey.length; i++) {
                zzjt zzjtVar = this.zzbey[i];
                if (zzjtVar != null) {
                    zzq += zzflk.zzb(2, zzjtVar);
                }
            }
        }
        if (this.zzbew != null) {
            zzq += zzflk.zzag(3, this.zzbew.intValue());
        }
        return this.zzbev != null ? zzq + zzflk.zzb(4, this.zzbev) : zzq;
    }
}
