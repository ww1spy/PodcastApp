package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjj extends zzflm<zzjj> {
    private Integer zzbee = null;
    private zzjv zzbef = null;
    private String zzbeg = null;
    private String zzbeh = null;

    public zzjj() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0044. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public final zzjj zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 40) {
                int position = zzfljVar.getPosition();
                try {
                    int zzcym = zzfljVar.zzcym();
                    switch (zzcym) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzbee = Integer.valueOf(zzcym);
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(40);
                            sb.append(zzcym);
                            sb.append(" is not a valid enum Platform");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 50) {
                if (this.zzbef == null) {
                    this.zzbef = new zzjv();
                }
                zzfljVar.zza(this.zzbef);
            } else if (zzcxx == 58) {
                this.zzbeg = zzfljVar.readString();
            } else if (zzcxx == 66) {
                this.zzbeh = zzfljVar.readString();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbee != null) {
            zzflkVar.zzad(5, this.zzbee.intValue());
        }
        if (this.zzbef != null) {
            zzflkVar.zza(6, this.zzbef);
        }
        if (this.zzbeg != null) {
            zzflkVar.zzp(7, this.zzbeg);
        }
        if (this.zzbeh != null) {
            zzflkVar.zzp(8, this.zzbeh);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbee != null) {
            zzq += zzflk.zzag(5, this.zzbee.intValue());
        }
        if (this.zzbef != null) {
            zzq += zzflk.zzb(6, this.zzbef);
        }
        if (this.zzbeg != null) {
            zzq += zzflk.zzq(7, this.zzbeg);
        }
        return this.zzbeh != null ? zzq + zzflk.zzq(8, this.zzbeh) : zzq;
    }
}
