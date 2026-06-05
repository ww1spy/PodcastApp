package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbb extends zzflm<zzbb> {
    private static volatile zzbb[] zzfi;
    public Integer zzfn;
    public Integer zzfr;
    public Long zzdm = null;
    public Long zzdn = null;
    public Long zzfj = null;
    public Long zzfk = null;
    public Long zzfl = null;
    public Long zzfm = null;
    public Long zzfo = null;
    public Long zzfp = null;
    public Long zzfq = null;
    public Long zzfs = null;
    public Long zzft = null;
    public Long zzfu = null;
    public Long zzfv = null;
    public Long zzfw = null;
    public Long zzfx = null;
    public Long zzfy = null;
    public Long zzfz = null;
    private Long zzga = null;
    private Long zzgb = null;

    public zzbb() {
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzbb zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 8:
                    this.zzdm = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 16:
                    this.zzdn = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 24:
                    this.zzfj = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 32:
                    this.zzfk = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 40:
                    this.zzfl = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 48:
                    this.zzfm = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 56:
                    zzfljVar.getPosition();
                    this.zzfn = Integer.valueOf(zzaz.zzd(zzfljVar.zzcym()));
                    break;
                case 64:
                    this.zzfo = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 72:
                    this.zzfp = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 80:
                    this.zzfq = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 88:
                    int position = zzfljVar.getPosition();
                    try {
                        this.zzfr = Integer.valueOf(zzaz.zzd(zzfljVar.zzcym()));
                        break;
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                        break;
                    }
                case 96:
                    this.zzfs = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 104:
                    this.zzft = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 112:
                    this.zzfu = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 120:
                    this.zzfv = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 128:
                    this.zzfw = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 136:
                    this.zzfx = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 144:
                    this.zzfy = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 152:
                    this.zzfz = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 160:
                    this.zzga = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 168:
                    this.zzgb = Long.valueOf(zzfljVar.zzcyr());
                    break;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
                    break;
            }
        }
    }

    public static zzbb[] zzr() {
        if (zzfi == null) {
            synchronized (zzflq.zzpvt) {
                if (zzfi == null) {
                    zzfi = new zzbb[0];
                }
            }
        }
        return zzfi;
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzdm != null) {
            zzflkVar.zzf(1, this.zzdm.longValue());
        }
        if (this.zzdn != null) {
            zzflkVar.zzf(2, this.zzdn.longValue());
        }
        if (this.zzfj != null) {
            zzflkVar.zzf(3, this.zzfj.longValue());
        }
        if (this.zzfk != null) {
            zzflkVar.zzf(4, this.zzfk.longValue());
        }
        if (this.zzfl != null) {
            zzflkVar.zzf(5, this.zzfl.longValue());
        }
        if (this.zzfm != null) {
            zzflkVar.zzf(6, this.zzfm.longValue());
        }
        if (this.zzfn != null) {
            zzflkVar.zzad(7, this.zzfn.intValue());
        }
        if (this.zzfo != null) {
            zzflkVar.zzf(8, this.zzfo.longValue());
        }
        if (this.zzfp != null) {
            zzflkVar.zzf(9, this.zzfp.longValue());
        }
        if (this.zzfq != null) {
            zzflkVar.zzf(10, this.zzfq.longValue());
        }
        if (this.zzfr != null) {
            zzflkVar.zzad(11, this.zzfr.intValue());
        }
        if (this.zzfs != null) {
            zzflkVar.zzf(12, this.zzfs.longValue());
        }
        if (this.zzft != null) {
            zzflkVar.zzf(13, this.zzft.longValue());
        }
        if (this.zzfu != null) {
            zzflkVar.zzf(14, this.zzfu.longValue());
        }
        if (this.zzfv != null) {
            zzflkVar.zzf(15, this.zzfv.longValue());
        }
        if (this.zzfw != null) {
            zzflkVar.zzf(16, this.zzfw.longValue());
        }
        if (this.zzfx != null) {
            zzflkVar.zzf(17, this.zzfx.longValue());
        }
        if (this.zzfy != null) {
            zzflkVar.zzf(18, this.zzfy.longValue());
        }
        if (this.zzfz != null) {
            zzflkVar.zzf(19, this.zzfz.longValue());
        }
        if (this.zzga != null) {
            zzflkVar.zzf(20, this.zzga.longValue());
        }
        if (this.zzgb != null) {
            zzflkVar.zzf(21, this.zzgb.longValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzdm != null) {
            zzq += zzflk.zzc(1, this.zzdm.longValue());
        }
        if (this.zzdn != null) {
            zzq += zzflk.zzc(2, this.zzdn.longValue());
        }
        if (this.zzfj != null) {
            zzq += zzflk.zzc(3, this.zzfj.longValue());
        }
        if (this.zzfk != null) {
            zzq += zzflk.zzc(4, this.zzfk.longValue());
        }
        if (this.zzfl != null) {
            zzq += zzflk.zzc(5, this.zzfl.longValue());
        }
        if (this.zzfm != null) {
            zzq += zzflk.zzc(6, this.zzfm.longValue());
        }
        if (this.zzfn != null) {
            zzq += zzflk.zzag(7, this.zzfn.intValue());
        }
        if (this.zzfo != null) {
            zzq += zzflk.zzc(8, this.zzfo.longValue());
        }
        if (this.zzfp != null) {
            zzq += zzflk.zzc(9, this.zzfp.longValue());
        }
        if (this.zzfq != null) {
            zzq += zzflk.zzc(10, this.zzfq.longValue());
        }
        if (this.zzfr != null) {
            zzq += zzflk.zzag(11, this.zzfr.intValue());
        }
        if (this.zzfs != null) {
            zzq += zzflk.zzc(12, this.zzfs.longValue());
        }
        if (this.zzft != null) {
            zzq += zzflk.zzc(13, this.zzft.longValue());
        }
        if (this.zzfu != null) {
            zzq += zzflk.zzc(14, this.zzfu.longValue());
        }
        if (this.zzfv != null) {
            zzq += zzflk.zzc(15, this.zzfv.longValue());
        }
        if (this.zzfw != null) {
            zzq += zzflk.zzc(16, this.zzfw.longValue());
        }
        if (this.zzfx != null) {
            zzq += zzflk.zzc(17, this.zzfx.longValue());
        }
        if (this.zzfy != null) {
            zzq += zzflk.zzc(18, this.zzfy.longValue());
        }
        if (this.zzfz != null) {
            zzq += zzflk.zzc(19, this.zzfz.longValue());
        }
        if (this.zzga != null) {
            zzq += zzflk.zzc(20, this.zzga.longValue());
        }
        return this.zzgb != null ? zzq + zzflk.zzc(21, this.zzgb.longValue()) : zzq;
    }
}
