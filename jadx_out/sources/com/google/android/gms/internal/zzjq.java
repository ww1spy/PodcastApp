package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjq extends zzflm<zzjq> {
    private Integer zzbfc = null;
    private Integer zzbfd = null;
    private Integer zzbfe = null;
    private Integer zzbff = null;
    private Integer zzbfg = null;
    private Integer zzbfh = null;
    private Integer zzbfi = null;
    private Integer zzbfj = null;
    private Integer zzbfk = null;
    private Integer zzbfl = null;
    private zzjr zzbfm = null;

    public zzjq() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public final zzjq zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 8:
                    zzfljVar.getPosition();
                    this.zzbfc = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                    break;
                case 16:
                    int position = zzfljVar.getPosition();
                    try {
                        this.zzbfd = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                        break;
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                        break;
                    }
                case 24:
                    this.zzbfe = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 32:
                    this.zzbff = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 40:
                    this.zzbfg = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 48:
                    this.zzbfh = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 56:
                    this.zzbfi = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 64:
                    this.zzbfj = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 72:
                    this.zzbfk = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 80:
                    this.zzbfl = Integer.valueOf(zzfljVar.zzcym());
                    break;
                case 90:
                    if (this.zzbfm == null) {
                        this.zzbfm = new zzjr();
                    }
                    zzfljVar.zza(this.zzbfm);
                    break;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
                    break;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbfc != null) {
            zzflkVar.zzad(1, this.zzbfc.intValue());
        }
        if (this.zzbfd != null) {
            zzflkVar.zzad(2, this.zzbfd.intValue());
        }
        if (this.zzbfe != null) {
            zzflkVar.zzad(3, this.zzbfe.intValue());
        }
        if (this.zzbff != null) {
            zzflkVar.zzad(4, this.zzbff.intValue());
        }
        if (this.zzbfg != null) {
            zzflkVar.zzad(5, this.zzbfg.intValue());
        }
        if (this.zzbfh != null) {
            zzflkVar.zzad(6, this.zzbfh.intValue());
        }
        if (this.zzbfi != null) {
            zzflkVar.zzad(7, this.zzbfi.intValue());
        }
        if (this.zzbfj != null) {
            zzflkVar.zzad(8, this.zzbfj.intValue());
        }
        if (this.zzbfk != null) {
            zzflkVar.zzad(9, this.zzbfk.intValue());
        }
        if (this.zzbfl != null) {
            zzflkVar.zzad(10, this.zzbfl.intValue());
        }
        if (this.zzbfm != null) {
            zzflkVar.zza(11, this.zzbfm);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbfc != null) {
            zzq += zzflk.zzag(1, this.zzbfc.intValue());
        }
        if (this.zzbfd != null) {
            zzq += zzflk.zzag(2, this.zzbfd.intValue());
        }
        if (this.zzbfe != null) {
            zzq += zzflk.zzag(3, this.zzbfe.intValue());
        }
        if (this.zzbff != null) {
            zzq += zzflk.zzag(4, this.zzbff.intValue());
        }
        if (this.zzbfg != null) {
            zzq += zzflk.zzag(5, this.zzbfg.intValue());
        }
        if (this.zzbfh != null) {
            zzq += zzflk.zzag(6, this.zzbfh.intValue());
        }
        if (this.zzbfi != null) {
            zzq += zzflk.zzag(7, this.zzbfi.intValue());
        }
        if (this.zzbfj != null) {
            zzq += zzflk.zzag(8, this.zzbfj.intValue());
        }
        if (this.zzbfk != null) {
            zzq += zzflk.zzag(9, this.zzbfk.intValue());
        }
        if (this.zzbfl != null) {
            zzq += zzflk.zzag(10, this.zzbfl.intValue());
        }
        return this.zzbfm != null ? zzq + zzflk.zzb(11, this.zzbfm) : zzq;
    }
}
