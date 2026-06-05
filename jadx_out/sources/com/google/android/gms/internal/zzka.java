package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzka extends zzflm<zzka> {
    private Integer zzbew = null;
    private zzjy zzbgo = null;
    private Integer zzbgg = null;
    private Integer zzbgh = null;
    private Integer zzbgs = null;

    public zzka() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzx, reason: merged with bridge method [inline-methods] */
    public final zzka zza(zzflj zzfljVar) throws IOException {
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
            } else if (zzcxx == 18) {
                if (this.zzbgo == null) {
                    this.zzbgo = new zzjy();
                }
                zzfljVar.zza(this.zzbgo);
            } else if (zzcxx == 24) {
                this.zzbgg = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 32) {
                this.zzbgh = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 40) {
                this.zzbgs = Integer.valueOf(zzfljVar.zzcym());
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
        if (this.zzbgo != null) {
            zzflkVar.zza(2, this.zzbgo);
        }
        if (this.zzbgg != null) {
            zzflkVar.zzad(3, this.zzbgg.intValue());
        }
        if (this.zzbgh != null) {
            zzflkVar.zzad(4, this.zzbgh.intValue());
        }
        if (this.zzbgs != null) {
            zzflkVar.zzad(5, this.zzbgs.intValue());
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
        if (this.zzbgo != null) {
            zzq += zzflk.zzb(2, this.zzbgo);
        }
        if (this.zzbgg != null) {
            zzq += zzflk.zzag(3, this.zzbgg.intValue());
        }
        if (this.zzbgh != null) {
            zzq += zzflk.zzag(4, this.zzbgh.intValue());
        }
        return this.zzbgs != null ? zzq + zzflk.zzag(5, this.zzbgs.intValue()) : zzq;
    }
}
