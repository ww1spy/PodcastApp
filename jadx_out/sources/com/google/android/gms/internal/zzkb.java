package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzkb extends zzflm<zzkb> {
    private Integer zzbew = null;
    private zzjy zzbgo = null;
    private zzju zzbgp = null;

    public zzkb() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public final zzkb zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx != 8) {
                if (zzcxx == 18) {
                    if (this.zzbgo == null) {
                        this.zzbgo = new zzjy();
                    }
                    zzflsVar = this.zzbgo;
                } else if (zzcxx == 26) {
                    if (this.zzbgp == null) {
                        this.zzbgp = new zzju();
                    }
                    zzflsVar = this.zzbgp;
                } else if (!super.zza(zzfljVar, zzcxx)) {
                    return this;
                }
                zzfljVar.zza(zzflsVar);
            } else {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbew = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
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
        if (this.zzbgp != null) {
            zzflkVar.zza(3, this.zzbgp);
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
        return this.zzbgp != null ? zzq + zzflk.zzb(3, this.zzbgp) : zzq;
    }
}
