package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzje extends zzflm<zzje> {
    private static volatile zzje[] zzbdg;
    private Integer zzbdh = null;
    private zzjs zzbdi = null;

    public zzje() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002e. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzje zza(zzflj zzfljVar) throws IOException {
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
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            this.zzbdh = Integer.valueOf(zzcym);
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(44);
                            sb.append(zzcym);
                            sb.append(" is not a valid enum AdFormatType");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 18) {
                if (this.zzbdi == null) {
                    this.zzbdi = new zzjs();
                }
                zzfljVar.zza(this.zzbdi);
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    public static zzje[] zzhv() {
        if (zzbdg == null) {
            synchronized (zzflq.zzpvt) {
                if (zzbdg == null) {
                    zzbdg = new zzje[0];
                }
            }
        }
        return zzbdg;
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbdh != null) {
            zzflkVar.zzad(1, this.zzbdh.intValue());
        }
        if (this.zzbdi != null) {
            zzflkVar.zza(2, this.zzbdi);
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
        return this.zzbdi != null ? zzq + zzflk.zzb(2, this.zzbdi) : zzq;
    }
}
