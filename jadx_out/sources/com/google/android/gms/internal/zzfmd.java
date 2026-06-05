package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmd extends zzflm<zzfmd> {
    public Integer zzbdh = null;
    public String mimeType = null;
    public byte[] zzpxg = null;

    public zzfmd() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002f. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzbl, reason: merged with bridge method [inline-methods] */
    public final zzfmd zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                int position = zzfljVar.getPosition();
                try {
                    int zzcya = zzfljVar.zzcya();
                    switch (zzcya) {
                        case 0:
                        case 1:
                            this.zzbdh = Integer.valueOf(zzcya);
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(36);
                            sb.append(zzcya);
                            sb.append(" is not a valid enum Type");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 18) {
                this.mimeType = zzfljVar.readString();
            } else if (zzcxx == 26) {
                this.zzpxg = zzfljVar.readBytes();
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
        if (this.mimeType != null) {
            zzflkVar.zzp(2, this.mimeType);
        }
        if (this.zzpxg != null) {
            zzflkVar.zzc(3, this.zzpxg);
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
        if (this.mimeType != null) {
            zzq += zzflk.zzq(2, this.mimeType);
        }
        return this.zzpxg != null ? zzq + zzflk.zzd(3, this.zzpxg) : zzq;
    }
}
