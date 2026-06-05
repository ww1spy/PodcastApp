package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzfme extends zzflm<zzfme> {
    private static volatile zzfme[] zzpxh;
    public Integer zzjsx = null;
    public String url = null;
    public zzflz zzpxi = null;
    private zzfmb zzpxj = null;
    private Integer zzpxk = null;
    private int[] zzpxl = zzflv.zzpvy;
    private String zzpxm = null;
    public Integer zzpxn = null;
    public String[] zzpxo = zzflv.EMPTY_STRING_ARRAY;

    public zzfme() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x004a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzbm, reason: merged with bridge method [inline-methods] */
    public final zzfme zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        int zzcya;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 8:
                    this.zzjsx = Integer.valueOf(zzfljVar.zzcya());
                case 18:
                    this.url = zzfljVar.readString();
                case 26:
                    if (this.zzpxi == null) {
                        this.zzpxi = new zzflz();
                    }
                    zzflsVar = this.zzpxi;
                    zzfljVar.zza(zzflsVar);
                case 34:
                    if (this.zzpxj == null) {
                        this.zzpxj = new zzfmb();
                    }
                    zzflsVar = this.zzpxj;
                    zzfljVar.zza(zzflsVar);
                case 40:
                    this.zzpxk = Integer.valueOf(zzfljVar.zzcya());
                case 48:
                    int zzb = zzflv.zzb(zzfljVar, 48);
                    int length = this.zzpxl == null ? 0 : this.zzpxl.length;
                    int[] iArr = new int[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzpxl, 0, iArr, 0, length);
                    }
                    while (length < iArr.length - 1) {
                        iArr[length] = zzfljVar.zzcya();
                        zzfljVar.zzcxx();
                        length++;
                    }
                    iArr[length] = zzfljVar.zzcya();
                    this.zzpxl = iArr;
                case 50:
                    int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position = zzfljVar.getPosition();
                    int i = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcya();
                        i++;
                    }
                    zzfljVar.zzmw(position);
                    int length2 = this.zzpxl == null ? 0 : this.zzpxl.length;
                    int[] iArr2 = new int[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzpxl, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length) {
                        iArr2[length2] = zzfljVar.zzcya();
                        length2++;
                    }
                    this.zzpxl = iArr2;
                    zzfljVar.zzlj(zzli);
                case 58:
                    this.zzpxm = zzfljVar.readString();
                case 64:
                    int position2 = zzfljVar.getPosition();
                    try {
                        zzcya = zzfljVar.zzcya();
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position2);
                        zza(zzfljVar, zzcxx);
                    }
                    switch (zzcya) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.zzpxn = Integer.valueOf(zzcya);
                        default:
                            StringBuilder sb = new StringBuilder(46);
                            sb.append(zzcya);
                            sb.append(" is not a valid enum AdResourceType");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                    }
                case 74:
                    int zzb2 = zzflv.zzb(zzfljVar, 74);
                    int length3 = this.zzpxo == null ? 0 : this.zzpxo.length;
                    String[] strArr = new String[zzb2 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzpxo, 0, strArr, 0, length3);
                    }
                    while (length3 < strArr.length - 1) {
                        strArr[length3] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length3++;
                    }
                    strArr[length3] = zzfljVar.readString();
                    this.zzpxo = strArr;
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
            }
        }
    }

    public static zzfme[] zzdct() {
        if (zzpxh == null) {
            synchronized (zzflq.zzpvt) {
                if (zzpxh == null) {
                    zzpxh = new zzfme[0];
                }
            }
        }
        return zzpxh;
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        zzflkVar.zzad(1, this.zzjsx.intValue());
        if (this.url != null) {
            zzflkVar.zzp(2, this.url);
        }
        if (this.zzpxi != null) {
            zzflkVar.zza(3, this.zzpxi);
        }
        if (this.zzpxj != null) {
            zzflkVar.zza(4, this.zzpxj);
        }
        if (this.zzpxk != null) {
            zzflkVar.zzad(5, this.zzpxk.intValue());
        }
        if (this.zzpxl != null && this.zzpxl.length > 0) {
            for (int i = 0; i < this.zzpxl.length; i++) {
                zzflkVar.zzad(6, this.zzpxl[i]);
            }
        }
        if (this.zzpxm != null) {
            zzflkVar.zzp(7, this.zzpxm);
        }
        if (this.zzpxn != null) {
            zzflkVar.zzad(8, this.zzpxn.intValue());
        }
        if (this.zzpxo != null && this.zzpxo.length > 0) {
            for (int i2 = 0; i2 < this.zzpxo.length; i2++) {
                String str = this.zzpxo[i2];
                if (str != null) {
                    zzflkVar.zzp(9, str);
                }
            }
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq() + zzflk.zzag(1, this.zzjsx.intValue());
        if (this.url != null) {
            zzq += zzflk.zzq(2, this.url);
        }
        if (this.zzpxi != null) {
            zzq += zzflk.zzb(3, this.zzpxi);
        }
        if (this.zzpxj != null) {
            zzq += zzflk.zzb(4, this.zzpxj);
        }
        if (this.zzpxk != null) {
            zzq += zzflk.zzag(5, this.zzpxk.intValue());
        }
        if (this.zzpxl != null && this.zzpxl.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzpxl.length; i2++) {
                i += zzflk.zzlx(this.zzpxl[i2]);
            }
            zzq = zzq + i + (this.zzpxl.length * 1);
        }
        if (this.zzpxm != null) {
            zzq += zzflk.zzq(7, this.zzpxm);
        }
        if (this.zzpxn != null) {
            zzq += zzflk.zzag(8, this.zzpxn.intValue());
        }
        if (this.zzpxo == null || this.zzpxo.length <= 0) {
            return zzq;
        }
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.zzpxo.length; i5++) {
            String str = this.zzpxo[i5];
            if (str != null) {
                i4++;
                i3 += zzflk.zztx(str);
            }
        }
        return zzq + i3 + (1 * i4);
    }
}
