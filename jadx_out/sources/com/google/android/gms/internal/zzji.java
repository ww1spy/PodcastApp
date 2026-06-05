package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzji extends zzflm<zzji> {
    public String zzbdw = null;
    private zzju zzbdx = null;
    private Integer zzbdy = null;
    public zzjv zzbdz = null;
    private Integer zzbea = null;
    private Integer zzbeb = null;
    private Integer zzbec = null;
    private Integer zzbed = null;

    public zzji() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public final zzji zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx != 10) {
                if (zzcxx == 18) {
                    if (this.zzbdx == null) {
                        this.zzbdx = new zzju();
                    }
                    zzflsVar = this.zzbdx;
                } else if (zzcxx == 24) {
                    this.zzbdy = Integer.valueOf(zzfljVar.zzcym());
                } else if (zzcxx == 34) {
                    if (this.zzbdz == null) {
                        this.zzbdz = new zzjv();
                    }
                    zzflsVar = this.zzbdz;
                } else if (zzcxx == 40) {
                    this.zzbea = Integer.valueOf(zzfljVar.zzcym());
                } else if (zzcxx == 48) {
                    zzfljVar.getPosition();
                    this.zzbeb = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } else if (zzcxx == 56) {
                    zzfljVar.getPosition();
                    this.zzbec = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } else if (zzcxx == 64) {
                    int position = zzfljVar.getPosition();
                    try {
                        this.zzbed = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                    }
                } else if (!super.zza(zzfljVar, zzcxx)) {
                    return this;
                }
                zzfljVar.zza(zzflsVar);
            } else {
                this.zzbdw = zzfljVar.readString();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbdw != null) {
            zzflkVar.zzp(1, this.zzbdw);
        }
        if (this.zzbdx != null) {
            zzflkVar.zza(2, this.zzbdx);
        }
        if (this.zzbdy != null) {
            zzflkVar.zzad(3, this.zzbdy.intValue());
        }
        if (this.zzbdz != null) {
            zzflkVar.zza(4, this.zzbdz);
        }
        if (this.zzbea != null) {
            zzflkVar.zzad(5, this.zzbea.intValue());
        }
        if (this.zzbeb != null) {
            zzflkVar.zzad(6, this.zzbeb.intValue());
        }
        if (this.zzbec != null) {
            zzflkVar.zzad(7, this.zzbec.intValue());
        }
        if (this.zzbed != null) {
            zzflkVar.zzad(8, this.zzbed.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbdw != null) {
            zzq += zzflk.zzq(1, this.zzbdw);
        }
        if (this.zzbdx != null) {
            zzq += zzflk.zzb(2, this.zzbdx);
        }
        if (this.zzbdy != null) {
            zzq += zzflk.zzag(3, this.zzbdy.intValue());
        }
        if (this.zzbdz != null) {
            zzq += zzflk.zzb(4, this.zzbdz);
        }
        if (this.zzbea != null) {
            zzq += zzflk.zzag(5, this.zzbea.intValue());
        }
        if (this.zzbeb != null) {
            zzq += zzflk.zzag(6, this.zzbeb.intValue());
        }
        if (this.zzbec != null) {
            zzq += zzflk.zzag(7, this.zzbec.intValue());
        }
        return this.zzbed != null ? zzq + zzflk.zzag(8, this.zzbed.intValue()) : zzq;
    }
}
