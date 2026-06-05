package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzflz extends zzflm<zzflz> {
    private zzfma zzpwv = null;
    public zzfly[] zzpww = zzfly.zzdcs();
    private byte[] body = null;
    private byte[] zzpwx = null;
    private Integer zzpwy = null;

    public zzflz() {
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
                if (this.zzpwv == null) {
                    this.zzpwv = new zzfma();
                }
                zzfljVar.zza(this.zzpwv);
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
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpwv != null) {
            zzflkVar.zza(1, this.zzpwv);
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
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzpwv != null) {
            zzq += zzflk.zzb(1, this.zzpwv);
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
        return this.zzpwy != null ? zzq + zzflk.zzag(5, this.zzpwy.intValue()) : zzq;
    }
}
