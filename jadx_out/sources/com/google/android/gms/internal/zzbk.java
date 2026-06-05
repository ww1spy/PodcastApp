package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbk extends zzflm<zzbk> {
    private int level = 1;
    private int zzwe = 0;
    private int zzwf = 0;

    public zzbk() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002f. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzbk zza(zzflj zzfljVar) throws IOException {
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
                        case 1:
                        case 2:
                        case 3:
                            this.level = zzcym;
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(42);
                            sb.append(zzcym);
                            sb.append(" is not a valid enum CacheLevel");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(position);
                    zza(zzfljVar, zzcxx);
                }
            } else if (zzcxx == 16) {
                this.zzwe = zzfljVar.zzcym();
            } else if (zzcxx == 24) {
                this.zzwf = zzfljVar.zzcym();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbk)) {
            return false;
        }
        zzbk zzbkVar = (zzbk) obj;
        if (this.level == zzbkVar.level && this.zzwe == zzbkVar.zzwe && this.zzwf == zzbkVar.zzwf) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbkVar.zzpvl == null || zzbkVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbkVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((527 + getClass().getName().hashCode()) * 31) + this.level) * 31) + this.zzwe) * 31) + this.zzwf) * 31) + ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode());
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.level != 1) {
            zzflkVar.zzad(1, this.level);
        }
        if (this.zzwe != 0) {
            zzflkVar.zzad(2, this.zzwe);
        }
        if (this.zzwf != 0) {
            zzflkVar.zzad(3, this.zzwf);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.level != 1) {
            zzq += zzflk.zzag(1, this.level);
        }
        if (this.zzwe != 0) {
            zzq += zzflk.zzag(2, this.zzwe);
        }
        return this.zzwf != 0 ? zzq + zzflk.zzag(3, this.zzwf) : zzq;
    }
}
