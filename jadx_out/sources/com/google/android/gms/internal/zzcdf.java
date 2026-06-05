package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzcdf extends zzbgl {
    public static final Parcelable.Creator<zzcdf> CREATOR = new zzcdg();
    private int versionCode;
    private zzba zzijg = null;
    private byte[] zzijh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdf(int i, byte[] bArr) {
        this.versionCode = i;
        this.zzijh = bArr;
        zzaot();
    }

    private final void zzaot() {
        if (this.zzijg != null || this.zzijh == null) {
            if (this.zzijg == null || this.zzijh != null) {
                if (this.zzijg != null && this.zzijh != null) {
                    throw new IllegalStateException("Invalid internal representation - full");
                }
                if (this.zzijg != null || this.zzijh != null) {
                    throw new IllegalStateException("Impossible");
                }
                throw new IllegalStateException("Invalid internal representation - empty");
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.versionCode);
        zzbgo.zza(parcel, 2, this.zzijh != null ? this.zzijh : zzfls.zzc(this.zzijg), false);
        zzbgo.zzai(parcel, zze);
    }

    public final zzba zzawd() {
        if (!(this.zzijg != null)) {
            try {
                this.zzijg = (zzba) zzfls.zza(new zzba(), this.zzijh);
                this.zzijh = null;
            } catch (zzflr e) {
                throw new IllegalStateException(e);
            }
        }
        zzaot();
        return this.zzijg;
    }
}
