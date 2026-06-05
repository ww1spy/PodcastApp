package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjp extends zzflm<zzjp> {
    private Integer zzbfa = null;
    private zzju zzbfb = null;

    public zzjp() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public final zzjp zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbfa = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 18) {
                if (this.zzbfb == null) {
                    this.zzbfb = new zzju();
                }
                zzfljVar.zza(this.zzbfb);
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbfa != null) {
            zzflkVar.zzad(1, this.zzbfa.intValue());
        }
        if (this.zzbfb != null) {
            zzflkVar.zza(2, this.zzbfb);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbfa != null) {
            zzq += zzflk.zzag(1, this.zzbfa.intValue());
        }
        return this.zzbfb != null ? zzq + zzflk.zzb(2, this.zzbfb) : zzq;
    }
}
