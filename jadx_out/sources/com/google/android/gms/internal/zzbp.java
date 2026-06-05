package com.google.android.gms.internal;

import java.io.IOException;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public final class zzbp extends zzflm<zzbp> {
    private String[] zzwu = zzflv.EMPTY_STRING_ARRAY;
    public String[] zzwv = zzflv.EMPTY_STRING_ARRAY;
    public zzbt[] zzww = zzbt.zzx();
    public zzbo[] zzwx = zzbo.zzu();
    public zzbl[] zzwy = zzbl.zzs();
    public zzbl[] zzwz = zzbl.zzs();
    public zzbl[] zzxa = zzbl.zzs();
    public zzbq[] zzxb = zzbq.zzv();
    private String zzxc = "";
    private String zzxd = "";
    private String zzxe = NotificationPreferences.NO;
    public String version = "";
    private zzbk zzxf = null;
    private float zzxg = 0.0f;
    private boolean zzxh = false;
    private String[] zzxi = zzflv.EMPTY_STRING_ARRAY;
    public int zzxj = 0;

    public zzbp() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbp)) {
            return false;
        }
        zzbp zzbpVar = (zzbp) obj;
        if (!zzflq.equals(this.zzwu, zzbpVar.zzwu) || !zzflq.equals(this.zzwv, zzbpVar.zzwv) || !zzflq.equals(this.zzww, zzbpVar.zzww) || !zzflq.equals(this.zzwx, zzbpVar.zzwx) || !zzflq.equals(this.zzwy, zzbpVar.zzwy) || !zzflq.equals(this.zzwz, zzbpVar.zzwz) || !zzflq.equals(this.zzxa, zzbpVar.zzxa) || !zzflq.equals(this.zzxb, zzbpVar.zzxb)) {
            return false;
        }
        if (this.zzxc == null) {
            if (zzbpVar.zzxc != null) {
                return false;
            }
        } else if (!this.zzxc.equals(zzbpVar.zzxc)) {
            return false;
        }
        if (this.zzxd == null) {
            if (zzbpVar.zzxd != null) {
                return false;
            }
        } else if (!this.zzxd.equals(zzbpVar.zzxd)) {
            return false;
        }
        if (this.zzxe == null) {
            if (zzbpVar.zzxe != null) {
                return false;
            }
        } else if (!this.zzxe.equals(zzbpVar.zzxe)) {
            return false;
        }
        if (this.version == null) {
            if (zzbpVar.version != null) {
                return false;
            }
        } else if (!this.version.equals(zzbpVar.version)) {
            return false;
        }
        if (this.zzxf == null) {
            if (zzbpVar.zzxf != null) {
                return false;
            }
        } else if (!this.zzxf.equals(zzbpVar.zzxf)) {
            return false;
        }
        if (Float.floatToIntBits(this.zzxg) == Float.floatToIntBits(zzbpVar.zzxg) && this.zzxh == zzbpVar.zzxh && zzflq.equals(this.zzxi, zzbpVar.zzxi) && this.zzxj == zzbpVar.zzxj) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbpVar.zzpvl == null || zzbpVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbpVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((((((((((((((((((((((((527 + getClass().getName().hashCode()) * 31) + zzflq.hashCode(this.zzwu)) * 31) + zzflq.hashCode(this.zzwv)) * 31) + zzflq.hashCode(this.zzww)) * 31) + zzflq.hashCode(this.zzwx)) * 31) + zzflq.hashCode(this.zzwy)) * 31) + zzflq.hashCode(this.zzwz)) * 31) + zzflq.hashCode(this.zzxa)) * 31) + zzflq.hashCode(this.zzxb)) * 31) + (this.zzxc == null ? 0 : this.zzxc.hashCode())) * 31) + (this.zzxd == null ? 0 : this.zzxd.hashCode())) * 31) + (this.zzxe == null ? 0 : this.zzxe.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode());
        zzbk zzbkVar = this.zzxf;
        int hashCode2 = ((((((((((hashCode * 31) + (zzbkVar == null ? 0 : zzbkVar.hashCode())) * 31) + Float.floatToIntBits(this.zzxg)) * 31) + (this.zzxh ? 1231 : 1237)) * 31) + zzflq.hashCode(this.zzxi)) * 31) + this.zzxj) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode2 + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 10:
                    int zzb = zzflv.zzb(zzfljVar, 10);
                    int length = this.zzwv == null ? 0 : this.zzwv.length;
                    String[] strArr = new String[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzwv, 0, strArr, 0, length);
                    }
                    while (length < strArr.length - 1) {
                        strArr[length] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length++;
                    }
                    strArr[length] = zzfljVar.readString();
                    this.zzwv = strArr;
                    break;
                case 18:
                    int zzb2 = zzflv.zzb(zzfljVar, 18);
                    int length2 = this.zzww == null ? 0 : this.zzww.length;
                    zzbt[] zzbtVarArr = new zzbt[zzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzww, 0, zzbtVarArr, 0, length2);
                    }
                    while (length2 < zzbtVarArr.length - 1) {
                        zzbtVarArr[length2] = new zzbt();
                        zzfljVar.zza(zzbtVarArr[length2]);
                        zzfljVar.zzcxx();
                        length2++;
                    }
                    zzbtVarArr[length2] = new zzbt();
                    zzfljVar.zza(zzbtVarArr[length2]);
                    this.zzww = zzbtVarArr;
                    break;
                case 26:
                    int zzb3 = zzflv.zzb(zzfljVar, 26);
                    int length3 = this.zzwx == null ? 0 : this.zzwx.length;
                    zzbo[] zzboVarArr = new zzbo[zzb3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzwx, 0, zzboVarArr, 0, length3);
                    }
                    while (length3 < zzboVarArr.length - 1) {
                        zzboVarArr[length3] = new zzbo();
                        zzfljVar.zza(zzboVarArr[length3]);
                        zzfljVar.zzcxx();
                        length3++;
                    }
                    zzboVarArr[length3] = new zzbo();
                    zzfljVar.zza(zzboVarArr[length3]);
                    this.zzwx = zzboVarArr;
                    break;
                case 34:
                    int zzb4 = zzflv.zzb(zzfljVar, 34);
                    int length4 = this.zzwy == null ? 0 : this.zzwy.length;
                    zzbl[] zzblVarArr = new zzbl[zzb4 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzwy, 0, zzblVarArr, 0, length4);
                    }
                    while (length4 < zzblVarArr.length - 1) {
                        zzblVarArr[length4] = new zzbl();
                        zzfljVar.zza(zzblVarArr[length4]);
                        zzfljVar.zzcxx();
                        length4++;
                    }
                    zzblVarArr[length4] = new zzbl();
                    zzfljVar.zza(zzblVarArr[length4]);
                    this.zzwy = zzblVarArr;
                    break;
                case 42:
                    int zzb5 = zzflv.zzb(zzfljVar, 42);
                    int length5 = this.zzwz == null ? 0 : this.zzwz.length;
                    zzbl[] zzblVarArr2 = new zzbl[zzb5 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.zzwz, 0, zzblVarArr2, 0, length5);
                    }
                    while (length5 < zzblVarArr2.length - 1) {
                        zzblVarArr2[length5] = new zzbl();
                        zzfljVar.zza(zzblVarArr2[length5]);
                        zzfljVar.zzcxx();
                        length5++;
                    }
                    zzblVarArr2[length5] = new zzbl();
                    zzfljVar.zza(zzblVarArr2[length5]);
                    this.zzwz = zzblVarArr2;
                    break;
                case 50:
                    int zzb6 = zzflv.zzb(zzfljVar, 50);
                    int length6 = this.zzxa == null ? 0 : this.zzxa.length;
                    zzbl[] zzblVarArr3 = new zzbl[zzb6 + length6];
                    if (length6 != 0) {
                        System.arraycopy(this.zzxa, 0, zzblVarArr3, 0, length6);
                    }
                    while (length6 < zzblVarArr3.length - 1) {
                        zzblVarArr3[length6] = new zzbl();
                        zzfljVar.zza(zzblVarArr3[length6]);
                        zzfljVar.zzcxx();
                        length6++;
                    }
                    zzblVarArr3[length6] = new zzbl();
                    zzfljVar.zza(zzblVarArr3[length6]);
                    this.zzxa = zzblVarArr3;
                    break;
                case 58:
                    int zzb7 = zzflv.zzb(zzfljVar, 58);
                    int length7 = this.zzxb == null ? 0 : this.zzxb.length;
                    zzbq[] zzbqVarArr = new zzbq[zzb7 + length7];
                    if (length7 != 0) {
                        System.arraycopy(this.zzxb, 0, zzbqVarArr, 0, length7);
                    }
                    while (length7 < zzbqVarArr.length - 1) {
                        zzbqVarArr[length7] = new zzbq();
                        zzfljVar.zza(zzbqVarArr[length7]);
                        zzfljVar.zzcxx();
                        length7++;
                    }
                    zzbqVarArr[length7] = new zzbq();
                    zzfljVar.zza(zzbqVarArr[length7]);
                    this.zzxb = zzbqVarArr;
                    break;
                case 74:
                    this.zzxc = zzfljVar.readString();
                    break;
                case 82:
                    this.zzxd = zzfljVar.readString();
                    break;
                case 98:
                    this.zzxe = zzfljVar.readString();
                    break;
                case 106:
                    this.version = zzfljVar.readString();
                    break;
                case 114:
                    if (this.zzxf == null) {
                        this.zzxf = new zzbk();
                    }
                    zzfljVar.zza(this.zzxf);
                    break;
                case 125:
                    this.zzxg = Float.intBitsToFloat(zzfljVar.zzcys());
                    break;
                case 130:
                    int zzb8 = zzflv.zzb(zzfljVar, 130);
                    int length8 = this.zzxi == null ? 0 : this.zzxi.length;
                    String[] strArr2 = new String[zzb8 + length8];
                    if (length8 != 0) {
                        System.arraycopy(this.zzxi, 0, strArr2, 0, length8);
                    }
                    while (length8 < strArr2.length - 1) {
                        strArr2[length8] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length8++;
                    }
                    strArr2[length8] = zzfljVar.readString();
                    this.zzxi = strArr2;
                    break;
                case 136:
                    this.zzxj = zzfljVar.zzcym();
                    break;
                case 144:
                    this.zzxh = zzfljVar.zzcyd();
                    break;
                case 154:
                    int zzb9 = zzflv.zzb(zzfljVar, 154);
                    int length9 = this.zzwu == null ? 0 : this.zzwu.length;
                    String[] strArr3 = new String[zzb9 + length9];
                    if (length9 != 0) {
                        System.arraycopy(this.zzwu, 0, strArr3, 0, length9);
                    }
                    while (length9 < strArr3.length - 1) {
                        strArr3[length9] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length9++;
                    }
                    strArr3[length9] = zzfljVar.readString();
                    this.zzwu = strArr3;
                    break;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
                    break;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzwv != null && this.zzwv.length > 0) {
            for (int i = 0; i < this.zzwv.length; i++) {
                String str = this.zzwv[i];
                if (str != null) {
                    zzflkVar.zzp(1, str);
                }
            }
        }
        if (this.zzww != null && this.zzww.length > 0) {
            for (int i2 = 0; i2 < this.zzww.length; i2++) {
                zzbt zzbtVar = this.zzww[i2];
                if (zzbtVar != null) {
                    zzflkVar.zza(2, zzbtVar);
                }
            }
        }
        if (this.zzwx != null && this.zzwx.length > 0) {
            for (int i3 = 0; i3 < this.zzwx.length; i3++) {
                zzbo zzboVar = this.zzwx[i3];
                if (zzboVar != null) {
                    zzflkVar.zza(3, zzboVar);
                }
            }
        }
        if (this.zzwy != null && this.zzwy.length > 0) {
            for (int i4 = 0; i4 < this.zzwy.length; i4++) {
                zzbl zzblVar = this.zzwy[i4];
                if (zzblVar != null) {
                    zzflkVar.zza(4, zzblVar);
                }
            }
        }
        if (this.zzwz != null && this.zzwz.length > 0) {
            for (int i5 = 0; i5 < this.zzwz.length; i5++) {
                zzbl zzblVar2 = this.zzwz[i5];
                if (zzblVar2 != null) {
                    zzflkVar.zza(5, zzblVar2);
                }
            }
        }
        if (this.zzxa != null && this.zzxa.length > 0) {
            for (int i6 = 0; i6 < this.zzxa.length; i6++) {
                zzbl zzblVar3 = this.zzxa[i6];
                if (zzblVar3 != null) {
                    zzflkVar.zza(6, zzblVar3);
                }
            }
        }
        if (this.zzxb != null && this.zzxb.length > 0) {
            for (int i7 = 0; i7 < this.zzxb.length; i7++) {
                zzbq zzbqVar = this.zzxb[i7];
                if (zzbqVar != null) {
                    zzflkVar.zza(7, zzbqVar);
                }
            }
        }
        if (this.zzxc != null && !this.zzxc.equals("")) {
            zzflkVar.zzp(9, this.zzxc);
        }
        if (this.zzxd != null && !this.zzxd.equals("")) {
            zzflkVar.zzp(10, this.zzxd);
        }
        if (this.zzxe != null && !this.zzxe.equals(NotificationPreferences.NO)) {
            zzflkVar.zzp(12, this.zzxe);
        }
        if (this.version != null && !this.version.equals("")) {
            zzflkVar.zzp(13, this.version);
        }
        if (this.zzxf != null) {
            zzflkVar.zza(14, this.zzxf);
        }
        if (Float.floatToIntBits(this.zzxg) != Float.floatToIntBits(0.0f)) {
            zzflkVar.zzd(15, this.zzxg);
        }
        if (this.zzxi != null && this.zzxi.length > 0) {
            for (int i8 = 0; i8 < this.zzxi.length; i8++) {
                String str2 = this.zzxi[i8];
                if (str2 != null) {
                    zzflkVar.zzp(16, str2);
                }
            }
        }
        if (this.zzxj != 0) {
            zzflkVar.zzad(17, this.zzxj);
        }
        if (this.zzxh) {
            zzflkVar.zzl(18, this.zzxh);
        }
        if (this.zzwu != null && this.zzwu.length > 0) {
            for (int i9 = 0; i9 < this.zzwu.length; i9++) {
                String str3 = this.zzwu[i9];
                if (str3 != null) {
                    zzflkVar.zzp(19, str3);
                }
            }
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzwv != null && this.zzwv.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzwv.length; i3++) {
                String str = this.zzwv[i3];
                if (str != null) {
                    i2++;
                    i += zzflk.zztx(str);
                }
            }
            zzq = zzq + i + (i2 * 1);
        }
        if (this.zzww != null && this.zzww.length > 0) {
            int i4 = zzq;
            for (int i5 = 0; i5 < this.zzww.length; i5++) {
                zzbt zzbtVar = this.zzww[i5];
                if (zzbtVar != null) {
                    i4 += zzflk.zzb(2, zzbtVar);
                }
            }
            zzq = i4;
        }
        if (this.zzwx != null && this.zzwx.length > 0) {
            int i6 = zzq;
            for (int i7 = 0; i7 < this.zzwx.length; i7++) {
                zzbo zzboVar = this.zzwx[i7];
                if (zzboVar != null) {
                    i6 += zzflk.zzb(3, zzboVar);
                }
            }
            zzq = i6;
        }
        if (this.zzwy != null && this.zzwy.length > 0) {
            int i8 = zzq;
            for (int i9 = 0; i9 < this.zzwy.length; i9++) {
                zzbl zzblVar = this.zzwy[i9];
                if (zzblVar != null) {
                    i8 += zzflk.zzb(4, zzblVar);
                }
            }
            zzq = i8;
        }
        if (this.zzwz != null && this.zzwz.length > 0) {
            int i10 = zzq;
            for (int i11 = 0; i11 < this.zzwz.length; i11++) {
                zzbl zzblVar2 = this.zzwz[i11];
                if (zzblVar2 != null) {
                    i10 += zzflk.zzb(5, zzblVar2);
                }
            }
            zzq = i10;
        }
        if (this.zzxa != null && this.zzxa.length > 0) {
            int i12 = zzq;
            for (int i13 = 0; i13 < this.zzxa.length; i13++) {
                zzbl zzblVar3 = this.zzxa[i13];
                if (zzblVar3 != null) {
                    i12 += zzflk.zzb(6, zzblVar3);
                }
            }
            zzq = i12;
        }
        if (this.zzxb != null && this.zzxb.length > 0) {
            int i14 = zzq;
            for (int i15 = 0; i15 < this.zzxb.length; i15++) {
                zzbq zzbqVar = this.zzxb[i15];
                if (zzbqVar != null) {
                    i14 += zzflk.zzb(7, zzbqVar);
                }
            }
            zzq = i14;
        }
        if (this.zzxc != null && !this.zzxc.equals("")) {
            zzq += zzflk.zzq(9, this.zzxc);
        }
        if (this.zzxd != null && !this.zzxd.equals("")) {
            zzq += zzflk.zzq(10, this.zzxd);
        }
        if (this.zzxe != null && !this.zzxe.equals(NotificationPreferences.NO)) {
            zzq += zzflk.zzq(12, this.zzxe);
        }
        if (this.version != null && !this.version.equals("")) {
            zzq += zzflk.zzq(13, this.version);
        }
        if (this.zzxf != null) {
            zzq += zzflk.zzb(14, this.zzxf);
        }
        if (Float.floatToIntBits(this.zzxg) != Float.floatToIntBits(0.0f)) {
            zzq += zzflk.zzlw(15) + 4;
        }
        if (this.zzxi != null && this.zzxi.length > 0) {
            int i16 = 0;
            int i17 = 0;
            for (int i18 = 0; i18 < this.zzxi.length; i18++) {
                String str2 = this.zzxi[i18];
                if (str2 != null) {
                    i17++;
                    i16 += zzflk.zztx(str2);
                }
            }
            zzq = zzq + i16 + (i17 * 2);
        }
        if (this.zzxj != 0) {
            zzq += zzflk.zzag(17, this.zzxj);
        }
        if (this.zzxh) {
            zzq += zzflk.zzlw(18) + 1;
        }
        if (this.zzwu == null || this.zzwu.length <= 0) {
            return zzq;
        }
        int i19 = 0;
        int i20 = 0;
        for (int i21 = 0; i21 < this.zzwu.length; i21++) {
            String str3 = this.zzwu[i21];
            if (str3 != null) {
                i20++;
                i19 += zzflk.zztx(str3);
            }
        }
        return zzq + i19 + (2 * i20);
    }
}
