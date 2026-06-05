package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbr extends zzflm<zzbr> {
    private static volatile zzbr[] zzye;
    public String name = "";
    private zzbt zzyf = null;
    public zzbn zzyg = null;

    public zzbr() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzbr[] zzw() {
        if (zzye == null) {
            synchronized (zzflq.zzpvt) {
                if (zzye == null) {
                    zzye = new zzbr[0];
                }
            }
        }
        return zzye;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbr)) {
            return false;
        }
        zzbr zzbrVar = (zzbr) obj;
        if (this.name == null) {
            if (zzbrVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzbrVar.name)) {
            return false;
        }
        if (this.zzyf == null) {
            if (zzbrVar.zzyf != null) {
                return false;
            }
        } else if (!this.zzyf.equals(zzbrVar.zzyf)) {
            return false;
        }
        if (this.zzyg == null) {
            if (zzbrVar.zzyg != null) {
                return false;
            }
        } else if (!this.zzyg.equals(zzbrVar.zzyg)) {
            return false;
        }
        return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbrVar.zzpvl == null || zzbrVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbrVar.zzpvl);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((527 + getClass().getName().hashCode()) * 31) + (this.name == null ? 0 : this.name.hashCode());
        zzbt zzbtVar = this.zzyf;
        int hashCode2 = (hashCode * 31) + (zzbtVar == null ? 0 : zzbtVar.hashCode());
        zzbn zzbnVar = this.zzyg;
        int hashCode3 = ((hashCode2 * 31) + (zzbnVar == null ? 0 : zzbnVar.hashCode())) * 31;
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
            if (zzcxx != 10) {
                if (zzcxx == 18) {
                    if (this.zzyf == null) {
                        this.zzyf = new zzbt();
                    }
                    zzflsVar = this.zzyf;
                } else if (zzcxx == 26) {
                    if (this.zzyg == null) {
                        this.zzyg = new zzbn();
                    }
                    zzflsVar = this.zzyg;
                } else if (!super.zza(zzfljVar, zzcxx)) {
                    return this;
                }
                zzfljVar.zza(zzflsVar);
            } else {
                this.name = zzfljVar.readString();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.name != null && !this.name.equals("")) {
            zzflkVar.zzp(1, this.name);
        }
        if (this.zzyf != null) {
            zzflkVar.zza(2, this.zzyf);
        }
        if (this.zzyg != null) {
            zzflkVar.zza(3, this.zzyg);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.name != null && !this.name.equals("")) {
            zzq += zzflk.zzq(1, this.name);
        }
        if (this.zzyf != null) {
            zzq += zzflk.zzb(2, this.zzyf);
        }
        return this.zzyg != null ? zzq + zzflk.zzb(3, this.zzyg) : zzq;
    }
}
