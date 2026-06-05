package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmb extends zzflm<zzfmb> {
    private zzfmc zzpxc = null;
    private zzfly[] zzpww = zzfly.zzdcs();
    private byte[] body = null;
    private byte[] zzpwx = null;
    private Integer zzpwy = null;
    private byte[] zzpxd = null;

    public zzfmb() {
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
                if (this.zzpxc == null) {
                    this.zzpxc = new zzfmc();
                }
                zzfljVar.zza(this.zzpxc);
            } else if (zzcxx == 18) {
                int zzb = zzflv.zzb(zzfljVar, 18);
                int length = this.zzpww == null ? 0 : this.zzpww.length;
                zzfly[] zzflyVarArr = new zzfly[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzpww, 0, zzflyVarArr, 0, length);
                }
                while (length < zzflyVarArr.length - 1) {
                    zzflyVarArr[length] = new zzfly();
                    zzfljVar.zza(zzflyVarArr[length]);
                    zzfljVar.zzcxx();
                    length++;
                }
                zzflyVarArr[length] = new zzfly();
                zzfljVar.zza(zzflyVarArr[length]);
                this.zzpww = zzflyVarArr;
            } else if (zzcxx == 26) {
                this.body = zzfljVar.readBytes();
            } else if (zzcxx == 34) {
                this.zzpwx = zzfljVar.readBytes();
            } else if (zzcxx == 40) {
                this.zzpwy = Integer.valueOf(zzfljVar.zzcya());
            } else if (zzcxx == 50) {
                this.zzpxd = zzfljVar.readBytes();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpxc != null) {
            zzflkVar.zza(1, this.zzpxc);
        }
        if (this.zzpww != null && this.zzpww.length > 0) {
            for (int i = 0; i < this.zzpww.length; i++) {
                zzfly zzflyVar = this.zzpww[i];
                if (zzflyVar != null) {
                    zzflkVar.zza(2, zzflyVar);
                }
            }
        }
        if (this.body != null) {
            zzflkVar.zzc(3, this.body);
        }
        if (this.zzpwx != null) {
            zzflkVar.zzc(4, this.zzpwx);
        }
        if (this.zzpwy != null) {
            zzflkVar.zzad(5, this.zzpwy.intValue());
        }
        if (this.zzpxd != null) {
            zzflkVar.zzc(6, this.zzpxd);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzpxc != null) {
            zzq += zzflk.zzb(1, this.zzpxc);
        }
        if (this.zzpww != null && this.zzpww.length > 0) {
            for (int i = 0; i < this.zzpww.length; i++) {
                zzfly zzflyVar = this.zzpww[i];
                if (zzflyVar != null) {
                    zzq += zzflk.zzb(2, zzflyVar);
                }
            }
        }
        if (this.body != null) {
            zzq += zzflk.zzd(3, this.body);
        }
        if (this.zzpwx != null) {
            zzq += zzflk.zzd(4, this.zzpwx);
        }
        if (this.zzpwy != null) {
            zzq += zzflk.zzag(5, this.zzpwy.intValue());
        }
        return this.zzpxd != null ? zzq + zzflk.zzd(6, this.zzpxd) : zzq;
    }
}
