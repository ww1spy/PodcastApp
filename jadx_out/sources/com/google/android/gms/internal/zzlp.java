package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* loaded from: classes.dex */
public abstract class zzlp extends zzew implements zzlo {
    public zzlp() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzli zzliVar = null;
        zzme zzmeVar = null;
        switch (i) {
            case 1:
                zzll zzdi = zzdi();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzdi);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzliVar = queryLocalInterface instanceof zzli ? (zzli) queryLocalInterface : new zzlk(readStrongBinder);
                }
                zzb(zzliVar);
                break;
            case 3:
                zza(zzrt.zzo(parcel.readStrongBinder()));
                break;
            case 4:
                zza(zzrw.zzp(parcel.readStrongBinder()));
                break;
            case 5:
                zza(parcel.readString(), zzsc.zzr(parcel.readStrongBinder()), zzrz.zzq(parcel.readStrongBinder()));
                break;
            case 6:
                zza((zzqh) zzex.zza(parcel, zzqh.CREATOR));
                break;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzmeVar = queryLocalInterface2 instanceof zzme ? (zzme) queryLocalInterface2 : new zzmg(readStrongBinder2);
                }
                zzb(zzmeVar);
                break;
            case 8:
                zza(zzsf.zzs(parcel.readStrongBinder()), (zzko) zzex.zza(parcel, zzko.CREATOR));
                break;
            case 9:
                zza((PublisherAdViewOptions) zzex.zza(parcel, PublisherAdViewOptions.CREATOR));
                break;
            case 10:
                zza(zzsi.zzt(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
