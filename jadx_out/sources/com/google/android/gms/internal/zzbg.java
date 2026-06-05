package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzbg extends zzflm<zzbg> {
    private Integer zzgq;
    public Integer zzgr;
    public byte[][] zzgp = zzflv.zzpwd;
    public byte[] zzgk = null;

    public zzbg() {
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzfls
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzbg zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                int zzb = zzflv.zzb(zzfljVar, 10);
                int length = this.zzgp == null ? 0 : this.zzgp.length;
                byte[][] bArr = new byte[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzgp, 0, bArr, 0, length);
                }
                while (length < bArr.length - 1) {
                    bArr[length] = zzfljVar.readBytes();
                    zzfljVar.zzcxx();
                    length++;
                }
                bArr[length] = zzfljVar.readBytes();
                this.zzgp = bArr;
            } else if (zzcxx == 18) {
                this.zzgk = zzfljVar.readBytes();
            } else if (zzcxx == 24) {
                zzfljVar.getPosition();
                int zzcym = zzfljVar.zzcym();
                switch (zzcym) {
                    case 0:
                    case 1:
                    case 2:
                        this.zzgq = Integer.valueOf(zzcym);
                        break;
                    default:
                        StringBuilder sb = new StringBuilder(41);
                        sb.append(zzcym);
                        sb.append(" is not a valid enum ProtoName");
                        throw new IllegalArgumentException(sb.toString());
                }
            } else if (zzcxx == 32) {
                try {
                    int zzcym2 = zzfljVar.zzcym();
                    switch (zzcym2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                            this.zzgr = Integer.valueOf(zzcym2);
                            break;
                        default:
                            StringBuilder sb2 = new StringBuilder(48);
                            sb2.append(zzcym2);
                            sb2.append(" is not a valid enum EncryptionMethod");
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } catch (IllegalArgumentException unused) {
                    zzfljVar.zzmw(zzfljVar.getPosition());
                    zza(zzfljVar, zzcxx);
                }
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (this.zzgp != null && this.zzgp.length > 0) {
            for (int i = 0; i < this.zzgp.length; i++) {
                byte[] bArr = this.zzgp[i];
                if (bArr != null) {
                    zzflkVar.zzc(1, bArr);
                }
            }
        }
        if (this.zzgk != null) {
            zzflkVar.zzc(2, this.zzgk);
        }
        if (this.zzgq != null) {
            zzflkVar.zzad(3, this.zzgq.intValue());
        }
        if (this.zzgr != null) {
            zzflkVar.zzad(4, this.zzgr.intValue());
        }
        super.zza(zzflkVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (this.zzgp != null && this.zzgp.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzgp.length; i3++) {
                byte[] bArr = this.zzgp[i3];
                if (bArr != null) {
                    i2++;
                    i += zzflk.zzbg(bArr);
                }
            }
            zzq = zzq + i + (1 * i2);
        }
        if (this.zzgk != null) {
            zzq += zzflk.zzd(2, this.zzgk);
        }
        if (this.zzgq != null) {
            zzq += zzflk.zzag(3, this.zzgq.intValue());
        }
        return this.zzgr != null ? zzq + zzflk.zzag(4, this.zzgr.intValue()) : zzq;
    }
}
