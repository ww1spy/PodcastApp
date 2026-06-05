package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzdkf extends zzflm<zzdkf> {
    public long zzldl = 0;
    public zzbp zzyi = null;
    public zzbs zzldm = null;

    public zzdkf() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdkf)) {
            return false;
        }
        zzdkf zzdkfVar = (zzdkf) obj;
        if (this.zzldl != zzdkfVar.zzldl) {
            return false;
        }
        if (this.zzyi == null) {
            if (zzdkfVar.zzyi != null) {
                return false;
            }
        } else if (!this.zzyi.equals(zzdkfVar.zzyi)) {
            return false;
        }
        if (this.zzldm == null) {
            if (zzdkfVar.zzldm != null) {
                return false;
            }
        } else if (!this.zzldm.equals(zzdkfVar.zzldm)) {
            return false;
        }
        return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzdkfVar.zzpvl == null || zzdkfVar.zzpvl.isEmpty() : this.zzpvl.equals(zzdkfVar.zzpvl);
    }

    public final int hashCode() {
        int hashCode = ((527 + getClass().getName().hashCode()) * 31) + ((int) (this.zzldl ^ (this.zzldl >>> 32)));
        zzbp zzbpVar = this.zzyi;
        int i = 0;
        int hashCode2 = (hashCode * 31) + (zzbpVar == null ? 0 : zzbpVar.hashCode());
        zzbs zzbsVar = this.zzldm;
        int hashCode3 = ((hashCode2 * 31) + (zzbsVar == null ? 0 : zzbsVar.hashCode())) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode3 + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx != 8) {
                if (zzcxx == 18) {
                    if (this.zzyi == null) {
                        this.zzyi = new zzbp();
                    }
                    zzflsVar = this.zzyi;
                } else if (zzcxx == 26) {
                    if (this.zzldm == null) {
                        this.zzldm = new zzbs();
                    }
                    zzflsVar = this.zzldm;
                } else if (!super.zza(zzfljVar, zzcxx)) {
                    return this;
                }
                zzfljVar.zza(zzflsVar);
            } else {
                this.zzldl = zzfljVar.zzcyr();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        zzflkVar.zzf(1, this.zzldl);
        if (this.zzyi != null) {
            zzflkVar.zza(2, this.zzyi);
        }
        if (this.zzldm != null) {
            zzflkVar.zza(3, this.zzldm);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq() + zzflk.zzc(1, this.zzldl);
        if (this.zzyi != null) {
            zzq += zzflk.zzb(2, this.zzyi);
        }
        return this.zzldm != null ? zzq + zzflk.zzb(3, this.zzldm) : zzq;
    }
}
