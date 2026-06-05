package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbc extends zzflm<zzbc> {
    private Long zzeo = null;
    private Long zzep = null;
    public Long zzgc = null;
    public Long zzgd = null;
    public Long zzge = null;

    public zzbc() {
        this.zzpnr = -1;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.zzeo = Long.valueOf(zzfljVar.zzcyr());
            } else if (zzcxx == 16) {
                this.zzep = Long.valueOf(zzfljVar.zzcyr());
            } else if (zzcxx == 24) {
                this.zzgc = Long.valueOf(zzfljVar.zzcyr());
            } else if (zzcxx == 32) {
                this.zzgd = Long.valueOf(zzfljVar.zzcyr());
            } else if (zzcxx == 40) {
                this.zzge = Long.valueOf(zzfljVar.zzcyr());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzeo != null) {
            zzflkVar.zzf(1, this.zzeo.longValue());
        }
        if (this.zzep != null) {
            zzflkVar.zzf(2, this.zzep.longValue());
        }
        if (this.zzgc != null) {
            zzflkVar.zzf(3, this.zzgc.longValue());
        }
        if (this.zzgd != null) {
            zzflkVar.zzf(4, this.zzgd.longValue());
        }
        if (this.zzge != null) {
            zzflkVar.zzf(5, this.zzge.longValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzeo != null) {
            zzq += zzflk.zzc(1, this.zzeo.longValue());
        }
        if (this.zzep != null) {
            zzq += zzflk.zzc(2, this.zzep.longValue());
        }
        if (this.zzgc != null) {
            zzq += zzflk.zzc(3, this.zzgc.longValue());
        }
        if (this.zzgd != null) {
            zzq += zzflk.zzc(4, this.zzgd.longValue());
        }
        return this.zzge != null ? zzq + zzflk.zzc(5, this.zzge.longValue()) : zzq;
    }
}
