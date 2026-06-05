package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjz extends zzflm<zzjz> {
    private zzjv zzbgr = null;
    private Integer zzbew = null;
    private zzjy zzbgo = null;
    private zzju zzbgp = null;

    public zzjz() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzw, reason: merged with bridge method [inline-methods] */
    public final zzjz zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                if (this.zzbgr == null) {
                    this.zzbgr = new zzjv();
                }
                zzflsVar = this.zzbgr;
            } else if (zzcxx == 16) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbew = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 26) {
                if (this.zzbgo == null) {
                    this.zzbgo = new zzjy();
                }
                zzflsVar = this.zzbgo;
            } else if (zzcxx == 34) {
                if (this.zzbgp == null) {
                    this.zzbgp = new zzju();
                }
                zzflsVar = this.zzbgp;
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
            zzfljVar.zza(zzflsVar);
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbgr != null) {
            zzflkVar.zza(1, this.zzbgr);
        }
        if (this.zzbew != null) {
            zzflkVar.zzad(2, this.zzbew.intValue());
        }
        if (this.zzbgo != null) {
            zzflkVar.zza(3, this.zzbgo);
        }
        if (this.zzbgp != null) {
            zzflkVar.zza(4, this.zzbgp);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbgr != null) {
            zzq += zzflk.zzb(1, this.zzbgr);
        }
        if (this.zzbew != null) {
            zzq += zzflk.zzag(2, this.zzbew.intValue());
        }
        if (this.zzbgo != null) {
            zzq += zzflk.zzb(3, this.zzbgo);
        }
        return this.zzbgp != null ? zzq + zzflk.zzb(4, this.zzbgp) : zzq;
    }
}
