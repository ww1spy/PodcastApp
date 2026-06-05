package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzmc extends zzew implements zzmb {
    public zzmc() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    public static zzmb asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
        return queryLocalInterface instanceof zzmb ? (zzmb) queryLocalInterface : new zzmd(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface createBannerAdManager;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                createBannerAdManager = createBannerAdManager(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), (zzko) zzex.zza(parcel, zzko.CREATOR), parcel.readString(), zzwg.zzu(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 2:
                createBannerAdManager = createInterstitialAdManager(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), (zzko) zzex.zza(parcel, zzko.CREATOR), parcel.readString(), zzwg.zzu(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                createBannerAdManager = createAdLoaderBuilder(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), parcel.readString(), zzwg.zzu(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 4:
                createBannerAdManager = getMobileAdsSettingsManager(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                break;
            case 5:
                createBannerAdManager = createNativeAdViewDelegate(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                break;
            case 6:
                createBannerAdManager = createRewardedVideoAd(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), zzwg.zzu(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 7:
                createBannerAdManager = createInAppPurchaseManager(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                break;
            case 8:
                createBannerAdManager = createAdOverlay(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                break;
            case 9:
                createBannerAdManager = getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                createBannerAdManager = createSearchAdManager(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), (zzko) zzex.zza(parcel, zzko.CREATOR), parcel.readString(), parcel.readInt());
                break;
            case 11:
                createBannerAdManager = createNativeAdViewHolderDelegate(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        zzex.zza(parcel2, createBannerAdManager);
        return true;
    }
}
