package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class zzaco extends zzew implements zzacn {
    public zzaco() {
        attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzact zzactVar = null;
        zzacq zzacqVar = null;
        if (i != 4) {
            switch (i) {
                case 1:
                    zzacj zzb = zzb((zzacf) zzex.zza(parcel, zzacf.CREATOR));
                    parcel2.writeNoException();
                    zzex.zzb(parcel2, zzb);
                    return true;
                case 2:
                    zzacf zzacfVar = (zzacf) zzex.zza(parcel, zzacf.CREATOR);
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder != null) {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                        zzacqVar = queryLocalInterface instanceof zzacq ? (zzacq) queryLocalInterface : new zzacs(readStrongBinder);
                    }
                    zza(zzacfVar, zzacqVar);
                    break;
                default:
                    return false;
            }
        } else {
            zzacy zzacyVar = (zzacy) zzex.zza(parcel, zzacy.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzactVar = queryLocalInterface2 instanceof zzact ? (zzact) queryLocalInterface2 : new zzacu(readStrongBinder2);
            }
            zza(zzacyVar, zzactVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
