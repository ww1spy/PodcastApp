package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjs extends zzflm<zzjs> {
    private Integer zzbfp = null;
    private Integer zzbfq = null;

    public zzjs() {
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
                this.zzbfp = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 16) {
                this.zzbfq = Integer.valueOf(zzfljVar.zzcym());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbfp != null) {
            zzflkVar.zzad(1, this.zzbfp.intValue());
        }
        if (this.zzbfq != null) {
            zzflkVar.zzad(2, this.zzbfq.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbfp != null) {
            zzq += zzflk.zzag(1, this.zzbfp.intValue());
        }
        return this.zzbfq != null ? zzq + zzflk.zzag(2, this.zzbfq.intValue()) : zzq;
    }
}
