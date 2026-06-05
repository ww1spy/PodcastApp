package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjg extends zzflm<zzjg> {
    private String zzbdl = null;
    private zzje[] zzbdm = zzje.zzhv();
    private Integer zzbdn = null;
    private Integer zzbdo = null;
    private Integer zzbdp = null;

    public zzjg() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public final zzjg zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzbdl = zzfljVar.readString();
            } else if (zzcxx == 18) {
                int zzb = zzflv.zzb(zzfljVar, 18);
                int length = this.zzbdm == null ? 0 : this.zzbdm.length;
                zzje[] zzjeVarArr = new zzje[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzbdm, 0, zzjeVarArr, 0, length);
                }
                while (length < zzjeVarArr.length - 1) {
                    zzjeVarArr[length] = new zzje();
                    zzfljVar.zza(zzjeVarArr[length]);
                    zzfljVar.zzcxx();
                    length++;
                }
                zzjeVarArr[length] = new zzje();
                zzfljVar.zza(zzjeVarArr[length]);
                this.zzbdm = zzjeVarArr;
            } else if (zzcxx == 24) {
                zzfljVar.getPosition();
                this.zzbdn = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
            } else if (zzcxx == 32) {
                zzfljVar.getPosition();
                this.zzbdo = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
            } else if (zzcxx == 40) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbdp = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
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
        if (this.zzbdl != null) {
            zzflkVar.zzp(1, this.zzbdl);
        }
        if (this.zzbdm != null && this.zzbdm.length > 0) {
            for (int i = 0; i < this.zzbdm.length; i++) {
                zzje zzjeVar = this.zzbdm[i];
                if (zzjeVar != null) {
                    zzflkVar.zza(2, zzjeVar);
                }
            }
        }
        if (this.zzbdn != null) {
            zzflkVar.zzad(3, this.zzbdn.intValue());
        }
        if (this.zzbdo != null) {
            zzflkVar.zzad(4, this.zzbdo.intValue());
        }
        if (this.zzbdp != null) {
            zzflkVar.zzad(5, this.zzbdp.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbdl != null) {
            zzq += zzflk.zzq(1, this.zzbdl);
        }
        if (this.zzbdm != null && this.zzbdm.length > 0) {
            for (int i = 0; i < this.zzbdm.length; i++) {
                zzje zzjeVar = this.zzbdm[i];
                if (zzjeVar != null) {
                    zzq += zzflk.zzb(2, zzjeVar);
                }
            }
        }
        if (this.zzbdn != null) {
            zzq += zzflk.zzag(3, this.zzbdn.intValue());
        }
        if (this.zzbdo != null) {
            zzq += zzflk.zzag(4, this.zzbdo.intValue());
        }
        return this.zzbdp != null ? zzq + zzflk.zzag(5, this.zzbdp.intValue()) : zzq;
    }
}
