package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzflw extends zzflm<zzflw> {
    public Integer zzbdh = null;
    private Integer zzpwf = null;
    public String url = null;
    public String zzpwg = null;
    private String zzpwh = null;
    public zzflx zzpwi = null;
    public zzfme[] zzpwj = zzfme.zzdct();
    public String zzpwk = null;
    public zzfmd zzpwl = null;
    private Boolean zzpwm = null;
    private String[] zzpwn = zzflv.EMPTY_STRING_ARRAY;
    private String zzpwo = null;
    private Boolean zzpwp = null;
    private Boolean zzpwq = null;
    private byte[] zzpwr = null;
    public zzfmf zzpws = null;

    public zzflw() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzbk, reason: merged with bridge method [inline-methods] */
    public final zzflw zza(zzflj zzfljVar) throws IOException {
        zzfls zzflsVar;
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 10:
                    this.url = zzfljVar.readString();
                case 18:
                    this.zzpwg = zzfljVar.readString();
                case 26:
                    this.zzpwh = zzfljVar.readString();
                case 34:
                    int zzb = zzflv.zzb(zzfljVar, 34);
                    int length = this.zzpwj == null ? 0 : this.zzpwj.length;
                    zzfme[] zzfmeVarArr = new zzfme[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzpwj, 0, zzfmeVarArr, 0, length);
                    }
                    while (length < zzfmeVarArr.length - 1) {
                        zzfmeVarArr[length] = new zzfme();
                        zzfljVar.zza(zzfmeVarArr[length]);
                        zzfljVar.zzcxx();
                        length++;
                    }
                    zzfmeVarArr[length] = new zzfme();
                    zzfljVar.zza(zzfmeVarArr[length]);
                    this.zzpwj = zzfmeVarArr;
                case 40:
                    this.zzpwm = Boolean.valueOf(zzfljVar.zzcyd());
                case 50:
                    int zzb2 = zzflv.zzb(zzfljVar, 50);
                    int length2 = this.zzpwn == null ? 0 : this.zzpwn.length;
                    String[] strArr = new String[zzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzpwn, 0, strArr, 0, length2);
                    }
                    while (length2 < strArr.length - 1) {
                        strArr[length2] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length2++;
                    }
                    strArr[length2] = zzfljVar.readString();
                    this.zzpwn = strArr;
                case 58:
                    this.zzpwo = zzfljVar.readString();
                case 64:
                    this.zzpwp = Boolean.valueOf(zzfljVar.zzcyd());
                case 72:
                    this.zzpwq = Boolean.valueOf(zzfljVar.zzcyd());
                case 80:
                    zzfljVar.getPosition();
                    int zzcya = zzfljVar.zzcya();
                    switch (zzcya) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                            this.zzbdh = Integer.valueOf(zzcya);
                            break;
                        default:
                            StringBuilder sb = new StringBuilder(42);
                            sb.append(zzcya);
                            sb.append(" is not a valid enum ReportType");
                            throw new IllegalArgumentException(sb.toString());
                    }
                case 88:
                    try {
                        int zzcya2 = zzfljVar.zzcya();
                        switch (zzcya2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.zzpwf = Integer.valueOf(zzcya2);
                                break;
                            default:
                                StringBuilder sb2 = new StringBuilder(39);
                                sb2.append(zzcya2);
                                sb2.append(" is not a valid enum Verdict");
                                throw new IllegalArgumentException(sb2.toString());
                        }
                    } catch (IllegalArgumentException unused) {
                        zzfljVar.zzmw(zzfljVar.getPosition());
                        zza(zzfljVar, zzcxx);
                    }
                case 98:
                    if (this.zzpwi == null) {
                        this.zzpwi = new zzflx();
                    }
                    zzflsVar = this.zzpwi;
                    zzfljVar.zza(zzflsVar);
                case 106:
                    this.zzpwk = zzfljVar.readString();
                case 114:
                    if (this.zzpwl == null) {
                        this.zzpwl = new zzfmd();
                    }
                    zzflsVar = this.zzpwl;
                    zzfljVar.zza(zzflsVar);
                case 122:
                    this.zzpwr = zzfljVar.readBytes();
                case 138:
                    if (this.zzpws == null) {
                        this.zzpws = new zzfmf();
                    }
                    zzflsVar = this.zzpws;
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
        if (this.url != null) {
            zzflkVar.zzp(1, this.url);
        }
        if (this.zzpwg != null) {
            zzflkVar.zzp(2, this.zzpwg);
        }
        if (this.zzpwh != null) {
            zzflkVar.zzp(3, this.zzpwh);
        }
        if (this.zzpwj != null && this.zzpwj.length > 0) {
            for (int i = 0; i < this.zzpwj.length; i++) {
                zzfme zzfmeVar = this.zzpwj[i];
                if (zzfmeVar != null) {
                    zzflkVar.zza(4, zzfmeVar);
                }
            }
        }
        if (this.zzpwm != null) {
            zzflkVar.zzl(5, this.zzpwm.booleanValue());
        }
        if (this.zzpwn != null && this.zzpwn.length > 0) {
            for (int i2 = 0; i2 < this.zzpwn.length; i2++) {
                String str = this.zzpwn[i2];
                if (str != null) {
                    zzflkVar.zzp(6, str);
                }
            }
        }
        if (this.zzpwo != null) {
            zzflkVar.zzp(7, this.zzpwo);
        }
        if (this.zzpwp != null) {
            zzflkVar.zzl(8, this.zzpwp.booleanValue());
        }
        if (this.zzpwq != null) {
            zzflkVar.zzl(9, this.zzpwq.booleanValue());
        }
        if (this.zzbdh != null) {
            zzflkVar.zzad(10, this.zzbdh.intValue());
        }
        if (this.zzpwf != null) {
            zzflkVar.zzad(11, this.zzpwf.intValue());
        }
        if (this.zzpwi != null) {
            zzflkVar.zza(12, this.zzpwi);
        }
        if (this.zzpwk != null) {
            zzflkVar.zzp(13, this.zzpwk);
        }
        if (this.zzpwl != null) {
            zzflkVar.zza(14, this.zzpwl);
        }
        if (this.zzpwr != null) {
            zzflkVar.zzc(15, this.zzpwr);
        }
        if (this.zzpws != null) {
            zzflkVar.zza(17, this.zzpws);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.url != null) {
            zzq += zzflk.zzq(1, this.url);
        }
        if (this.zzpwg != null) {
            zzq += zzflk.zzq(2, this.zzpwg);
        }
        if (this.zzpwh != null) {
            zzq += zzflk.zzq(3, this.zzpwh);
        }
        if (this.zzpwj != null && this.zzpwj.length > 0) {
            int i = zzq;
            for (int i2 = 0; i2 < this.zzpwj.length; i2++) {
                zzfme zzfmeVar = this.zzpwj[i2];
                if (zzfmeVar != null) {
                    i += zzflk.zzb(4, zzfmeVar);
                }
            }
            zzq = i;
        }
        if (this.zzpwm != null) {
            this.zzpwm.booleanValue();
            zzq += zzflk.zzlw(5) + 1;
        }
        if (this.zzpwn != null && this.zzpwn.length > 0) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.zzpwn.length; i5++) {
                String str = this.zzpwn[i5];
                if (str != null) {
                    i4++;
                    i3 += zzflk.zztx(str);
                }
            }
            zzq = zzq + i3 + (i4 * 1);
        }
        if (this.zzpwo != null) {
            zzq += zzflk.zzq(7, this.zzpwo);
        }
        if (this.zzpwp != null) {
            this.zzpwp.booleanValue();
            zzq += zzflk.zzlw(8) + 1;
        }
        if (this.zzpwq != null) {
            this.zzpwq.booleanValue();
            zzq += zzflk.zzlw(9) + 1;
        }
        if (this.zzbdh != null) {
            zzq += zzflk.zzag(10, this.zzbdh.intValue());
        }
        if (this.zzpwf != null) {
            zzq += zzflk.zzag(11, this.zzpwf.intValue());
        }
        if (this.zzpwi != null) {
            zzq += zzflk.zzb(12, this.zzpwi);
        }
        if (this.zzpwk != null) {
            zzq += zzflk.zzq(13, this.zzpwk);
        }
        if (this.zzpwl != null) {
            zzq += zzflk.zzb(14, this.zzpwl);
        }
        if (this.zzpwr != null) {
            zzq += zzflk.zzd(15, this.zzpwr);
        }
        return this.zzpws != null ? zzq + zzflk.zzb(17, this.zzpws) : zzq;
    }
}
