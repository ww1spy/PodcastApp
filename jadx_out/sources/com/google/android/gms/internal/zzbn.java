package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbn extends zzflm<zzbn> {
    public zzbt[] zzwq = zzbt.zzx();
    public zzbt[] zzwr = zzbt.zzx();
    public zzbm[] zzws = zzbm.zzt();

    public zzbn() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbn)) {
            return false;
        }
        zzbn zzbnVar = (zzbn) obj;
        if (zzflq.equals(this.zzwq, zzbnVar.zzwq) && zzflq.equals(this.zzwr, zzbnVar.zzwr) && zzflq.equals(this.zzws, zzbnVar.zzws)) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbnVar.zzpvl == null || zzbnVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbnVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((527 + getClass().getName().hashCode()) * 31) + zzflq.hashCode(this.zzwq)) * 31) + zzflq.hashCode(this.zzwr)) * 31) + zzflq.hashCode(this.zzws)) * 31) + ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode());
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                int zzb = zzflv.zzb(zzfljVar, 10);
                int length = this.zzwq == null ? 0 : this.zzwq.length;
                zzbt[] zzbtVarArr = new zzbt[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzwq, 0, zzbtVarArr, 0, length);
                }
                while (length < zzbtVarArr.length - 1) {
                    zzbtVarArr[length] = new zzbt();
                    zzfljVar.zza(zzbtVarArr[length]);
                    zzfljVar.zzcxx();
                    length++;
                }
                zzbtVarArr[length] = new zzbt();
                zzfljVar.zza(zzbtVarArr[length]);
                this.zzwq = zzbtVarArr;
            } else if (zzcxx == 18) {
                int zzb2 = zzflv.zzb(zzfljVar, 18);
                int length2 = this.zzwr == null ? 0 : this.zzwr.length;
                zzbt[] zzbtVarArr2 = new zzbt[zzb2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzwr, 0, zzbtVarArr2, 0, length2);
                }
                while (length2 < zzbtVarArr2.length - 1) {
                    zzbtVarArr2[length2] = new zzbt();
                    zzfljVar.zza(zzbtVarArr2[length2]);
                    zzfljVar.zzcxx();
                    length2++;
                }
                zzbtVarArr2[length2] = new zzbt();
                zzfljVar.zza(zzbtVarArr2[length2]);
                this.zzwr = zzbtVarArr2;
            } else if (zzcxx == 26) {
                int zzb3 = zzflv.zzb(zzfljVar, 26);
                int length3 = this.zzws == null ? 0 : this.zzws.length;
                zzbm[] zzbmVarArr = new zzbm[zzb3 + length3];
                if (length3 != 0) {
                    System.arraycopy(this.zzws, 0, zzbmVarArr, 0, length3);
                }
                while (length3 < zzbmVarArr.length - 1) {
                    zzbmVarArr[length3] = new zzbm();
                    zzfljVar.zza(zzbmVarArr[length3]);
                    zzfljVar.zzcxx();
                    length3++;
                }
                zzbmVarArr[length3] = new zzbm();
                zzfljVar.zza(zzbmVarArr[length3]);
                this.zzws = zzbmVarArr;
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzwq != null && this.zzwq.length > 0) {
            for (int i = 0; i < this.zzwq.length; i++) {
                zzbt zzbtVar = this.zzwq[i];
                if (zzbtVar != null) {
                    zzflkVar.zza(1, zzbtVar);
                }
            }
        }
        if (this.zzwr != null && this.zzwr.length > 0) {
            for (int i2 = 0; i2 < this.zzwr.length; i2++) {
                zzbt zzbtVar2 = this.zzwr[i2];
                if (zzbtVar2 != null) {
                    zzflkVar.zza(2, zzbtVar2);
                }
            }
        }
        if (this.zzws != null && this.zzws.length > 0) {
            for (int i3 = 0; i3 < this.zzws.length; i3++) {
                zzbm zzbmVar = this.zzws[i3];
                if (zzbmVar != null) {
                    zzflkVar.zza(3, zzbmVar);
                }
            }
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzwq != null && this.zzwq.length > 0) {
            int i = zzq;
            for (int i2 = 0; i2 < this.zzwq.length; i2++) {
                zzbt zzbtVar = this.zzwq[i2];
                if (zzbtVar != null) {
                    i += zzflk.zzb(1, zzbtVar);
                }
            }
            zzq = i;
        }
        if (this.zzwr != null && this.zzwr.length > 0) {
            int i3 = zzq;
            for (int i4 = 0; i4 < this.zzwr.length; i4++) {
                zzbt zzbtVar2 = this.zzwr[i4];
                if (zzbtVar2 != null) {
                    i3 += zzflk.zzb(2, zzbtVar2);
                }
            }
            zzq = i3;
        }
        if (this.zzws != null && this.zzws.length > 0) {
            for (int i5 = 0; i5 < this.zzws.length; i5++) {
                zzbm zzbmVar = this.zzws[i5];
                if (zzbmVar != null) {
                    zzq += zzflk.zzb(3, zzbmVar);
                }
            }
        }
        return zzq;
    }
}
