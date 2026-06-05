package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbe extends zzflm<zzbe> {
    public byte[] data = null;
    public byte[] zzgk = null;
    public byte[] zzgl = null;
    public byte[] zzgm = null;

    public zzbe() {
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
                this.data = zzfljVar.readBytes();
            } else if (zzcxx == 18) {
                this.zzgk = zzfljVar.readBytes();
            } else if (zzcxx == 26) {
                this.zzgl = zzfljVar.readBytes();
            } else if (zzcxx == 34) {
                this.zzgm = zzfljVar.readBytes();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.data != null) {
            zzflkVar.zzc(1, this.data);
        }
        if (this.zzgk != null) {
            zzflkVar.zzc(2, this.zzgk);
        }
        if (this.zzgl != null) {
            zzflkVar.zzc(3, this.zzgl);
        }
        if (this.zzgm != null) {
            zzflkVar.zzc(4, this.zzgm);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.data != null) {
            zzq += zzflk.zzd(1, this.data);
        }
        if (this.zzgk != null) {
            zzq += zzflk.zzd(2, this.zzgk);
        }
        if (this.zzgl != null) {
            zzq += zzflk.zzd(3, this.zzgl);
        }
        return this.zzgm != null ? zzq + zzflk.zzd(4, this.zzgm) : zzq;
    }
}
