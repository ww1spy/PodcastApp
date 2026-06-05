package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbj {

    /* loaded from: classes.dex */
    public static final class zza extends zzflm<zza> {
        public static final zzfln<zzbt, zza> zzxv = zzfln.zza(11, zza.class, 810);
        private static final zza[] zzxw = new zza[0];
        public int[] zzxx = zzflv.zzpvy;
        public int[] zzxy = zzflv.zzpvy;
        public int[] zzxz = zzflv.zzpvy;
        private int zzya = 0;
        public int[] zzyb = zzflv.zzpvy;
        public int zzyc = 0;
        private int zzyd = 0;

        public zza() {
            this.zzpvl = null;
            this.zzpnr = -1;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (zzflq.equals(this.zzxx, zzaVar.zzxx) && zzflq.equals(this.zzxy, zzaVar.zzxy) && zzflq.equals(this.zzxz, zzaVar.zzxz) && this.zzya == zzaVar.zzya && zzflq.equals(this.zzyb, zzaVar.zzyb) && this.zzyc == zzaVar.zzyc && this.zzyd == zzaVar.zzyd) {
                return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzaVar.zzpvl == null || zzaVar.zzpvl.isEmpty() : this.zzpvl.equals(zzaVar.zzpvl);
            }
            return false;
        }

        public final int hashCode() {
            return ((((((((((((((((527 + getClass().getName().hashCode()) * 31) + zzflq.hashCode(this.zzxx)) * 31) + zzflq.hashCode(this.zzxy)) * 31) + zzflq.hashCode(this.zzxz)) * 31) + this.zzya) * 31) + zzflq.hashCode(this.zzyb)) * 31) + this.zzyc) * 31) + this.zzyd) * 31) + ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode());
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
                        int length = this.zzxx == null ? 0 : this.zzxx.length;
                        int[] iArr = new int[zzb + length];
                        if (length != 0) {
                            System.arraycopy(this.zzxx, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzfljVar.zzcym();
                            zzfljVar.zzcxx();
                            length++;
                        }
                        iArr[length] = zzfljVar.zzcym();
                        this.zzxx = iArr;
                    case 10:
                        zzli = zzfljVar.zzli(zzfljVar.zzcym());
                        int position = zzfljVar.getPosition();
                        int i = 0;
                        while (zzfljVar.zzcyo() > 0) {
                            zzfljVar.zzcym();
                            i++;
                        }
                        zzfljVar.zzmw(position);
                        int length2 = this.zzxx == null ? 0 : this.zzxx.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzxx, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzfljVar.zzcym();
                            length2++;
                        }
                        this.zzxx = iArr2;
                        zzfljVar.zzlj(zzli);
                    case 16:
                        int zzb2 = zzflv.zzb(zzfljVar, 16);
                        int length3 = this.zzxy == null ? 0 : this.zzxy.length;
                        int[] iArr3 = new int[zzb2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzxy, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = zzfljVar.zzcym();
                            zzfljVar.zzcxx();
                            length3++;
                        }
                        iArr3[length3] = zzfljVar.zzcym();
                        this.zzxy = iArr3;
                    case 18:
                        zzli = zzfljVar.zzli(zzfljVar.zzcym());
                        int position2 = zzfljVar.getPosition();
                        int i2 = 0;
                        while (zzfljVar.zzcyo() > 0) {
                            zzfljVar.zzcym();
                            i2++;
                        }
                        zzfljVar.zzmw(position2);
                        int length4 = this.zzxy == null ? 0 : this.zzxy.length;
                        int[] iArr4 = new int[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzxy, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = zzfljVar.zzcym();
                            length4++;
                        }
                        this.zzxy = iArr4;
                        zzfljVar.zzlj(zzli);
                    case 24:
                        int zzb3 = zzflv.zzb(zzfljVar, 24);
                        int length5 = this.zzxz == null ? 0 : this.zzxz.length;
                        int[] iArr5 = new int[zzb3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzxz, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = zzfljVar.zzcym();
                            zzfljVar.zzcxx();
                            length5++;
                        }
                        iArr5[length5] = zzfljVar.zzcym();
                        this.zzxz = iArr5;
                    case 26:
                        zzli = zzfljVar.zzli(zzfljVar.zzcym());
                        int position3 = zzfljVar.getPosition();
                        int i3 = 0;
                        while (zzfljVar.zzcyo() > 0) {
                            zzfljVar.zzcym();
                            i3++;
                        }
                        zzfljVar.zzmw(position3);
                        int length6 = this.zzxz == null ? 0 : this.zzxz.length;
                        int[] iArr6 = new int[i3 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzxz, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = zzfljVar.zzcym();
                            length6++;
                        }
                        this.zzxz = iArr6;
                        zzfljVar.zzlj(zzli);
                    case 32:
                        this.zzya = zzfljVar.zzcym();
                    case 40:
                        int zzb4 = zzflv.zzb(zzfljVar, 40);
                        int length7 = this.zzyb == null ? 0 : this.zzyb.length;
                        int[] iArr7 = new int[zzb4 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzyb, 0, iArr7, 0, length7);
                        }
                        while (length7 < iArr7.length - 1) {
                            iArr7[length7] = zzfljVar.zzcym();
                            zzfljVar.zzcxx();
                            length7++;
                        }
                        iArr7[length7] = zzfljVar.zzcym();
                        this.zzyb = iArr7;
                    case 42:
                        zzli = zzfljVar.zzli(zzfljVar.zzcym());
                        int position4 = zzfljVar.getPosition();
                        int i4 = 0;
                        while (zzfljVar.zzcyo() > 0) {
                            zzfljVar.zzcym();
                            i4++;
                        }
                        zzfljVar.zzmw(position4);
                        int length8 = this.zzyb == null ? 0 : this.zzyb.length;
                        int[] iArr8 = new int[i4 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzyb, 0, iArr8, 0, length8);
                        }
                        while (length8 < iArr8.length) {
                            iArr8[length8] = zzfljVar.zzcym();
                            length8++;
                        }
                        this.zzyb = iArr8;
                        zzfljVar.zzlj(zzli);
                    case 48:
                        this.zzyc = zzfljVar.zzcym();
                    case 56:
                        this.zzyd = zzfljVar.zzcym();
                    default:
                        if (!super.zza(zzfljVar, zzcxx)) {
                            return this;
                        }
                }
            }
        }

        @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
        public final void zza(zzflk zzflkVar) throws IOException {
            if (this.zzxx != null && this.zzxx.length > 0) {
                for (int i = 0; i < this.zzxx.length; i++) {
                    zzflkVar.zzad(1, this.zzxx[i]);
                }
            }
            if (this.zzxy != null && this.zzxy.length > 0) {
                for (int i2 = 0; i2 < this.zzxy.length; i2++) {
                    zzflkVar.zzad(2, this.zzxy[i2]);
                }
            }
            if (this.zzxz != null && this.zzxz.length > 0) {
                for (int i3 = 0; i3 < this.zzxz.length; i3++) {
                    zzflkVar.zzad(3, this.zzxz[i3]);
                }
            }
            if (this.zzya != 0) {
                zzflkVar.zzad(4, this.zzya);
            }
            if (this.zzyb != null && this.zzyb.length > 0) {
                for (int i4 = 0; i4 < this.zzyb.length; i4++) {
                    zzflkVar.zzad(5, this.zzyb[i4]);
                }
            }
            if (this.zzyc != 0) {
                zzflkVar.zzad(6, this.zzyc);
            }
            if (this.zzyd != 0) {
                zzflkVar.zzad(7, this.zzyd);
            }
            super.zza(zzflkVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
        public final int zzq() {
            int zzq = super.zzq();
            if (this.zzxx != null && this.zzxx.length > 0) {
                int i = 0;
                for (int i2 = 0; i2 < this.zzxx.length; i2++) {
                    i += zzflk.zzlx(this.zzxx[i2]);
                }
                zzq = zzq + i + (this.zzxx.length * 1);
            }
            if (this.zzxy != null && this.zzxy.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzxy.length; i4++) {
                    i3 += zzflk.zzlx(this.zzxy[i4]);
                }
                zzq = zzq + i3 + (this.zzxy.length * 1);
            }
            if (this.zzxz != null && this.zzxz.length > 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < this.zzxz.length; i6++) {
                    i5 += zzflk.zzlx(this.zzxz[i6]);
                }
                zzq = zzq + i5 + (this.zzxz.length * 1);
            }
            if (this.zzya != 0) {
                zzq += zzflk.zzag(4, this.zzya);
            }
            if (this.zzyb != null && this.zzyb.length > 0) {
                int i7 = 0;
                for (int i8 = 0; i8 < this.zzyb.length; i8++) {
                    i7 += zzflk.zzlx(this.zzyb[i8]);
                }
                zzq = zzq + i7 + (1 * this.zzyb.length);
            }
            if (this.zzyc != 0) {
                zzq += zzflk.zzag(6, this.zzyc);
            }
            return this.zzyd != 0 ? zzq + zzflk.zzag(7, this.zzyd) : zzq;
        }
    }
}
