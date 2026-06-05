package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class zzlu extends zzew implements zzlt {
    public zzlu() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzlt zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzlt ? (zzlt) queryLocalInterface : new zzlv(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0009. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface zzbp;
        boolean isReady;
        String mediationAdapterClassName;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzli zzliVar = null;
        zzme zzmeVar = null;
        zzlf zzlfVar = null;
        zzly zzlyVar = null;
        switch (i) {
            case 1:
                zzbp = zzbp();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzbp);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                isReady = isReady();
                parcel2.writeNoException();
                zzex.zza(parcel2, isReady);
                return true;
            case 4:
                isReady = zzb((zzkk) zzex.zza(parcel, zzkk.CREATOR));
                parcel2.writeNoException();
                zzex.zza(parcel2, isReady);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzliVar = queryLocalInterface instanceof zzli ? (zzli) queryLocalInterface : new zzlk(readStrongBinder);
                }
                zza(zzliVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzlyVar = queryLocalInterface2 instanceof zzly ? (zzly) queryLocalInterface2 : new zzma(readStrongBinder2);
                }
                zza(zzlyVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                zzbs();
                parcel2.writeNoException();
                return true;
            case 12:
                zzko zzbq = zzbq();
                parcel2.writeNoException();
                zzex.zzb(parcel2, zzbq);
                return true;
            case 13:
                zza((zzko) zzex.zza(parcel, zzko.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zza(zzyy.zzw(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zza(zzze.zzy(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                zza(zzpc.zzi(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzlfVar = queryLocalInterface3 instanceof zzlf ? (zzlf) queryLocalInterface3 : new zzlh(readStrongBinder3);
                }
                zza(zzlfVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzmeVar = queryLocalInterface4 instanceof zzme ? (zzme) queryLocalInterface4 : new zzmg(readStrongBinder4);
                }
                zza(zzmeVar);
                parcel2.writeNoException();
                return true;
            case 22:
                setManualImpressionsEnabled(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                isReady = isLoading();
                parcel2.writeNoException();
                zzex.zza(parcel2, isReady);
                return true;
            case 24:
                zza(zzafd.zzaa(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                zzbp = getVideoController();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzbp);
                return true;
            case 29:
                zza((zzns) zzex.zza(parcel, zzns.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zza((zzms) zzex.zza(parcel, zzms.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                mediationAdapterClassName = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 32:
                zzbp = zzcc();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzbp);
                return true;
            case 33:
                zzbp = zzcd();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzbp);
                return true;
            case 34:
                setImmersiveMode(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                mediationAdapterClassName = zzco();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
        }
    }
}
