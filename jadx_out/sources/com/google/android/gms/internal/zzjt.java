package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjt extends zzflm<zzjt> {
    private static volatile zzjt[] zzbfr;
    private String zzbes = null;
    private Integer zzbet = null;
    private zzju zzbev = null;

    public zzjt() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzjt[] zzhw() {
        if (zzbfr == null) {
            synchronized (zzflq.zzpvt) {
                if (zzbfr == null) {
                    zzbfr = new zzjt[0];
                }
            }
        }
        return zzbfr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public final zzjt zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzbes = zzfljVar.readString();
            } else if (zzcxx == 16) {
                int position = zzfljVar.getPosition();
                try {
                    this.zzbet = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 26) {
                if (this.zzbev == null) {
                    this.zzbev = new zzju();
                }
                zzfljVar.zza(this.zzbev);
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbes != null) {
            zzflkVar.zzp(1, this.zzbes);
        }
        if (this.zzbet != null) {
            zzflkVar.zzad(2, this.zzbet.intValue());
        }
        if (this.zzbev != null) {
            zzflkVar.zza(3, this.zzbev);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbes != null) {
            zzq += zzflk.zzq(1, this.zzbes);
        }
        if (this.zzbet != null) {
            zzq += zzflk.zzag(2, this.zzbet.intValue());
        }
        return this.zzbev != null ? zzq + zzflk.zzb(3, this.zzbev) : zzq;
    }
}
