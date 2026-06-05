package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjo extends zzflm<zzjo> {
    private Integer zzbdh = null;
    private Integer zzbez = null;

    public zzjo() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public final zzjo zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                zzfljVar.getPosition();
                int zzcym = zzfljVar.zzcym();
                switch (zzcym) {
                    case 0:
                    case 1:
                    case 2:
                        this.zzbdh = Integer.valueOf(zzcym);
                        break;
                    default:
                        StringBuilder sb = new StringBuilder(43);
                        sb.append(zzcym);
                        sb.append(" is not a valid enum NetworkType");
                        throw new IllegalArgumentException(sb.toString());
                }
            } else if (zzcxx == 16) {
                try {
                    int zzcym2 = zzfljVar.zzcym();
                    if (zzcym2 != 4) {
                        switch (zzcym2) {
                            case 0:
                            case 1:
                            case 2:
                                break;
                            default:
                                StringBuilder sb2 = new StringBuilder(51);
                                sb2.append(zzcym2);
                                sb2.append(" is not a valid enum CellularNetworkType");
                                throw new IllegalArgumentException(sb2.toString());
                        }
                    }
                    this.zzbez = Integer.valueOf(zzcym2);
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(zzfljVar.getPosition());
                    zza(zzfljVar, zzcxx);
                }
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbdh != null) {
            zzflkVar.zzad(1, this.zzbdh.intValue());
        }
        if (this.zzbez != null) {
            zzflkVar.zzad(2, this.zzbez.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbdh != null) {
            zzq += zzflk.zzag(1, this.zzbdh.intValue());
        }
        return this.zzbez != null ? zzq + zzflk.zzag(2, this.zzbez.intValue()) : zzq;
    }
}
