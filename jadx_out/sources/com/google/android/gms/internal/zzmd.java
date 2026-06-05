package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzmd extends zzev implements zzmb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzlo createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzwf zzwfVar, int i) throws RemoteException {
        zzlo zzlqVar;
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(i);
        Parcel zza = zza(3, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzlqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzlqVar = queryLocalInterface instanceof zzlo ? (zzlo) queryLocalInterface : new zzlq(readStrongBinder);
        }
        zza.recycle();
        return zzlqVar;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzyq createAdOverlay(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        Parcel zza = zza(8, zzbc);
        zzyq zzv = zzyr.zzv(zza.readStrongBinder());
        zza.recycle();
        return zzv;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzlt createBannerAdManager(IObjectWrapper iObjectWrapper, zzko zzkoVar, String str, zzwf zzwfVar, int i) throws RemoteException {
        zzlt zzlvVar;
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkoVar);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(i);
        Parcel zza = zza(1, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzlvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzlvVar = queryLocalInterface instanceof zzlt ? (zzlt) queryLocalInterface : new zzlv(readStrongBinder);
        }
        zza.recycle();
        return zzlvVar;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzza createInAppPurchaseManager(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        Parcel zza = zza(7, zzbc);
        zzza zzx = zzzb.zzx(zza.readStrongBinder());
        zza.recycle();
        return zzx;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzlt createInterstitialAdManager(IObjectWrapper iObjectWrapper, zzko zzkoVar, String str, zzwf zzwfVar, int i) throws RemoteException {
        zzlt zzlvVar;
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkoVar);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(i);
        Parcel zza = zza(2, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzlvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzlvVar = queryLocalInterface instanceof zzlt ? (zzlt) queryLocalInterface : new zzlv(readStrongBinder);
        }
        zza.recycle();
        return zzlvVar;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzqw createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, iObjectWrapper2);
        Parcel zza = zza(5, zzbc);
        zzqw zzl = zzqx.zzl(zza.readStrongBinder());
        zza.recycle();
        return zzl;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzrb createNativeAdViewHolderDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, iObjectWrapper2);
        zzex.zza(zzbc, iObjectWrapper3);
        Parcel zza = zza(11, zzbc);
        zzrb zzm = zzrc.zzm(zza.readStrongBinder());
        zza.recycle();
        return zzm;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzaex createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzwf zzwfVar, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(i);
        Parcel zza = zza(6, zzbc);
        zzaex zzz = zzaey.zzz(zza.readStrongBinder());
        zza.recycle();
        return zzz;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzlt createSearchAdManager(IObjectWrapper iObjectWrapper, zzko zzkoVar, String str, int i) throws RemoteException {
        zzlt zzlvVar;
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkoVar);
        zzbc.writeString(str);
        zzbc.writeInt(i);
        Parcel zza = zza(10, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzlvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzlvVar = queryLocalInterface instanceof zzlt ? (zzlt) queryLocalInterface : new zzlv(readStrongBinder);
        }
        zza.recycle();
        return zzlvVar;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzmh getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzmh zzmjVar;
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        Parcel zza = zza(4, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzmjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzmjVar = queryLocalInterface instanceof zzmh ? (zzmh) queryLocalInterface : new zzmj(readStrongBinder);
        }
        zza.recycle();
        return zzmjVar;
    }

    @Override // com.google.android.gms.internal.zzmb
    public final zzmh getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzmh zzmjVar;
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeInt(i);
        Parcel zza = zza(9, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzmjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzmjVar = queryLocalInterface instanceof zzmh ? (zzmh) queryLocalInterface : new zzmj(readStrongBinder);
        }
        zza.recycle();
        return zzmjVar;
    }
}
