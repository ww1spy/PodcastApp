package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfma extends zzflm<zzfma> {
    private byte[] zzpwz = null;
    private byte[] zzpxa = null;
    private byte[] zzpxb = null;

    public zzfma() {
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
                this.zzpwz = zzfljVar.readBytes();
            } else if (zzcxx == 18) {
                this.zzpxa = zzfljVar.readBytes();
            } else if (zzcxx == 26) {
                this.zzpxb = zzfljVar.readBytes();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpwz != null) {
            zzflkVar.zzc(1, this.zzpwz);
        }
        if (this.zzpxa != null) {
            zzflkVar.zzc(2, this.zzpxa);
        }
        if (this.zzpxb != null) {
            zzflkVar.zzc(3, this.zzpxb);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzpwz != null) {
            zzq += zzflk.zzd(1, this.zzpwz);
        }
        if (this.zzpxa != null) {
            zzq += zzflk.zzd(2, this.zzpxa);
        }
        return this.zzpxb != null ? zzq + zzflk.zzd(3, this.zzpxb) : zzq;
    }
}
