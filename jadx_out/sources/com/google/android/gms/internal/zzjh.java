package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjh extends zzflm<zzjh> {
    private Integer zzbdq = null;
    private zzju zzbdr = null;
    private zzju zzbds = null;
    private zzju zzbdt = null;
    private zzju[] zzbdu = zzju.zzhx();
    private Integer zzbdv = null;

    public zzjh() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx != 8) {
                if (zzcxx == 18) {
                    if (this.zzbdr == null) {
                        this.zzbdr = new zzju();
                    }
                    zzflsVar = this.zzbdr;
                } else if (zzcxx == 26) {
                    if (this.zzbds == null) {
                        this.zzbds = new zzju();
                    }
                    zzflsVar = this.zzbds;
                } else if (zzcxx == 34) {
                    if (this.zzbdt == null) {
                        this.zzbdt = new zzju();
                    }
                    zzflsVar = this.zzbdt;
                } else if (zzcxx == 42) {
                    int zzb = zzflv.zzb(zzfljVar, 42);
                    int length = this.zzbdu == null ? 0 : this.zzbdu.length;
                    zzju[] zzjuVarArr = new zzju[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzbdu, 0, zzjuVarArr, 0, length);
                    }
                    while (length < zzjuVarArr.length - 1) {
                        zzjuVarArr[length] = new zzju();
                        zzfljVar.zza(zzjuVarArr[length]);
                        zzfljVar.zzcxx();
                        length++;
                    }
                    zzjuVarArr[length] = new zzju();
                    zzfljVar.zza(zzjuVarArr[length]);
                    this.zzbdu = zzjuVarArr;
                } else if (zzcxx == 48) {
                    this.zzbdv = Integer.valueOf(zzfljVar.zzcym());
                } else if (!super.zza(zzfljVar, zzcxx)) {
                    return this;
                }
                zzfljVar.zza(zzflsVar);
            } else {
                this.zzbdq = Integer.valueOf(zzfljVar.zzcym());
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbdq != null) {
            zzflkVar.zzad(1, this.zzbdq.intValue());
        }
        if (this.zzbdr != null) {
            zzflkVar.zza(2, this.zzbdr);
        }
        if (this.zzbds != null) {
            zzflkVar.zza(3, this.zzbds);
        }
        if (this.zzbdt != null) {
            zzflkVar.zza(4, this.zzbdt);
        }
        if (this.zzbdu != null && this.zzbdu.length > 0) {
            for (int i = 0; i < this.zzbdu.length; i++) {
                zzju zzjuVar = this.zzbdu[i];
                if (zzjuVar != null) {
                    zzflkVar.zza(5, zzjuVar);
                }
            }
        }
        if (this.zzbdv != null) {
            zzflkVar.zzad(6, this.zzbdv.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbdq != null) {
            zzq += zzflk.zzag(1, this.zzbdq.intValue());
        }
        if (this.zzbdr != null) {
            zzq += zzflk.zzb(2, this.zzbdr);
        }
        if (this.zzbds != null) {
            zzq += zzflk.zzb(3, this.zzbds);
        }
        if (this.zzbdt != null) {
            zzq += zzflk.zzb(4, this.zzbdt);
        }
        if (this.zzbdu != null && this.zzbdu.length > 0) {
            for (int i = 0; i < this.zzbdu.length; i++) {
                zzju zzjuVar = this.zzbdu[i];
                if (zzjuVar != null) {
                    zzq += zzflk.zzb(5, zzjuVar);
                }
            }
        }
        return this.zzbdv != null ? zzq + zzflk.zzag(6, this.zzbdv.intValue()) : zzq;
    }
}
