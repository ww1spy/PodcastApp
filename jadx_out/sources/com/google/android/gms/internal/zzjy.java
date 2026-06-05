package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjy extends zzflm<zzjy> {
    private Integer zzbgq = null;

    public zzjy() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0019. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public final zzjy zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                int position = zzfljVar.getPosition();
                try {
                    int zzcym = zzfljVar.zzcym();
                    switch (zzcym) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.zzbgq = Integer.valueOf(zzcym);
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(46);
                            sb.append(zzcym);
                            sb.append(" is not a valid enum VideoErrorCode");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbgq != null) {
            zzflkVar.zzad(1, this.zzbgq.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        return this.zzbgq != null ? zzq + zzflk.zzag(1, this.zzbgq.intValue()) : zzq;
    }
}
