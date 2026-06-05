package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbf extends zzflm<zzbf> {
    public Long zzgf = null;
    private String zzgn = null;
    private byte[] zzgo = null;

    public zzbf() {
        this.zzpnr = -1;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.zzgf = Long.valueOf(zzfljVar.zzcyr());
            } else if (zzcxx == 26) {
                this.zzgn = zzfljVar.readString();
            } else if (zzcxx == 34) {
                this.zzgo = zzfljVar.readBytes();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzgf != null) {
            zzflkVar.zzf(1, this.zzgf.longValue());
        }
        if (this.zzgn != null) {
            zzflkVar.zzp(3, this.zzgn);
        }
        if (this.zzgo != null) {
            zzflkVar.zzc(4, this.zzgo);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzgf != null) {
            zzq += zzflk.zzc(1, this.zzgf.longValue());
        }
        if (this.zzgn != null) {
            zzq += zzflk.zzq(3, this.zzgn);
        }
        return this.zzgo != null ? zzq + zzflk.zzd(4, this.zzgo) : zzq;
    }
}
