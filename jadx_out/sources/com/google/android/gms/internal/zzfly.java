package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfly extends zzflm<zzfly> {
    private static volatile zzfly[] zzpwt;
    public byte[] zzpwu = null;
    public byte[] zzosz = null;

    public zzfly() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzfly[] zzdcs() {
        if (zzpwt == null) {
            synchronized (zzflq.zzpvt) {
                if (zzpwt == null) {
                    zzpwt = new zzfly[0];
                }
            }
        }
        return zzpwt;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzpwu = zzfljVar.readBytes();
            } else if (zzcxx == 18) {
                this.zzosz = zzfljVar.readBytes();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        zzflkVar.zzc(1, this.zzpwu);
        if (this.zzosz != null) {
            zzflkVar.zzc(2, this.zzosz);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq() + zzflk.zzd(1, this.zzpwu);
        return this.zzosz != null ? zzq + zzflk.zzd(2, this.zzosz) : zzq;
    }
}
