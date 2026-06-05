package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjd extends zzflm<zzjd> {
    public Integer zzbcv = null;
    private Integer zzbcw = null;
    private zzjf zzbcx = null;
    public zzjg zzbcy = null;
    private zzje[] zzbcz = zzje.zzhv();
    private zzjh zzbda = null;
    private zzjq zzbdb = null;
    private zzjp zzbdc = null;
    private zzjm zzbdd = null;
    private zzjn zzbde = null;
    private zzjw[] zzbdf = zzjw.zzhy();

    public zzjd() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:81:0x0113. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzjd zza(zzflj zzfljVar) throws IOException {
        int position;
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 56:
                    position = zzfljVar.getPosition();
                    int zzcym = zzfljVar.zzcym();
                    switch (zzcym) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                            this.zzbcv = Integer.valueOf(zzcym);
                        default:
                            StringBuilder sb = new StringBuilder(43);
                            sb.append(zzcym);
                            sb.append(" is not a valid enum AdInitiater");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                case 64:
                    position = zzfljVar.getPosition();
                    try {
                        this.zzbcw = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                    }
                case 74:
                    if (this.zzbcx == null) {
                        this.zzbcx = new zzjf();
                    }
                    zzflsVar = this.zzbcx;
                    zzfljVar.zza(zzflsVar);
                case 82:
                    if (this.zzbcy == null) {
                        this.zzbcy = new zzjg();
                    }
                    zzflsVar = this.zzbcy;
                    zzfljVar.zza(zzflsVar);
                case 90:
                    int zzb = zzflv.zzb(zzfljVar, 90);
                    int length = this.zzbcz == null ? 0 : this.zzbcz.length;
                    zzje[] zzjeVarArr = new zzje[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzbcz, 0, zzjeVarArr, 0, length);
                    }
                    while (length < zzjeVarArr.length - 1) {
                        zzjeVarArr[length] = new zzje();
                        zzfljVar.zza(zzjeVarArr[length]);
                        zzfljVar.zzcxx();
                        length++;
                    }
                    zzjeVarArr[length] = new zzje();
                    zzfljVar.zza(zzjeVarArr[length]);
                    this.zzbcz = zzjeVarArr;
                case 98:
                    if (this.zzbda == null) {
                        this.zzbda = new zzjh();
                    }
                    zzflsVar = this.zzbda;
                    zzfljVar.zza(zzflsVar);
                case 106:
                    if (this.zzbdb == null) {
                        this.zzbdb = new zzjq();
                    }
                    zzflsVar = this.zzbdb;
                    zzfljVar.zza(zzflsVar);
                case 114:
                    if (this.zzbdc == null) {
                        this.zzbdc = new zzjp();
                    }
                    zzflsVar = this.zzbdc;
                    zzfljVar.zza(zzflsVar);
                case 122:
                    if (this.zzbdd == null) {
                        this.zzbdd = new zzjm();
                    }
                    zzflsVar = this.zzbdd;
                    zzfljVar.zza(zzflsVar);
                case 130:
                    if (this.zzbde == null) {
                        this.zzbde = new zzjn();
                    }
                    zzflsVar = this.zzbde;
                    zzfljVar.zza(zzflsVar);
                case 138:
                    int zzb2 = zzflv.zzb(zzfljVar, 138);
                    int length2 = this.zzbdf == null ? 0 : this.zzbdf.length;
                    zzjw[] zzjwVarArr = new zzjw[zzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzbdf, 0, zzjwVarArr, 0, length2);
                    }
                    while (length2 < zzjwVarArr.length - 1) {
                        zzjwVarArr[length2] = new zzjw();
                        zzfljVar.zza(zzjwVarArr[length2]);
                        zzfljVar.zzcxx();
                        length2++;
                    }
                    zzjwVarArr[length2] = new zzjw();
                    zzfljVar.zza(zzjwVarArr[length2]);
                    this.zzbdf = zzjwVarArr;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbcv != null) {
            zzflkVar.zzad(7, this.zzbcv.intValue());
        }
        if (this.zzbcw != null) {
            zzflkVar.zzad(8, this.zzbcw.intValue());
        }
        if (this.zzbcx != null) {
            zzflkVar.zza(9, this.zzbcx);
        }
        if (this.zzbcy != null) {
            zzflkVar.zza(10, this.zzbcy);
        }
        if (this.zzbcz != null && this.zzbcz.length > 0) {
            for (int i = 0; i < this.zzbcz.length; i++) {
                zzje zzjeVar = this.zzbcz[i];
                if (zzjeVar != null) {
                    zzflkVar.zza(11, zzjeVar);
                }
            }
        }
        if (this.zzbda != null) {
            zzflkVar.zza(12, this.zzbda);
        }
        if (this.zzbdb != null) {
            zzflkVar.zza(13, this.zzbdb);
        }
        if (this.zzbdc != null) {
            zzflkVar.zza(14, this.zzbdc);
        }
        if (this.zzbdd != null) {
            zzflkVar.zza(15, this.zzbdd);
        }
        if (this.zzbde != null) {
            zzflkVar.zza(16, this.zzbde);
        }
        if (this.zzbdf != null && this.zzbdf.length > 0) {
            for (int i2 = 0; i2 < this.zzbdf.length; i2++) {
                zzjw zzjwVar = this.zzbdf[i2];
                if (zzjwVar != null) {
                    zzflkVar.zza(17, zzjwVar);
                }
            }
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbcv != null) {
            zzq += zzflk.zzag(7, this.zzbcv.intValue());
        }
        if (this.zzbcw != null) {
            zzq += zzflk.zzag(8, this.zzbcw.intValue());
        }
        if (this.zzbcx != null) {
            zzq += zzflk.zzb(9, this.zzbcx);
        }
        if (this.zzbcy != null) {
            zzq += zzflk.zzb(10, this.zzbcy);
        }
        if (this.zzbcz != null && this.zzbcz.length > 0) {
            int i = zzq;
            for (int i2 = 0; i2 < this.zzbcz.length; i2++) {
                zzje zzjeVar = this.zzbcz[i2];
                if (zzjeVar != null) {
                    i += zzflk.zzb(11, zzjeVar);
                }
            }
            zzq = i;
        }
        if (this.zzbda != null) {
            zzq += zzflk.zzb(12, this.zzbda);
        }
        if (this.zzbdb != null) {
            zzq += zzflk.zzb(13, this.zzbdb);
        }
        if (this.zzbdc != null) {
            zzq += zzflk.zzb(14, this.zzbdc);
        }
        if (this.zzbdd != null) {
            zzq += zzflk.zzb(15, this.zzbdd);
        }
        if (this.zzbde != null) {
            zzq += zzflk.zzb(16, this.zzbde);
        }
        if (this.zzbdf != null && this.zzbdf.length > 0) {
            for (int i3 = 0; i3 < this.zzbdf.length; i3++) {
                zzjw zzjwVar = this.zzbdf[i3];
                if (zzjwVar != null) {
                    zzq += zzflk.zzb(17, zzjwVar);
                }
            }
        }
        return zzq;
    }
}
