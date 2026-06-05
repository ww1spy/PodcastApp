package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjv extends zzflm<zzjv> {
    public Integer zzbfv = null;
    public Integer zzbfw = null;
    public Integer zzbfx = null;

    public zzjv() {
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
                this.zzbfv = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 16) {
                this.zzbfw = Integer.valueOf(zzfljVar.zzcym());
            } else if (zzcxx == 24) {
                this.zzbfx = Integer.valueOf(zzfljVar.zzcym());
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbfv != null) {
            zzflkVar.zzad(1, this.zzbfv.intValue());
        }
        if (this.zzbfw != null) {
            zzflkVar.zzad(2, this.zzbfw.intValue());
        }
        if (this.zzbfx != null) {
            zzflkVar.zzad(3, this.zzbfx.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbfv != null) {
            zzq += zzflk.zzag(1, this.zzbfv.intValue());
        }
        if (this.zzbfw != null) {
            zzq += zzflk.zzag(2, this.zzbfw.intValue());
        }
        return this.zzbfx != null ? zzq + zzflk.zzag(3, this.zzbfx.intValue()) : zzq;
    }
}
