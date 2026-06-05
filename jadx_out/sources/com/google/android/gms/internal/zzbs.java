package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbs extends zzflm<zzbs> {
    public zzbr[] zzyh = zzbr.zzw();
    public zzbp zzyi = null;
    public String zzyj = "";

    public zzbs() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbs)) {
            return false;
        }
        zzbs zzbsVar = (zzbs) obj;
        if (!zzflq.equals(this.zzyh, zzbsVar.zzyh)) {
            return false;
        }
        if (this.zzyi == null) {
            if (zzbsVar.zzyi != null) {
                return false;
            }
        } else if (!this.zzyi.equals(zzbsVar.zzyi)) {
            return false;
        }
        if (this.zzyj == null) {
            if (zzbsVar.zzyj != null) {
                return false;
            }
        } else if (!this.zzyj.equals(zzbsVar.zzyj)) {
            return false;
        }
        return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbsVar.zzpvl == null || zzbsVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbsVar.zzpvl);
    }

    public final int hashCode() {
        int hashCode = ((527 + getClass().getName().hashCode()) * 31) + zzflq.hashCode(this.zzyh);
        zzbp zzbpVar = this.zzyi;
        int i = 0;
        int hashCode2 = ((((hashCode * 31) + (zzbpVar == null ? 0 : zzbpVar.hashCode())) * 31) + (this.zzyj == null ? 0 : this.zzyj.hashCode())) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode2 + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                int zzb = zzflv.zzb(zzfljVar, 10);
                int length = this.zzyh == null ? 0 : this.zzyh.length;
                zzbr[] zzbrVarArr = new zzbr[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzyh, 0, zzbrVarArr, 0, length);
                }
                while (length < zzbrVarArr.length - 1) {
                    zzbrVarArr[length] = new zzbr();
                    zzfljVar.zza(zzbrVarArr[length]);
                    zzfljVar.zzcxx();
                    length++;
                }
                zzbrVarArr[length] = new zzbr();
                zzfljVar.zza(zzbrVarArr[length]);
                this.zzyh = zzbrVarArr;
            } else if (zzcxx == 18) {
                if (this.zzyi == null) {
                    this.zzyi = new zzbp();
                }
                zzfljVar.zza(this.zzyi);
            } else if (zzcxx == 26) {
                this.zzyj = zzfljVar.readString();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzyh != null && this.zzyh.length > 0) {
            for (int i = 0; i < this.zzyh.length; i++) {
                zzbr zzbrVar = this.zzyh[i];
                if (zzbrVar != null) {
                    zzflkVar.zza(1, zzbrVar);
                }
            }
        }
        if (this.zzyi != null) {
            zzflkVar.zza(2, this.zzyi);
        }
        if (this.zzyj != null && !this.zzyj.equals("")) {
            zzflkVar.zzp(3, this.zzyj);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzyh != null && this.zzyh.length > 0) {
            for (int i = 0; i < this.zzyh.length; i++) {
                zzbr zzbrVar = this.zzyh[i];
                if (zzbrVar != null) {
                    zzq += zzflk.zzb(1, zzbrVar);
                }
            }
        }
        if (this.zzyi != null) {
            zzq += zzflk.zzb(2, this.zzyi);
        }
        return (this.zzyj == null || this.zzyj.equals("")) ? zzq : zzq + zzflk.zzq(3, this.zzyj);
    }
}
