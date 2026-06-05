package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjr extends zzflm<zzjr> {
    private Integer zzbfn = null;
    private Integer zzbfo = null;

    public zzjr() {
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
                this.zzbfn = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 16) {
                this.zzbfo = Integer.valueOf(zzfljVar.zzcym());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbfn != null) {
            zzflkVar.zzad(1, this.zzbfn.intValue());
        }
        if (this.zzbfo != null) {
            zzflkVar.zzad(2, this.zzbfo.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbfn != null) {
            zzq += zzflk.zzag(1, this.zzbfn.intValue());
        }
        return this.zzbfo != null ? zzq + zzflk.zzag(2, this.zzbfo.intValue()) : zzq;
    }
}
