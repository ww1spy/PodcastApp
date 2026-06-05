package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;

/* loaded from: classes.dex */
public abstract class zzbee extends zzew implements zzbed {
    public zzbee() {
        attachInterface(this, "com.google.android.gms.cast.internal.ICastDeviceControllerListener");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzbk(parcel.readInt());
                return true;
            case 2:
                zza((ApplicationMetadata) zzex.zza(parcel, ApplicationMetadata.CREATOR), parcel.readString(), parcel.readString(), zzex.zza(parcel));
                return true;
            case 3:
                zzbf(parcel.readInt());
                return true;
            case 4:
                zza(parcel.readString(), parcel.readDouble(), zzex.zza(parcel));
                return true;
            case 5:
                zzr(parcel.readString(), parcel.readString());
                return true;
            case 6:
                zza(parcel.readString(), parcel.createByteArray());
                return true;
            case 7:
                zzbm(parcel.readInt());
                return true;
            case 8:
                zzbl(parcel.readInt());
                return true;
            case 9:
                onApplicationDisconnected(parcel.readInt());
                return true;
            case 10:
                zza(parcel.readString(), parcel.readLong(), parcel.readInt());
                return true;
            case 11:
                zzb(parcel.readString(), parcel.readLong());
                return true;
            case 12:
                zzb((zzbdd) zzex.zza(parcel, zzbdd.CREATOR));
                return true;
            case 13:
                zzb((zzbdx) zzex.zza(parcel, zzbdx.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
