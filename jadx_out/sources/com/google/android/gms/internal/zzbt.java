package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbt extends zzflm<zzbt> {
    private static volatile zzbt[] zzyk;
    public int type = 1;
    public String string = "";
    public zzbt[] zzyl = zzx();
    public zzbt[] zzym = zzx();
    public zzbt[] zzyn = zzx();
    public String zzyo = "";
    public String zzyp = "";
    public long zzyq = 0;
    public boolean zzyr = false;
    public zzbt[] zzys = zzx();
    public int[] zzyt = zzflv.zzpvy;
    public boolean zzyu = false;

    public zzbt() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    private static int zze(int i) {
        switch (i) {
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
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                return i;
            default:
                StringBuilder sb = new StringBuilder(40);
                sb.append(i);
                sb.append(" is not a valid enum Escaping");
                throw new IllegalArgumentException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:159:0x01f0. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final zzbt zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 8:
                    int position = zzfljVar.getPosition();
                    try {
                        int zzcym = zzfljVar.zzcym();
                        switch (zzcym) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                this.type = zzcym;
                                break;
                            default:
                                StringBuilder sb = new StringBuilder(36);
                                sb.append(zzcym);
                                sb.append(" is not a valid enum Type");
                                throw new IllegalArgumentException(sb.toString());
                                break;
                        }
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                        break;
                    }
                case 18:
                    this.string = zzfljVar.readString();
                    break;
                case 26:
                    int zzb = zzflv.zzb(zzfljVar, 26);
                    int length = this.zzyl == null ? 0 : this.zzyl.length;
                    zzbt[] zzbtVarArr = new zzbt[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzyl, 0, zzbtVarArr, 0, length);
                    }
                    while (length < zzbtVarArr.length - 1) {
                        zzbtVarArr[length] = new zzbt();
                        zzfljVar.zza(zzbtVarArr[length]);
                        zzfljVar.zzcxx();
                        length++;
                    }
                    zzbtVarArr[length] = new zzbt();
                    zzfljVar.zza(zzbtVarArr[length]);
                    this.zzyl = zzbtVarArr;
                    break;
                case 34:
                    int zzb2 = zzflv.zzb(zzfljVar, 34);
                    int length2 = this.zzym == null ? 0 : this.zzym.length;
                    zzbt[] zzbtVarArr2 = new zzbt[zzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzym, 0, zzbtVarArr2, 0, length2);
                    }
                    while (length2 < zzbtVarArr2.length - 1) {
                        zzbtVarArr2[length2] = new zzbt();
                        zzfljVar.zza(zzbtVarArr2[length2]);
                        zzfljVar.zzcxx();
                        length2++;
                    }
                    zzbtVarArr2[length2] = new zzbt();
                    zzfljVar.zza(zzbtVarArr2[length2]);
                    this.zzym = zzbtVarArr2;
                    break;
                case 42:
                    int zzb3 = zzflv.zzb(zzfljVar, 42);
                    int length3 = this.zzyn == null ? 0 : this.zzyn.length;
                    zzbt[] zzbtVarArr3 = new zzbt[zzb3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzyn, 0, zzbtVarArr3, 0, length3);
                    }
                    while (length3 < zzbtVarArr3.length - 1) {
                        zzbtVarArr3[length3] = new zzbt();
                        zzfljVar.zza(zzbtVarArr3[length3]);
                        zzfljVar.zzcxx();
                        length3++;
                    }
                    zzbtVarArr3[length3] = new zzbt();
                    zzfljVar.zza(zzbtVarArr3[length3]);
                    this.zzyn = zzbtVarArr3;
                    break;
                case 50:
                    this.zzyo = zzfljVar.readString();
                    break;
                case 58:
                    this.zzyp = zzfljVar.readString();
                    break;
                case 64:
                    this.zzyq = zzfljVar.zzcyr();
                    break;
                case 72:
                    this.zzyu = zzfljVar.zzcyd();
                    break;
                case 80:
                    int zzb4 = zzflv.zzb(zzfljVar, 80);
                    int[] iArr = new int[zzb4];
                    int i = 0;
                    for (int i2 = 0; i2 < zzb4; i2++) {
                        if (i2 != 0) {
                            zzfljVar.zzcxx();
                        }
                        int position2 = zzfljVar.getPosition();
                        try {
                            iArr[i] = zze(zzfljVar.zzcym());
                            i++;
                        } catch (IllegalArgumentException unused2) {
                            zzfljVar.zzmw(position2);
                            zza(zzfljVar, zzcxx);
                        }
                    }
                    if (i == 0) {
                        break;
                    } else {
                        int length4 = this.zzyt == null ? 0 : this.zzyt.length;
                        if (length4 != 0 || i != iArr.length) {
                            int[] iArr2 = new int[length4 + i];
                            if (length4 != 0) {
                                System.arraycopy(this.zzyt, 0, iArr2, 0, length4);
                            }
                            System.arraycopy(iArr, 0, iArr2, length4, i);
                            this.zzyt = iArr2;
                            break;
                        } else {
                            this.zzyt = iArr;
                            break;
                        }
                    }
                case 82:
                    int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position3 = zzfljVar.getPosition();
                    int i3 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        try {
                            zze(zzfljVar.zzcym());
                            i3++;
                        } catch (IllegalArgumentException unused3) {
                        }
                    }
                    if (i3 != 0) {
                        zzfljVar.zzmw(position3);
                        int length5 = this.zzyt == null ? 0 : this.zzyt.length;
                        int[] iArr3 = new int[i3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzyt, 0, iArr3, 0, length5);
                        }
                        while (zzfljVar.zzcyo() > 0) {
                            int position4 = zzfljVar.getPosition();
                            try {
                                iArr3[length5] = zze(zzfljVar.zzcym());
                                length5++;
                            } catch (IllegalArgumentException unused4) {
                                zzfljVar.zzmw(position4);
                                zza(zzfljVar, 80);
                            }
                        }
                        this.zzyt = iArr3;
                    }
                    zzfljVar.zzlj(zzli);
                    break;
                case 90:
                    int zzb5 = zzflv.zzb(zzfljVar, 90);
                    int length6 = this.zzys == null ? 0 : this.zzys.length;
                    zzbt[] zzbtVarArr4 = new zzbt[zzb5 + length6];
                    if (length6 != 0) {
                        System.arraycopy(this.zzys, 0, zzbtVarArr4, 0, length6);
                    }
                    while (length6 < zzbtVarArr4.length - 1) {
                        zzbtVarArr4[length6] = new zzbt();
                        zzfljVar.zza(zzbtVarArr4[length6]);
                        zzfljVar.zzcxx();
                        length6++;
                    }
                    zzbtVarArr4[length6] = new zzbt();
                    zzfljVar.zza(zzbtVarArr4[length6]);
                    this.zzys = zzbtVarArr4;
                    break;
                case 96:
                    this.zzyr = zzfljVar.zzcyd();
                    break;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
                    break;
            }
        }
    }

    public static zzbt[] zzx() {
        if (zzyk == null) {
            synchronized (zzflq.zzpvt) {
                if (zzyk == null) {
                    zzyk = new zzbt[0];
                }
            }
        }
        return zzyk;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbt)) {
            return false;
        }
        zzbt zzbtVar = (zzbt) obj;
        if (this.type != zzbtVar.type) {
            return false;
        }
        if (this.string == null) {
            if (zzbtVar.string != null) {
                return false;
            }
        } else if (!this.string.equals(zzbtVar.string)) {
            return false;
        }
        if (!zzflq.equals(this.zzyl, zzbtVar.zzyl) || !zzflq.equals(this.zzym, zzbtVar.zzym) || !zzflq.equals(this.zzyn, zzbtVar.zzyn)) {
            return false;
        }
        if (this.zzyo == null) {
            if (zzbtVar.zzyo != null) {
                return false;
            }
        } else if (!this.zzyo.equals(zzbtVar.zzyo)) {
            return false;
        }
        if (this.zzyp == null) {
            if (zzbtVar.zzyp != null) {
                return false;
            }
        } else if (!this.zzyp.equals(zzbtVar.zzyp)) {
            return false;
        }
        if (this.zzyq == zzbtVar.zzyq && this.zzyr == zzbtVar.zzyr && zzflq.equals(this.zzys, zzbtVar.zzys) && zzflq.equals(this.zzyt, zzbtVar.zzyt) && this.zzyu == zzbtVar.zzyu) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzbtVar.zzpvl == null || zzbtVar.zzpvl.isEmpty() : this.zzpvl.equals(zzbtVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((((((((((527 + getClass().getName().hashCode()) * 31) + this.type) * 31) + (this.string == null ? 0 : this.string.hashCode())) * 31) + zzflq.hashCode(this.zzyl)) * 31) + zzflq.hashCode(this.zzym)) * 31) + zzflq.hashCode(this.zzyn)) * 31) + (this.zzyo == null ? 0 : this.zzyo.hashCode())) * 31) + (this.zzyp == null ? 0 : this.zzyp.hashCode())) * 31) + ((int) (this.zzyq ^ (this.zzyq >>> 32)))) * 31) + (this.zzyr ? 1231 : 1237)) * 31) + zzflq.hashCode(this.zzys)) * 31) + zzflq.hashCode(this.zzyt)) * 31) + (this.zzyu ? 1231 : 1237)) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        zzflkVar.zzad(1, this.type);
        if (this.string != null && !this.string.equals("")) {
            zzflkVar.zzp(2, this.string);
        }
        if (this.zzyl != null && this.zzyl.length > 0) {
            for (int i = 0; i < this.zzyl.length; i++) {
                zzbt zzbtVar = this.zzyl[i];
                if (zzbtVar != null) {
                    zzflkVar.zza(3, zzbtVar);
                }
            }
        }
        if (this.zzym != null && this.zzym.length > 0) {
            for (int i2 = 0; i2 < this.zzym.length; i2++) {
                zzbt zzbtVar2 = this.zzym[i2];
                if (zzbtVar2 != null) {
                    zzflkVar.zza(4, zzbtVar2);
                }
            }
        }
        if (this.zzyn != null && this.zzyn.length > 0) {
            for (int i3 = 0; i3 < this.zzyn.length; i3++) {
                zzbt zzbtVar3 = this.zzyn[i3];
                if (zzbtVar3 != null) {
                    zzflkVar.zza(5, zzbtVar3);
                }
            }
        }
        if (this.zzyo != null && !this.zzyo.equals("")) {
            zzflkVar.zzp(6, this.zzyo);
        }
        if (this.zzyp != null && !this.zzyp.equals("")) {
            zzflkVar.zzp(7, this.zzyp);
        }
        if (this.zzyq != 0) {
            zzflkVar.zzf(8, this.zzyq);
        }
        if (this.zzyu) {
            zzflkVar.zzl(9, this.zzyu);
        }
        if (this.zzyt != null && this.zzyt.length > 0) {
            for (int i4 = 0; i4 < this.zzyt.length; i4++) {
                zzflkVar.zzad(10, this.zzyt[i4]);
            }
        }
        if (this.zzys != null && this.zzys.length > 0) {
            for (int i5 = 0; i5 < this.zzys.length; i5++) {
                zzbt zzbtVar4 = this.zzys[i5];
                if (zzbtVar4 != null) {
                    zzflkVar.zza(11, zzbtVar4);
                }
            }
        }
        if (this.zzyr) {
            zzflkVar.zzl(12, this.zzyr);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    protected final int zzq() {
        int zzq = super.zzq() + zzflk.zzag(1, this.type);
        if (this.string != null && !this.string.equals("")) {
            zzq += zzflk.zzq(2, this.string);
        }
        if (this.zzyl != null && this.zzyl.length > 0) {
            int i = zzq;
            for (int i2 = 0; i2 < this.zzyl.length; i2++) {
                zzbt zzbtVar = this.zzyl[i2];
                if (zzbtVar != null) {
                    i += zzflk.zzb(3, zzbtVar);
                }
            }
            zzq = i;
        }
        if (this.zzym != null && this.zzym.length > 0) {
            int i3 = zzq;
            for (int i4 = 0; i4 < this.zzym.length; i4++) {
                zzbt zzbtVar2 = this.zzym[i4];
                if (zzbtVar2 != null) {
                    i3 += zzflk.zzb(4, zzbtVar2);
                }
            }
            zzq = i3;
        }
        if (this.zzyn != null && this.zzyn.length > 0) {
            int i5 = zzq;
            for (int i6 = 0; i6 < this.zzyn.length; i6++) {
                zzbt zzbtVar3 = this.zzyn[i6];
                if (zzbtVar3 != null) {
                    i5 += zzflk.zzb(5, zzbtVar3);
                }
            }
            zzq = i5;
        }
        if (this.zzyo != null && !this.zzyo.equals("")) {
            zzq += zzflk.zzq(6, this.zzyo);
        }
        if (this.zzyp != null && !this.zzyp.equals("")) {
            zzq += zzflk.zzq(7, this.zzyp);
        }
        if (this.zzyq != 0) {
            zzq += zzflk.zzc(8, this.zzyq);
        }
        if (this.zzyu) {
            zzq += zzflk.zzlw(9) + 1;
        }
        if (this.zzyt != null && this.zzyt.length > 0) {
            int i7 = 0;
            for (int i8 = 0; i8 < this.zzyt.length; i8++) {
                i7 += zzflk.zzlx(this.zzyt[i8]);
            }
            zzq = zzq + i7 + (this.zzyt.length * 1);
        }
        if (this.zzys != null && this.zzys.length > 0) {
            for (int i9 = 0; i9 < this.zzys.length; i9++) {
                zzbt zzbtVar4 = this.zzys[i9];
                if (zzbtVar4 != null) {
                    zzq += zzflk.zzb(11, zzbtVar4);
                }
            }
        }
        return this.zzyr ? zzq + zzflk.zzlw(12) + 1 : zzq;
    }
}
