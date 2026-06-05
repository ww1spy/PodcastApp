package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbo extends zzflm<zzbo> {
    private static volatile zzbo[] zzwt;
    public int key = 0;
    public int value = 0;

    public zzbo() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzbo[] zzu() {
        if (zzwt == null) {
            synchronized (zzflq.zzpvt) {
                if (zzwt == null) {
                    zzwt = new zzbo[0];
                }
            }
        }
        return zzwt;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbo)) {
            return false;
        }
        zzbo zzboVar = (zzbo) obj;
        if (this.key == zzboVar.key && this.value == zzboVar.value) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzboVar.zzpvl == null || zzboVar.zzpvl.isEmpty() : this.zzpvl.equals(zzboVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((527 + getClass().getName().hashCode()) * 31) + this.key) * 31) + this.value) * 31) + ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode());
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.key = zzfljVar.zzcym();
            } else if (zzcxx == 16) {
                this.value = zzfljVar.zzcym();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        zzflkVar.zzad(1, this.key);
        zzflkVar.zzad(2, this.value);
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        return super.zzq() + zzflk.zzag(1, this.key) + zzflk.zzag(2, this.value);
    }
}
