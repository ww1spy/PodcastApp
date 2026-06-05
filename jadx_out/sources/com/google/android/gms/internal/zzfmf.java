package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmf extends zzflm<zzfmf> {
    public String zzpxp = null;
    public Long zzpxq = null;
    public Boolean zzpxr = null;

    public zzfmf() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzpxp = zzfljVar.readString();
            } else if (zzcxx == 16) {
                this.zzpxq = Long.valueOf(zzfljVar.zzcxz());
            } else if (zzcxx == 24) {
                this.zzpxr = Boolean.valueOf(zzfljVar.zzcyd());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpxp != null) {
            zzflkVar.zzp(1, this.zzpxp);
        }
        if (this.zzpxq != null) {
            zzflkVar.zzf(2, this.zzpxq.longValue());
        }
        if (this.zzpxr != null) {
            zzflkVar.zzl(3, this.zzpxr.booleanValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzpxp != null) {
            zzq += zzflk.zzq(1, this.zzpxp);
        }
        if (this.zzpxq != null) {
            zzq += zzflk.zzc(2, this.zzpxq.longValue());
        }
        if (this.zzpxr == null) {
            return zzq;
        }
        this.zzpxr.booleanValue();
        return zzq + zzflk.zzlw(3) + 1;
    }
}
