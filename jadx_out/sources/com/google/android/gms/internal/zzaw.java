package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzaw extends zzflm<zzaw> {
    public String zzcm = null;
    public Long zzcn = null;
    private String stackTrace = null;
    private String zzco = null;
    private String zzcp = null;
    private Long zzcq = null;
    private Long zzcr = null;
    private String zzcs = null;
    private Long zzct = null;
    private String zzcu = null;

    public zzaw() {
        this.zzpnr = -1;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    return this;
                case 10:
                    this.zzcm = zzfljVar.readString();
                    break;
                case 16:
                    this.zzcn = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 26:
                    this.stackTrace = zzfljVar.readString();
                    break;
                case 34:
                    this.zzco = zzfljVar.readString();
                    break;
                case 42:
                    this.zzcp = zzfljVar.readString();
                    break;
                case 48:
                    this.zzcq = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 56:
                    this.zzcr = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 66:
                    this.zzcs = zzfljVar.readString();
                    break;
                case 72:
                    this.zzct = Long.valueOf(zzfljVar.zzcyr());
                    break;
                case 82:
                    this.zzcu = zzfljVar.readString();
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
        if (this.zzcm != null) {
            zzflkVar.zzp(1, this.zzcm);
        }
        if (this.zzcn != null) {
            zzflkVar.zzf(2, this.zzcn.longValue());
        }
        if (this.stackTrace != null) {
            zzflkVar.zzp(3, this.stackTrace);
        }
        if (this.zzco != null) {
            zzflkVar.zzp(4, this.zzco);
        }
        if (this.zzcp != null) {
            zzflkVar.zzp(5, this.zzcp);
        }
        if (this.zzcq != null) {
            zzflkVar.zzf(6, this.zzcq.longValue());
        }
        if (this.zzcr != null) {
            zzflkVar.zzf(7, this.zzcr.longValue());
        }
        if (this.zzcs != null) {
            zzflkVar.zzp(8, this.zzcs);
        }
        if (this.zzct != null) {
            zzflkVar.zzf(9, this.zzct.longValue());
        }
        if (this.zzcu != null) {
            zzflkVar.zzp(10, this.zzcu);
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzcm != null) {
            zzq += zzflk.zzq(1, this.zzcm);
        }
        if (this.zzcn != null) {
            zzq += zzflk.zzc(2, this.zzcn.longValue());
        }
        if (this.stackTrace != null) {
            zzq += zzflk.zzq(3, this.stackTrace);
        }
        if (this.zzco != null) {
            zzq += zzflk.zzq(4, this.zzco);
        }
        if (this.zzcp != null) {
            zzq += zzflk.zzq(5, this.zzcp);
        }
        if (this.zzcq != null) {
            zzq += zzflk.zzc(6, this.zzcq.longValue());
        }
        if (this.zzcr != null) {
            zzq += zzflk.zzc(7, this.zzcr.longValue());
        }
        if (this.zzcs != null) {
            zzq += zzflk.zzq(8, this.zzcs);
        }
        if (this.zzct != null) {
            zzq += zzflk.zzc(9, this.zzct.longValue());
        }
        return this.zzcu != null ? zzq + zzflk.zzq(10, this.zzcu) : zzq;
    }
}
