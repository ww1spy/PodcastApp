package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbm extends zzflm<zzbm> {
    private static volatile zzbm[] zzwl;
    public String key = "";
    public long zzwm = 0;
    public long zzwn = 2147483647L;
    public boolean zzwo = false;
    public long zzwp = 0;

    public zzbm() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzbm[] zzt() {
        if (zzwl == null) {
            synchronized (zzflq.zzpvt) {
                if (zzwl == null) {
                    zzwl = new zzbm[0];
                }
            }
        }
        return zzwl;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbm)) {
            return false;
        }
        zzbm zzbmVar = (zzbm) obj;
        if (this.key == null) {
            if (zzbmVar.key != null) {
                return false;
            }
        } else if (!this.key.equals(zzbmVar.key)) {
            return false;
        }
        if (this.zzwm == zzbmVar.zzwm && this.zzwn == zzbmVar.zzwn && this.zzwo == zzbmVar.zzwo && this.zzwp == zzbmVar.zzwp) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbmVar.zzpvl == null || zzbmVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbmVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((527 + getClass().getName().hashCode()) * 31) + (this.key == null ? 0 : this.key.hashCode())) * 31) + ((int) (this.zzwm ^ (this.zzwm >>> 32)))) * 31) + ((int) (this.zzwn ^ (this.zzwn >>> 32)))) * 31) + (this.zzwo ? 1231 : 1237)) * 31) + ((int) (this.zzwp ^ (this.zzwp >>> 32)))) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.key = zzfljVar.readString();
            } else if (zzcxx == 16) {
                this.zzwm = zzfljVar.zzcyr();
            } else if (zzcxx == 24) {
                this.zzwn = zzfljVar.zzcyr();
            } else if (zzcxx == 32) {
                this.zzwo = zzfljVar.zzcyd();
            } else if (zzcxx == 40) {
                this.zzwp = zzfljVar.zzcyr();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.key != null && !this.key.equals("")) {
            zzflkVar.zzp(1, this.key);
        }
        if (this.zzwm != 0) {
            zzflkVar.zzf(2, this.zzwm);
        }
        if (this.zzwn != 2147483647L) {
            zzflkVar.zzf(3, this.zzwn);
        }
        if (this.zzwo) {
            zzflkVar.zzl(4, this.zzwo);
        }
        if (this.zzwp != 0) {
            zzflkVar.zzf(5, this.zzwp);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.key != null && !this.key.equals("")) {
            zzq += zzflk.zzq(1, this.key);
        }
        if (this.zzwm != 0) {
            zzq += zzflk.zzc(2, this.zzwm);
        }
        if (this.zzwn != 2147483647L) {
            zzq += zzflk.zzc(3, this.zzwn);
        }
        if (this.zzwo) {
            zzq += zzflk.zzlw(4) + 1;
        }
        return this.zzwp != 0 ? zzq + zzflk.zzc(5, this.zzwp) : zzq;
    }
}
