package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;

/* loaded from: classes.dex */
public abstract class zzl extends zzew implements zzk {
    public zzl() {
        attachInterface(this, "com.google.android.gms.dynamic.IFragmentWrapper");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0009. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface zzarh;
        int id;
        boolean retainInstance;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        IObjectWrapper iObjectWrapper = null;
        switch (i) {
            case 2:
                zzarh = zzarh();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarh);
                return true;
            case 3:
                Bundle arguments = getArguments();
                parcel2.writeNoException();
                zzex.zzb(parcel2, arguments);
                return true;
            case 4:
                id = getId();
                parcel2.writeNoException();
                parcel2.writeInt(id);
                return true;
            case 5:
                zzarh = zzari();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarh);
                return true;
            case 6:
                zzarh = zzarj();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarh);
                return true;
            case 7:
                retainInstance = getRetainInstance();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 8:
                String tag = getTag();
                parcel2.writeNoException();
                parcel2.writeString(tag);
                return true;
            case 9:
                zzarh = zzark();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarh);
                return true;
            case 10:
                id = getTargetRequestCode();
                parcel2.writeNoException();
                parcel2.writeInt(id);
                return true;
            case 11:
                retainInstance = getUserVisibleHint();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 12:
                zzarh = getView();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzarh);
                return true;
            case 13:
                retainInstance = isAdded();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 14:
                retainInstance = isDetached();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 15:
                retainInstance = isHidden();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 16:
                retainInstance = isInLayout();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 17:
                retainInstance = isRemoving();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 18:
                retainInstance = isResumed();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 19:
                retainInstance = isVisible();
                parcel2.writeNoException();
                zzex.zza(parcel2, retainInstance);
                return true;
            case 20:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
                    iObjectWrapper = queryLocalInterface instanceof IObjectWrapper ? (IObjectWrapper) queryLocalInterface : new zzm(readStrongBinder);
                }
                zzw(iObjectWrapper);
                parcel2.writeNoException();
                return true;
            case 21:
                setHasOptionsMenu(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 22:
                setMenuVisibility(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                setRetainInstance(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 24:
                setUserVisibleHint(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 25:
                startActivity((Intent) zzex.zza(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                return true;
            case 26:
                startActivityForResult((Intent) zzex.zza(parcel, Intent.CREATOR), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 27:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
                    iObjectWrapper = queryLocalInterface2 instanceof IObjectWrapper ? (IObjectWrapper) queryLocalInterface2 : new zzm(readStrongBinder2);
                }
                zzx(iObjectWrapper);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
