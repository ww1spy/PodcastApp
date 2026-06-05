package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmc extends zzflm<zzfmc> {
    private Integer zzpxe = null;
    private byte[] zzpxf = null;
    private byte[] zzpxb = null;

    public zzfmc() {
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
            if (zzcxx == 8) {
                this.zzpxe = Integer.valueOf(zzfljVar.zzcya());
            } else if (zzcxx == 18) {
                this.zzpxf = zzfljVar.readBytes();
            } else if (zzcxx == 26) {
                this.zzpxb = zzfljVar.readBytes();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzpxe != null) {
            zzflkVar.zzad(1, this.zzpxe.intValue());
        }
        if (this.zzpxf != null) {
            zzflkVar.zzc(2, this.zzpxf);
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
        if (this.zzpxe != null) {
            zzq += zzflk.zzag(1, this.zzpxe.intValue());
        }
        if (this.zzpxf != null) {
            zzq += zzflk.zzd(2, this.zzpxf);
        }
        return this.zzpxb != null ? zzq + zzflk.zzd(3, this.zzpxb) : zzq;
    }
}
