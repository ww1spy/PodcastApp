package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzju extends zzflm<zzju> {
    private static volatile zzju[] zzbfs;
    private Integer zzbft = null;
    private Integer zzbfu = null;

    public zzju() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzju[] zzhx() {
        if (zzbfs == null) {
            synchronized (zzflq.zzpvt) {
                if (zzbfs == null) {
                    zzbfs = new zzju[0];
                }
            }
        }
        return zzbfs;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.zzbft = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 16) {
                this.zzbfu = Integer.valueOf(zzfljVar.zzcym());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbft != null) {
            zzflkVar.zzad(1, this.zzbft.intValue());
        }
        if (this.zzbfu != null) {
            zzflkVar.zzad(2, this.zzbfu.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbft != null) {
            zzq += zzflk.zzag(1, this.zzbft.intValue());
        }
        return this.zzbfu != null ? zzq + zzflk.zzag(2, this.zzbfu.intValue()) : zzq;
    }
}
