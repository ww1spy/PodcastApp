package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjf extends zzflm<zzjf> {
    private String zzatx = null;
    private zzje[] zzbdj = zzje.zzhv();
    private Integer zzbdk = null;

    public zzjf() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final zzjf zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzatx = zzfljVar.readString();
            } else if (zzcxx == 18) {
                int zzb = zzflv.zzb(zzfljVar, 18);
                int length = this.zzbdj == null ? 0 : this.zzbdj.length;
                zzje[] zzjeVarArr = new zzje[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzbdj, 0, zzjeVarArr, 0, length);
                }
                while (length < zzjeVarArr.length - 1) {
                    zzjeVarArr[length] = new zzje();
                    zzfljVar.zza(zzjeVarArr[length]);
                    zzfljVar.zzcxx();
                    length++;
                }
                zzjeVarArr[length] = new zzje();
                zzfljVar.zza(zzjeVarArr[length]);
                this.zzbdj = zzjeVarArr;
            } else if (zzcxx == 24) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbdk = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzatx != null) {
            zzflkVar.zzp(1, this.zzatx);
        }
        if (this.zzbdj != null && this.zzbdj.length > 0) {
            for (int i = 0; i < this.zzbdj.length; i++) {
                zzje zzjeVar = this.zzbdj[i];
                if (zzjeVar != null) {
                    zzflkVar.zza(2, zzjeVar);
                }
            }
        }
        if (this.zzbdk != null) {
            zzflkVar.zzad(3, this.zzbdk.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzatx != null) {
            zzq += zzflk.zzq(1, this.zzatx);
        }
        if (this.zzbdj != null && this.zzbdj.length > 0) {
            for (int i = 0; i < this.zzbdj.length; i++) {
                zzje zzjeVar = this.zzbdj[i];
                if (zzjeVar != null) {
                    zzq += zzflk.zzb(2, zzjeVar);
                }
            }
        }
        return this.zzbdk != null ? zzq + zzflk.zzag(3, this.zzbdk.intValue()) : zzq;
    }
}
