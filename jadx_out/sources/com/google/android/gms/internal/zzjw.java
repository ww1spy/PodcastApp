package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjw extends zzflm<zzjw> {
    private static volatile zzjw[] zzbfy;
    private zzka zzbfz = null;
    private zzkc zzbga = null;
    private zzkd zzbgb = null;
    private zzke zzbgc = null;
    private zzjx zzbgd = null;
    private zzkb zzbge = null;
    private zzjz zzbgf = null;
    private Integer zzbgg = null;
    private Integer zzbgh = null;
    private zzju zzbgi = null;
    private Integer zzbgj = null;
    private Integer zzbgk = null;
    private Integer zzbgl = null;
    private Integer zzbgm = null;
    private Integer zzbgn = null;

    public zzjw() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzjw[] zzhy() {
        if (zzbfy == null) {
            synchronized (zzflq.zzpvt) {
                if (zzbfy == null) {
                    zzbfy = new zzjw[0];
                }
            }
        }
        return zzbfy;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 42:
                    if (this.zzbfz == null) {
                        this.zzbfz = new zzka();
                    }
                    zzflsVar = this.zzbfz;
                    zzfljVar.zza(zzflsVar);
                case 50:
                    if (this.zzbga == null) {
                        this.zzbga = new zzkc();
                    }
                    zzflsVar = this.zzbga;
                    zzfljVar.zza(zzflsVar);
                case 58:
                    if (this.zzbgb == null) {
                        this.zzbgb = new zzkd();
                    }
                    zzflsVar = this.zzbgb;
                    zzfljVar.zza(zzflsVar);
                case 66:
                    if (this.zzbgc == null) {
                        this.zzbgc = new zzke();
                    }
                    zzflsVar = this.zzbgc;
                    zzfljVar.zza(zzflsVar);
                case 74:
                    if (this.zzbgd == null) {
                        this.zzbgd = new zzjx();
                    }
                    zzflsVar = this.zzbgd;
                    zzfljVar.zza(zzflsVar);
                case 82:
                    if (this.zzbge == null) {
                        this.zzbge = new zzkb();
                    }
                    zzflsVar = this.zzbge;
                    zzfljVar.zza(zzflsVar);
                case 90:
                    if (this.zzbgf == null) {
                        this.zzbgf = new zzjz();
                    }
                    zzflsVar = this.zzbgf;
                    zzfljVar.zza(zzflsVar);
                case 96:
                    this.zzbgg = Integer.valueOf(zzfljVar.zzcym());
                case 104:
                    this.zzbgh = Integer.valueOf(zzfljVar.zzcym());
                case 114:
                    if (this.zzbgi == null) {
                        this.zzbgi = new zzju();
                    }
                    zzflsVar = this.zzbgi;
                    zzfljVar.zza(zzflsVar);
                case 120:
                    this.zzbgj = Integer.valueOf(zzfljVar.zzcym());
                case 128:
                    this.zzbgk = Integer.valueOf(zzfljVar.zzcym());
                case 136:
                    this.zzbgl = Integer.valueOf(zzfljVar.zzcym());
                case 144:
                    this.zzbgm = Integer.valueOf(zzfljVar.zzcym());
                case 152:
                    this.zzbgn = Integer.valueOf(zzfljVar.zzcym());
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbfz != null) {
            zzflkVar.zza(5, this.zzbfz);
        }
        if (this.zzbga != null) {
            zzflkVar.zza(6, this.zzbga);
        }
        if (this.zzbgb != null) {
            zzflkVar.zza(7, this.zzbgb);
        }
        if (this.zzbgc != null) {
            zzflkVar.zza(8, this.zzbgc);
        }
        if (this.zzbgd != null) {
            zzflkVar.zza(9, this.zzbgd);
        }
        if (this.zzbge != null) {
            zzflkVar.zza(10, this.zzbge);
        }
        if (this.zzbgf != null) {
            zzflkVar.zza(11, this.zzbgf);
        }
        if (this.zzbgg != null) {
            zzflkVar.zzad(12, this.zzbgg.intValue());
        }
        if (this.zzbgh != null) {
            zzflkVar.zzad(13, this.zzbgh.intValue());
        }
        if (this.zzbgi != null) {
            zzflkVar.zza(14, this.zzbgi);
        }
        if (this.zzbgj != null) {
            zzflkVar.zzad(15, this.zzbgj.intValue());
        }
        if (this.zzbgk != null) {
            zzflkVar.zzad(16, this.zzbgk.intValue());
        }
        if (this.zzbgl != null) {
            zzflkVar.zzad(17, this.zzbgl.intValue());
        }
        if (this.zzbgm != null) {
            zzflkVar.zzad(18, this.zzbgm.intValue());
        }
        if (this.zzbgn != null) {
            zzflkVar.zzad(19, this.zzbgn.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbfz != null) {
            zzq += zzflk.zzb(5, this.zzbfz);
        }
        if (this.zzbga != null) {
            zzq += zzflk.zzb(6, this.zzbga);
        }
        if (this.zzbgb != null) {
            zzq += zzflk.zzb(7, this.zzbgb);
        }
        if (this.zzbgc != null) {
            zzq += zzflk.zzb(8, this.zzbgc);
        }
        if (this.zzbgd != null) {
            zzq += zzflk.zzb(9, this.zzbgd);
        }
        if (this.zzbge != null) {
            zzq += zzflk.zzb(10, this.zzbge);
        }
        if (this.zzbgf != null) {
            zzq += zzflk.zzb(11, this.zzbgf);
        }
        if (this.zzbgg != null) {
            zzq += zzflk.zzag(12, this.zzbgg.intValue());
        }
        if (this.zzbgh != null) {
            zzq += zzflk.zzag(13, this.zzbgh.intValue());
        }
        if (this.zzbgi != null) {
            zzq += zzflk.zzb(14, this.zzbgi);
        }
        if (this.zzbgj != null) {
            zzq += zzflk.zzag(15, this.zzbgj.intValue());
        }
        if (this.zzbgk != null) {
            zzq += zzflk.zzag(16, this.zzbgk.intValue());
        }
        if (this.zzbgl != null) {
            zzq += zzflk.zzag(17, this.zzbgl.intValue());
        }
        if (this.zzbgm != null) {
            zzq += zzflk.zzag(18, this.zzbgm.intValue());
        }
        return this.zzbgn != null ? zzq + zzflk.zzag(19, this.zzbgn.intValue()) : zzq;
    }
}
