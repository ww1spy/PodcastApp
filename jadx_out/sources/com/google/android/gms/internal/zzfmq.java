package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzfmq extends zzflm<zzfmq> implements Cloneable {
    private byte[] zzpyq = zzflv.zzpwe;
    private String zzpyr = "";
    private byte[][] zzpys = zzflv.zzpwd;
    private boolean zzpyt = false;

    public zzfmq() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzddd, reason: merged with bridge method [inline-methods] */
    public zzfmq clone() {
        try {
            zzfmq zzfmqVar = (zzfmq) super.clone();
            if (this.zzpys != null && this.zzpys.length > 0) {
                zzfmqVar.zzpys = (byte[][]) this.zzpys.clone();
            }
            return zzfmqVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfmq)) {
            return false;
        }
        zzfmq zzfmqVar = (zzfmq) obj;
        if (!Arrays.equals(this.zzpyq, zzfmqVar.zzpyq)) {
            return false;
        }
        if (this.zzpyr == null) {
            if (zzfmqVar.zzpyr != null) {
                return false;
            }
        } else if (!this.zzpyr.equals(zzfmqVar.zzpyr)) {
            return false;
        }
        if (zzflq.zza(this.zzpys, zzfmqVar.zzpys) && this.zzpyt == zzfmqVar.zzpyt) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzfmqVar.zzpvl == null || zzfmqVar.zzpvl.isEmpty() : this.zzpvl.equals(zzfmqVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((527 + getClass().getName().hashCode()) * 31) + Arrays.hashCode(this.zzpyq)) * 31) + (this.zzpyr == null ? 0 : this.zzpyr.hashCode())) * 31) + zzflq.zzd(this.zzpys)) * 31) + (this.zzpyt ? 1231 : 1237)) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            if (zzcxx == 0) {
                return this;
            }
            if (zzcxx == 10) {
                this.zzpyq = zzfljVar.readBytes();
            } else if (zzcxx == 18) {
                int zzb = zzflv.zzb(zzfljVar, 18);
                int length = this.zzpys == null ? 0 : this.zzpys.length;
                byte[][] bArr = new byte[zzb + length];
                if (length != 0) {
                    System.arraycopy(this.zzpys, 0, bArr, 0, length);
                }
                while (length < bArr.length - 1) {
                    bArr[length] = zzfljVar.readBytes();
                    zzfljVar.zzcxx();
                    length++;
                }
                bArr[length] = zzfljVar.readBytes();
                this.zzpys = bArr;
            } else if (zzcxx == 24) {
                this.zzpyt = zzfljVar.zzcyd();
            } else if (zzcxx == 34) {
                this.zzpyr = zzfljVar.readString();
            } else if (!super.zza(zzfljVar, zzcxx)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (!Arrays.equals(this.zzpyq, zzflv.zzpwe)) {
            zzflkVar.zzc(1, this.zzpyq);
        }
        if (this.zzpys != null && this.zzpys.length > 0) {
            for (int i = 0; i < this.zzpys.length; i++) {
                byte[] bArr = this.zzpys[i];
                if (bArr != null) {
                    zzflkVar.zzc(2, bArr);
                }
            }
        }
        if (this.zzpyt) {
            zzflkVar.zzl(3, this.zzpyt);
        }
        if (this.zzpyr != null && !this.zzpyr.equals("")) {
            zzflkVar.zzp(4, this.zzpyr);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm
    /* renamed from: zzdck */
    public final /* synthetic */ zzfmq clone() throws CloneNotSupportedException {
        return (zzfmq) clone();
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzdcl */
    public final /* synthetic */ zzfls clone() throws CloneNotSupportedException {
        return (zzfmq) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int zzq = super.zzq();
        if (!Arrays.equals(this.zzpyq, zzflv.zzpwe)) {
            zzq += zzflk.zzd(1, this.zzpyq);
        }
        if (this.zzpys != null && this.zzpys.length > 0) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzpys.length; i3++) {
                byte[] bArr = this.zzpys[i3];
                if (bArr != null) {
                    i2++;
                    i += zzflk.zzbg(bArr);
                }
            }
            zzq = zzq + i + (i2 * 1);
        }
        if (this.zzpyt) {
            zzq += zzflk.zzlw(3) + 1;
        }
        return (this.zzpyr == null || this.zzpyr.equals("")) ? zzq : zzq + zzflk.zzq(4, this.zzpyr);
    }
}
