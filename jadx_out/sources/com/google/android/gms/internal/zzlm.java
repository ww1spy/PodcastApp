package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class zzlm extends zzew implements zzll {
    public zzlm() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        String mediationAdapterClassName;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzd((zzkk) zzex.zza(parcel, zzkk.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 3:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                zzex.zza(parcel2, isLoading);
                return true;
            case 4:
                mediationAdapterClassName = zzco();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zza((zzkk) zzex.zza(parcel, zzkk.CREATOR), parcel.readInt());
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
