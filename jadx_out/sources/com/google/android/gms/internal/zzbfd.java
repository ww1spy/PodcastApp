package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import android.view.Surface;

/* loaded from: classes.dex */
public abstract class zzbfd extends zzew implements zzbfc {
    public zzbfd() {
        attachInterface(this, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayCallbacks");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza(parcel.readInt(), parcel.readInt(), (Surface) zzex.zza(parcel, Surface.CREATOR));
                break;
            case 2:
                onError(parcel.readInt());
                break;
            case 3:
                onDisconnected();
                break;
            case 4:
                zzado();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
