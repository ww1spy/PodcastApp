package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzwj extends zzew implements zzwi {
    public zzwj() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0009. Please report as an issue. */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface view;
        boolean isInitialized;
        Bundle zzmr;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzwl zzwlVar = null;
        switch (i) {
            case 1:
                IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(parcel.readStrongBinder());
                zzko zzkoVar = (zzko) zzex.zza(parcel, zzko.CREATOR);
                zzkk zzkkVar = (zzkk) zzex.zza(parcel, zzkk.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzwlVar = queryLocalInterface instanceof zzwl ? (zzwl) queryLocalInterface : new zzwn(readStrongBinder);
                }
                zza(zzaq, zzkoVar, zzkkVar, readString, zzwlVar);
                parcel2.writeNoException();
                return true;
            case 2:
                view = getView();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                return true;
            case 3:
                IObjectWrapper zzaq2 = IObjectWrapper.zza.zzaq(parcel.readStrongBinder());
                zzkk zzkkVar2 = (zzkk) zzex.zza(parcel, zzkk.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzwlVar = queryLocalInterface2 instanceof zzwl ? (zzwl) queryLocalInterface2 : new zzwn(readStrongBinder2);
                }
                zza(zzaq2, zzkkVar2, readString2, zzwlVar);
                parcel2.writeNoException();
                return true;
            case 4:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 5:
                destroy();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper zzaq3 = IObjectWrapper.zza.zzaq(parcel.readStrongBinder());
                zzko zzkoVar2 = (zzko) zzex.zza(parcel, zzko.CREATOR);
                zzkk zzkkVar3 = (zzkk) zzex.zza(parcel, zzkk.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzwlVar = queryLocalInterface3 instanceof zzwl ? (zzwl) queryLocalInterface3 : new zzwn(readStrongBinder3);
                }
                zza(zzaq3, zzkoVar2, zzkkVar3, readString3, readString4, zzwlVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper zzaq4 = IObjectWrapper.zza.zzaq(parcel.readStrongBinder());
                zzkk zzkkVar4 = (zzkk) zzex.zza(parcel, zzkk.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzwlVar = queryLocalInterface4 instanceof zzwl ? (zzwl) queryLocalInterface4 : new zzwn(readStrongBinder4);
                }
                zza(zzaq4, zzkkVar4, readString5, readString6, zzwlVar);
                parcel2.writeNoException();
                return true;
            case 8:
                pause();
                parcel2.writeNoException();
                return true;
            case 9:
                resume();
                parcel2.writeNoException();
                return true;
            case 10:
                zza(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), (zzkk) zzex.zza(parcel, zzkk.CREATOR), parcel.readString(), zzaga.zzab(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zzc((zzkk) zzex.zza(parcel, zzkk.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                showVideo();
                parcel2.writeNoException();
                return true;
            case 13:
                isInitialized = isInitialized();
                parcel2.writeNoException();
                zzex.zza(parcel2, isInitialized);
                return true;
            case 14:
                IObjectWrapper zzaq5 = IObjectWrapper.zza.zzaq(parcel.readStrongBinder());
                zzkk zzkkVar5 = (zzkk) zzex.zza(parcel, zzkk.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzwlVar = queryLocalInterface5 instanceof zzwl ? (zzwl) queryLocalInterface5 : new zzwn(readStrongBinder5);
                }
                zza(zzaq5, zzkkVar5, readString7, readString8, zzwlVar, (zzqh) zzex.zza(parcel, zzqh.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                view = zzmp();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                return true;
            case 16:
                view = zzmq();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                return true;
            case 17:
                zzmr = zzmr();
                parcel2.writeNoException();
                zzex.zzb(parcel2, zzmr);
                return true;
            case 18:
                zzmr = getInterstitialAdapterInfo();
                parcel2.writeNoException();
                zzex.zzb(parcel2, zzmr);
                return true;
            case 19:
                zzmr = zzms();
                parcel2.writeNoException();
                zzex.zzb(parcel2, zzmr);
                return true;
            case 20:
                zza((zzkk) zzex.zza(parcel, zzkk.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                zzg(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                isInitialized = zzmt();
                parcel2.writeNoException();
                zzex.zza(parcel2, isInitialized);
                return true;
            case 23:
                zza(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), zzaga.zzab(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                view = zzmu();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                return true;
            case 25:
                setImmersiveMode(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                view = getVideoController();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                return true;
            case 27:
                view = zzmv();
                parcel2.writeNoException();
                zzex.zza(parcel2, view);
                return true;
            default:
                return false;
        }
    }
}
