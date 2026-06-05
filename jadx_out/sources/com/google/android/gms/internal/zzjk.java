package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzjk extends zzflm<zzjk> {
    private Integer zzbei = null;
    public String zzbej = null;
    private Integer zzbek = null;
    private Integer zzbel = null;
    private zzjv zzbem = null;
    public long[] zzben = zzflv.zzpvz;
    public zzji zzbeo = null;
    private zzjj zzbep = null;
    private zzjo zzbeq = null;
    public zzjd zzber = null;

    public zzjk() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final zzjk zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 72:
                    this.zzbei = Integer.valueOf(zzfljVar.zzcym());
                case 82:
                    this.zzbej = zzfljVar.readString();
                case 88:
                    this.zzbek = Integer.valueOf(zzfljVar.zzcym());
                case 96:
                    int position = zzfljVar.getPosition();
                    try {
                        this.zzbel = Integer.valueOf(zzjc.zzd(zzfljVar.zzcym()));
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(position);
                        zza(zzfljVar, zzcxx);
                    }
                case 106:
                    if (this.zzbem == null) {
                        this.zzbem = new zzjv();
                    }
                    zzflsVar = this.zzbem;
                    zzfljVar.zza(zzflsVar);
                case 112:
                    int zzb = zzflv.zzb(zzfljVar, 112);
                    int length = this.zzben == null ? 0 : this.zzben.length;
                    long[] jArr = new long[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzben, 0, jArr, 0, length);
                    }
                    while (length < jArr.length - 1) {
                        jArr[length] = zzfljVar.zzcyr();
                        zzfljVar.zzcxx();
                        length++;
                    }
                    jArr[length] = zzfljVar.zzcyr();
                    this.zzben = jArr;
                case 114:
                    int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position2 = zzfljVar.getPosition();
                    int i = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcyr();
                        i++;
                    }
                    zzfljVar.zzmw(position2);
                    int length2 = this.zzben == null ? 0 : this.zzben.length;
                    long[] jArr2 = new long[i + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzben, 0, jArr2, 0, length2);
                    }
                    while (length2 < jArr2.length) {
                        jArr2[length2] = zzfljVar.zzcyr();
                        length2++;
                    }
                    this.zzben = jArr2;
                    zzfljVar.zzlj(zzli);
                case 122:
                    if (this.zzbeo == null) {
                        this.zzbeo = new zzji();
                    }
                    zzflsVar = this.zzbeo;
                    zzfljVar.zza(zzflsVar);
                case 130:
                    if (this.zzbep == null) {
                        this.zzbep = new zzjj();
                    }
                    zzflsVar = this.zzbep;
                    zzfljVar.zza(zzflsVar);
                case 138:
                    if (this.zzbeq == null) {
                        this.zzbeq = new zzjo();
                    }
                    zzflsVar = this.zzbeq;
                    zzfljVar.zza(zzflsVar);
                case 146:
                    if (this.zzber == null) {
                        this.zzber = new zzjd();
                    }
                    zzflsVar = this.zzber;
                    zzfljVar.zza(zzflsVar);
                default:
                    if (!super.zza(zzfljVar, zzcxx)) {
                        return this;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzbei != null) {
            zzflkVar.zzad(9, this.zzbei.intValue());
        }
        if (this.zzbej != null) {
            zzflkVar.zzp(10, this.zzbej);
        }
        if (this.zzbek != null) {
            int intValue = this.zzbek.intValue();
            zzflkVar.zzac(11, 0);
            zzflkVar.zzmy(intValue);
        }
        if (this.zzbel != null) {
            zzflkVar.zzad(12, this.zzbel.intValue());
        }
        if (this.zzbem != null) {
            zzflkVar.zza(13, this.zzbem);
        }
        if (this.zzben != null && this.zzben.length > 0) {
            for (int i = 0; i < this.zzben.length; i++) {
                zzflkVar.zza(14, this.zzben[i]);
            }
        }
        if (this.zzbeo != null) {
            zzflkVar.zza(15, this.zzbeo);
        }
        if (this.zzbep != null) {
            zzflkVar.zza(16, this.zzbep);
        }
        if (this.zzbeq != null) {
            zzflkVar.zza(17, this.zzbeq);
        }
        if (this.zzber != null) {
            zzflkVar.zza(18, this.zzber);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzbei != null) {
            zzq += zzflk.zzag(9, this.zzbei.intValue());
        }
        if (this.zzbej != null) {
            zzq += zzflk.zzq(10, this.zzbej);
        }
        if (this.zzbek != null) {
            zzq += zzflk.zzlw(11) + zzflk.zzmf(this.zzbek.intValue());
        }
        if (this.zzbel != null) {
            zzq += zzflk.zzag(12, this.zzbel.intValue());
        }
        if (this.zzbem != null) {
            zzq += zzflk.zzb(13, this.zzbem);
        }
        if (this.zzben != null && this.zzben.length > 0) {
            int i = 0;
            for (int i2 = 0; i2 < this.zzben.length; i2++) {
                i += zzflk.zzdj(this.zzben[i2]);
            }
            zzq = zzq + i + (1 * this.zzben.length);
        }
        if (this.zzbeo != null) {
            zzq += zzflk.zzb(15, this.zzbeo);
        }
        if (this.zzbep != null) {
            zzq += zzflk.zzb(16, this.zzbep);
        }
        if (this.zzbeq != null) {
            zzq += zzflk.zzb(17, this.zzbeq);
        }
        return this.zzber != null ? zzq + zzflk.zzb(18, this.zzber) : zzq;
    }
}
