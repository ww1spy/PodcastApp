package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.io.InputStream;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzik extends zzbgl {
    public static final Parcelable.Creator<zzik> CREATOR = new zzil();

    @Nullable
    private ParcelFileDescriptor zzbaz;

    public zzik() {
        this(null);
    }

    public zzik(@Nullable ParcelFileDescriptor parcelFileDescriptor) {
        this.zzbaz = parcelFileDescriptor;
    }

    private synchronized ParcelFileDescriptor zzhl() {
        return this.zzbaz;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) zzhl(), i, false);
        zzbgo.zzai(parcel, zze);
    }

    public final synchronized boolean zzhj() {
        return this.zzbaz != null;
    }

    @Nullable
    public final synchronized InputStream zzhk() {
        if (this.zzbaz == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.zzbaz);
        this.zzbaz = null;
        return autoCloseInputStream;
    }
}
