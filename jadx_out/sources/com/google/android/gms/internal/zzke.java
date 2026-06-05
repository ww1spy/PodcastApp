package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzke extends zzflm<zzke> {
    private Integer zzbew = null;
    private zzjy zzbgo = null;

    public zzke() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzab, reason: merged with bridge method [inline-methods] */
    public final zzke zza(zzflj zzfljVar) throws IOException {
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
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbew != null) {
            zzq += zzflk.zzag(1, this.zzbew.intValue());
        }
        return this.zzbgo != null ? zzq + zzflk.zzb(2, this.zzbgo) : zzq;
    }
}
