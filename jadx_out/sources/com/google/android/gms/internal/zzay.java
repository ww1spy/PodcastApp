package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzay extends zzflm<zzay> {
    public String zzcv;
    private String zzcw;
    private String zzcx;
    private String zzcy;
    private String zzcz;

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzcv = zzfljVar.readString();
            } else if (zzcxx == 18) {
                this.zzcw = zzfljVar.readString();
            } else if (zzcxx == 26) {
                this.zzcx = zzfljVar.readString();
            } else if (zzcxx == 34) {
                this.zzcy = zzfljVar.readString();
            } else if (zzcxx == 42) {
                this.zzcz = zzfljVar.readString();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzcv != null) {
            zzflkVar.zzp(1, this.zzcv);
        }
        if (this.zzcw != null) {
            zzflkVar.zzp(2, this.zzcw);
        }
        if (this.zzcx != null) {
            zzflkVar.zzp(3, this.zzcx);
        }
        if (this.zzcy != null) {
            zzflkVar.zzp(4, this.zzcy);
        }
        if (this.zzcz != null) {
            zzflkVar.zzp(5, this.zzcz);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzcv != null) {
            zzq += zzflk.zzq(1, this.zzcv);
        }
        if (this.zzcw != null) {
            zzq += zzflk.zzq(2, this.zzcw);
        }
        if (this.zzcx != null) {
            zzq += zzflk.zzq(3, this.zzcx);
        }
        if (this.zzcy != null) {
            zzq += zzflk.zzq(4, this.zzcy);
        }
        return this.zzcz != null ? zzq + zzflk.zzq(5, this.zzcz) : zzq;
    }
}
