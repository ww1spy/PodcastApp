package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfmp extends zzflm<zzfmp> implements Cloneable {
    private int zzjgl = 0;
    private String zzpyp = "";
    private String version = "";

    public zzfmp() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzddc, reason: merged with bridge method [inline-methods] */
    public zzfmp clone() {
        try {
            return (zzfmp) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfmp)) {
            return false;
        }
        zzfmp zzfmpVar = (zzfmp) obj;
        if (this.zzjgl != zzfmpVar.zzjgl) {
            return false;
        }
        if (this.zzpyp == null) {
            if (zzfmpVar.zzpyp != null) {
                return false;
            }
        } else if (!this.zzpyp.equals(zzfmpVar.zzpyp)) {
            return false;
        }
        if (this.version == null) {
            if (zzfmpVar.version != null) {
                return false;
            }
        } else if (!this.version.equals(zzfmpVar.version)) {
            return false;
        }
        return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzfmpVar.zzpvl == null || zzfmpVar.zzpvl.isEmpty() : this.zzpvl.equals(zzfmpVar.zzpvl);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((527 + getClass().getName().hashCode()) * 31) + this.zzjgl) * 31) + (this.zzpyp == null ? 0 : this.zzpyp.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode())) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 8) {
                this.zzjgl = zzfljVar.zzcya();
            } else if (zzcxx == 18) {
                this.zzpyp = zzfljVar.readString();
            } else if (zzcxx == 26) {
                this.version = zzfljVar.readString();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzjgl != 0) {
            zzflkVar.zzad(1, this.zzjgl);
        }
        if (this.zzpyp != null && !this.zzpyp.equals("")) {
            zzflkVar.zzp(2, this.zzpyp);
        }
        if (this.version != null && !this.version.equals("")) {
            zzflkVar.zzp(3, this.version);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm
    /* renamed from: zzdck */
    public final /* synthetic */ zzfmp clone() throws CloneNotSupportedException {
        return (zzfmp) clone();
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzdcl */
    public final /* synthetic */ zzfls clone() throws CloneNotSupportedException {
        return (zzfmp) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzjgl != 0) {
            zzq += zzflk.zzag(1, this.zzjgl);
        }
        if (this.zzpyp != null && !this.zzpyp.equals("")) {
            zzq += zzflk.zzq(2, this.zzpyp);
        }
        return (this.version == null || this.version.equals("")) ? zzq : zzq + zzflk.zzq(3, this.version);
    }
}
