package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbq extends zzflm<zzbq> {
    private static volatile zzbq[] zzxk;
    public int[] zzxl = zzflv.zzpvy;
    public int[] zzxm = zzflv.zzpvy;
    public int[] zzxn = zzflv.zzpvy;
    public int[] zzxo = zzflv.zzpvy;
    public int[] zzxp = zzflv.zzpvy;
    public int[] zzxq = zzflv.zzpvy;
    public int[] zzxr = zzflv.zzpvy;
    public int[] zzxs = zzflv.zzpvy;
    public int[] zzxt = zzflv.zzpvy;
    public int[] zzxu = zzflv.zzpvy;

    public zzbq() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    public static zzbq[] zzv() {
        if (zzxk == null) {
            synchronized (zzflq.zzpvt) {
                if (zzxk == null) {
                    zzxk = new zzbq[0];
                }
            }
        }
        return zzxk;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbq)) {
            return false;
        }
        zzbq zzbqVar = (zzbq) obj;
        if (zzflq.equals(this.zzxl, zzbqVar.zzxl) && zzflq.equals(this.zzxm, zzbqVar.zzxm) && zzflq.equals(this.zzxn, zzbqVar.zzxn) && zzflq.equals(this.zzxo, zzbqVar.zzxo) && zzflq.equals(this.zzxp, zzbqVar.zzxp) && zzflq.equals(this.zzxq, zzbqVar.zzxq) && zzflq.equals(this.zzxr, zzbqVar.zzxr) && zzflq.equals(this.zzxs, zzbqVar.zzxs) && zzflq.equals(this.zzxt, zzbqVar.zzxt) && zzflq.equals(this.zzxu, zzbqVar.zzxu)) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbqVar.zzpvl == null || zzbqVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbqVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((((((((((527 + getClass().getName().hashCode()) * 31) + zzflq.hashCode(this.zzxl)) * 31) + zzflq.hashCode(this.zzxm)) * 31) + zzflq.hashCode(this.zzxn)) * 31) + zzflq.hashCode(this.zzxo)) * 31) + zzflq.hashCode(this.zzxp)) * 31) + zzflq.hashCode(this.zzxq)) * 31) + zzflq.hashCode(this.zzxr)) * 31) + zzflq.hashCode(this.zzxs)) * 31) + zzflq.hashCode(this.zzxt)) * 31) + zzflq.hashCode(this.zzxu)) * 31) + ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        int zzli;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 8:
                    int zzb = zzflv.zzb(zzfljVar, 8);
                    int length = this.zzxl == null ? 0 : this.zzxl.length;
                    int[] iArr = new int[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzxl, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length++;
                    }
                    iArr[length] = zzfljVar.zzcym();
                    this.zzxl = iArr;
                case 10:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position = zzfljVar.getPosition();
                    int i = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i++;
                    }
                    zzfljVar.zzmw(position);
                    int length2 = this.zzxl == null ? 0 : this.zzxl.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzxl, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = zzfljVar.zzcym();
                        length2++;
                    }
                    this.zzxl = iArr2;
                    zzfljVar.zzlj(zzli);
                case 16:
                    int zzb2 = zzflv.zzb(zzfljVar, 16);
                    int length3 = this.zzxm == null ? 0 : this.zzxm.length;
                    int[] iArr3 = new int[zzb2 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzxm, 0, iArr3, 0, length3);
                    }
                    while (length3 < iArr3.length - 1) {
                        iArr3[length3] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length3++;
                    }
                    iArr3[length3] = zzfljVar.zzcym();
                    this.zzxm = iArr3;
                case 18:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position2 = zzfljVar.getPosition();
                    int i2 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i2++;
                    }
                    zzfljVar.zzmw(position2);
                    int length4 = this.zzxm == null ? 0 : this.zzxm.length;
                    int[] iArr4 = new int[i2 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzxm, 0, iArr4, 0, length4);
                    }
                    while (length4 < iArr4.length) {
                        iArr4[length4] = zzfljVar.zzcym();
                        length4++;
                    }
                    this.zzxm = iArr4;
                    zzfljVar.zzlj(zzli);
                case 24:
                    int zzb3 = zzflv.zzb(zzfljVar, 24);
                    int length5 = this.zzxn == null ? 0 : this.zzxn.length;
                    int[] iArr5 = new int[zzb3 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.zzxn, 0, iArr5, 0, length5);
                    }
                    while (length5 < iArr5.length - 1) {
                        iArr5[length5] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length5++;
                    }
                    iArr5[length5] = zzfljVar.zzcym();
                    this.zzxn = iArr5;
                case 26:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position3 = zzfljVar.getPosition();
                    int i3 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i3++;
                    }
                    zzfljVar.zzmw(position3);
                    int length6 = this.zzxn == null ? 0 : this.zzxn.length;
                    int[] iArr6 = new int[i3 + length6];
                    if (length6 != 0) {
                        System.arraycopy(this.zzxn, 0, iArr6, 0, length6);
                    }
                    while (length6 < iArr6.length) {
                        iArr6[length6] = zzfljVar.zzcym();
                        length6++;
                    }
                    this.zzxn = iArr6;
                    zzfljVar.zzlj(zzli);
                case 32:
                    int zzb4 = zzflv.zzb(zzfljVar, 32);
                    int length7 = this.zzxo == null ? 0 : this.zzxo.length;
                    int[] iArr7 = new int[zzb4 + length7];
                    if (length7 != 0) {
                        System.arraycopy(this.zzxo, 0, iArr7, 0, length7);
                    }
                    while (length7 < iArr7.length - 1) {
                        iArr7[length7] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length7++;
                    }
                    iArr7[length7] = zzfljVar.zzcym();
                    this.zzxo = iArr7;
                case 34:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position4 = zzfljVar.getPosition();
                    int i4 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i4++;
                    }
                    zzfljVar.zzmw(position4);
                    int length8 = this.zzxo == null ? 0 : this.zzxo.length;
                    int[] iArr8 = new int[i4 + length8];
                    if (length8 != 0) {
                        System.arraycopy(this.zzxo, 0, iArr8, 0, length8);
                    }
                    while (length8 < iArr8.length) {
                        iArr8[length8] = zzfljVar.zzcym();
                        length8++;
                    }
                    this.zzxo = iArr8;
                    zzfljVar.zzlj(zzli);
                case 40:
                    int zzb5 = zzflv.zzb(zzfljVar, 40);
                    int length9 = this.zzxp == null ? 0 : this.zzxp.length;
                    int[] iArr9 = new int[zzb5 + length9];
                    if (length9 != 0) {
                        System.arraycopy(this.zzxp, 0, iArr9, 0, length9);
                    }
                    while (length9 < iArr9.length - 1) {
                        iArr9[length9] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length9++;
                    }
                    iArr9[length9] = zzfljVar.zzcym();
                    this.zzxp = iArr9;
                case 42:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position5 = zzfljVar.getPosition();
                    int i5 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i5++;
                    }
                    zzfljVar.zzmw(position5);
                    int length10 = this.zzxp == null ? 0 : this.zzxp.length;
                    int[] iArr10 = new int[i5 + length10];
                    if (length10 != 0) {
                        System.arraycopy(this.zzxp, 0, iArr10, 0, length10);
                    }
                    while (length10 < iArr10.length) {
                        iArr10[length10] = zzfljVar.zzcym();
                        length10++;
                    }
                    this.zzxp = iArr10;
                    zzfljVar.zzlj(zzli);
                case 48:
                    int zzb6 = zzflv.zzb(zzfljVar, 48);
                    int length11 = this.zzxq == null ? 0 : this.zzxq.length;
                    int[] iArr11 = new int[zzb6 + length11];
                    if (length11 != 0) {
                        System.arraycopy(this.zzxq, 0, iArr11, 0, length11);
                    }
                    while (length11 < iArr11.length - 1) {
                        iArr11[length11] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length11++;
                    }
                    iArr11[length11] = zzfljVar.zzcym();
                    this.zzxq = iArr11;
                case 50:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position6 = zzfljVar.getPosition();
                    int i6 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i6++;
                    }
                    zzfljVar.zzmw(position6);
                    int length12 = this.zzxq == null ? 0 : this.zzxq.length;
                    int[] iArr12 = new int[i6 + length12];
                    if (length12 != 0) {
                        System.arraycopy(this.zzxq, 0, iArr12, 0, length12);
                    }
                    while (length12 < iArr12.length) {
                        iArr12[length12] = zzfljVar.zzcym();
                        length12++;
                    }
                    this.zzxq = iArr12;
                    zzfljVar.zzlj(zzli);
                case 56:
                    int zzb7 = zzflv.zzb(zzfljVar, 56);
                    int length13 = this.zzxr == null ? 0 : this.zzxr.length;
                    int[] iArr13 = new int[zzb7 + length13];
                    if (length13 != 0) {
                        System.arraycopy(this.zzxr, 0, iArr13, 0, length13);
                    }
                    while (length13 < iArr13.length - 1) {
                        iArr13[length13] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length13++;
                    }
                    iArr13[length13] = zzfljVar.zzcym();
                    this.zzxr = iArr13;
                case 58:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position7 = zzfljVar.getPosition();
                    int i7 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i7++;
                    }
                    zzfljVar.zzmw(position7);
                    int length14 = this.zzxr == null ? 0 : this.zzxr.length;
                    int[] iArr14 = new int[i7 + length14];
                    if (length14 != 0) {
                        System.arraycopy(this.zzxr, 0, iArr14, 0, length14);
                    }
                    while (length14 < iArr14.length) {
                        iArr14[length14] = zzfljVar.zzcym();
                        length14++;
                    }
                    this.zzxr = iArr14;
                    zzfljVar.zzlj(zzli);
                case 64:
                    int zzb8 = zzflv.zzb(zzfljVar, 64);
                    int length15 = this.zzxs == null ? 0 : this.zzxs.length;
                    int[] iArr15 = new int[zzb8 + length15];
                    if (length15 != 0) {
                        System.arraycopy(this.zzxs, 0, iArr15, 0, length15);
                    }
                    while (length15 < iArr15.length - 1) {
                        iArr15[length15] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length15++;
                    }
                    iArr15[length15] = zzfljVar.zzcym();
                    this.zzxs = iArr15;
                case 66:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position8 = zzfljVar.getPosition();
                    int i8 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i8++;
                    }
                    zzfljVar.zzmw(position8);
                    int length16 = this.zzxs == null ? 0 : this.zzxs.length;
                    int[] iArr16 = new int[i8 + length16];
                    if (length16 != 0) {
                        System.arraycopy(this.zzxs, 0, iArr16, 0, length16);
                    }
                    while (length16 < iArr16.length) {
                        iArr16[length16] = zzfljVar.zzcym();
                        length16++;
                    }
                    this.zzxs = iArr16;
                    zzfljVar.zzlj(zzli);
                case 72:
                    int zzb9 = zzflv.zzb(zzfljVar, 72);
                    int length17 = this.zzxt == null ? 0 : this.zzxt.length;
                    int[] iArr17 = new int[zzb9 + length17];
                    if (length17 != 0) {
                        System.arraycopy(this.zzxt, 0, iArr17, 0, length17);
                    }
                    while (length17 < iArr17.length - 1) {
                        iArr17[length17] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length17++;
                    }
                    iArr17[length17] = zzfljVar.zzcym();
                    this.zzxt = iArr17;
                case 74:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position9 = zzfljVar.getPosition();
                    int i9 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i9++;
                    }
                    zzfljVar.zzmw(position9);
                    int length18 = this.zzxt == null ? 0 : this.zzxt.length;
                    int[] iArr18 = new int[i9 + length18];
                    if (length18 != 0) {
                        System.arraycopy(this.zzxt, 0, iArr18, 0, length18);
                    }
                    while (length18 < iArr18.length) {
                        iArr18[length18] = zzfljVar.zzcym();
                        length18++;
                    }
                    this.zzxt = iArr18;
                    zzfljVar.zzlj(zzli);
                case 80:
                    int zzb10 = zzflv.zzb(zzfljVar, 80);
                    int length19 = this.zzxu == null ? 0 : this.zzxu.length;
                    int[] iArr19 = new int[zzb10 + length19];
                    if (length19 != 0) {
                        System.arraycopy(this.zzxu, 0, iArr19, 0, length19);
                    }
                    while (length19 < iArr19.length - 1) {
                        iArr19[length19] = zzfljVar.zzcym();
                        zzfljVar.zzcxx();
                        length19++;
                    }
                    iArr19[length19] = zzfljVar.zzcym();
                    this.zzxu = iArr19;
                case 82:
                    zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position10 = zzfljVar.getPosition();
                    int i10 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcym();
                        i10++;
                    }
                    zzfljVar.zzmw(position10);
                    int length20 = this.zzxu == null ? 0 : this.zzxu.length;
                    int[] iArr20 = new int[i10 + length20];
                    if (length20 != 0) {
                        System.arraycopy(this.zzxu, 0, iArr20, 0, length20);
                    }
                    while (length20 < iArr20.length) {
                        iArr20[length20] = zzfljVar.zzcym();
                        length20++;
                    }
                    this.zzxu = iArr20;
                    zzfljVar.zzlj(zzli);
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzxl != null && this.zzxl.length > 0) {
            for (int i = 0; i < this.zzxl.length; i++) {
                zzflkVar.zzad(1, this.zzxl[i]);
            }
        }
        if (this.zzxm != null && this.zzxm.length > 0) {
            for (int i2 = 0; i2 < this.zzxm.length; i2++) {
                zzflkVar.zzad(2, this.zzxm[i2]);
            }
        }
        if (this.zzxn != null && this.zzxn.length > 0) {
            for (int i3 = 0; i3 < this.zzxn.length; i3++) {
                zzflkVar.zzad(3, this.zzxn[i3]);
            }
        }
        if (this.zzxo != null && this.zzxo.length > 0) {
            for (int i4 = 0; i4 < this.zzxo.length; i4++) {
                zzflkVar.zzad(4, this.zzxo[i4]);
            }
        }
        if (this.zzxp != null && this.zzxp.length > 0) {
            for (int i5 = 0; i5 < this.zzxp.length; i5++) {
                zzflkVar.zzad(5, this.zzxp[i5]);
            }
        }
        if (this.zzxq != null && this.zzxq.length > 0) {
            for (int i6 = 0; i6 < this.zzxq.length; i6++) {
                zzflkVar.zzad(6, this.zzxq[i6]);
            }
        }
        if (this.zzxr != null && this.zzxr.length > 0) {
            for (int i7 = 0; i7 < this.zzxr.length; i7++) {
                zzflkVar.zzad(7, this.zzxr[i7]);
            }
        }
        if (this.zzxs != null && this.zzxs.length > 0) {
            for (int i8 = 0; i8 < this.zzxs.length; i8++) {
                zzflkVar.zzad(8, this.zzxs[i8]);
            }
        }
        if (this.zzxt != null && this.zzxt.length > 0) {
            for (int i9 = 0; i9 < this.zzxt.length; i9++) {
                zzflkVar.zzad(9, this.zzxt[i9]);
            }
        }
        if (this.zzxu != null && this.zzxu.length > 0) {
            for (int i10 = 0; i10 < this.zzxu.length; i10++) {
                zzflkVar.zzad(10, this.zzxu[i10]);
            }
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzxl != null && this.zzxl.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzxl.length; i2++) {
                i += zzflk.zzlx(this.zzxl[i2]);
            }
            zzq = zzq + i + (this.zzxl.length * 1);
        }
        if (this.zzxm != null && this.zzxm.length > 0) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzxm.length; i4++) {
                i3 += zzflk.zzlx(this.zzxm[i4]);
            }
            zzq = zzq + i3 + (this.zzxm.length * 1);
        }
        if (this.zzxn != null && this.zzxn.length > 0) {
            int i5 = 0;
            for (int i6 = 0; i6 < this.zzxn.length; i6++) {
                i5 += zzflk.zzlx(this.zzxn[i6]);
            }
            zzq = zzq + i5 + (this.zzxn.length * 1);
        }
        if (this.zzxo != null && this.zzxo.length > 0) {
            int i7 = 0;
            for (int i8 = 0; i8 < this.zzxo.length; i8++) {
                i7 += zzflk.zzlx(this.zzxo[i8]);
            }
            zzq = zzq + i7 + (this.zzxo.length * 1);
        }
        if (this.zzxp != null && this.zzxp.length > 0) {
            int i9 = 0;
            for (int i10 = 0; i10 < this.zzxp.length; i10++) {
                i9 += zzflk.zzlx(this.zzxp[i10]);
            }
            zzq = zzq + i9 + (this.zzxp.length * 1);
        }
        if (this.zzxq != null && this.zzxq.length > 0) {
            int i11 = 0;
            for (int i12 = 0; i12 < this.zzxq.length; i12++) {
                i11 += zzflk.zzlx(this.zzxq[i12]);
            }
            zzq = zzq + i11 + (this.zzxq.length * 1);
        }
        if (this.zzxr != null && this.zzxr.length > 0) {
            int i13 = 0;
            for (int i14 = 0; i14 < this.zzxr.length; i14++) {
                i13 += zzflk.zzlx(this.zzxr[i14]);
            }
            zzq = zzq + i13 + (this.zzxr.length * 1);
        }
        if (this.zzxs != null && this.zzxs.length > 0) {
            int i15 = 0;
            for (int i16 = 0; i16 < this.zzxs.length; i16++) {
                i15 += zzflk.zzlx(this.zzxs[i16]);
            }
            zzq = zzq + i15 + (this.zzxs.length * 1);
        }
        if (this.zzxt != null && this.zzxt.length > 0) {
            int i17 = 0;
            for (int i18 = 0; i18 < this.zzxt.length; i18++) {
                i17 += zzflk.zzlx(this.zzxt[i18]);
            }
            zzq = zzq + i17 + (this.zzxt.length * 1);
        }
        if (this.zzxu == null || this.zzxu.length <= 0) {
            return zzq;
        }
        int i19 = 0;
        for (int i20 = 0; i20 < this.zzxu.length; i20++) {
            i19 += zzflk.zzlx(this.zzxu[i20]);
        }
        return zzq + i19 + (1 * this.zzxu.length);
    }
}
