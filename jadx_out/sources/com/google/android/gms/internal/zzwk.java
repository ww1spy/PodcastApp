package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public final class zzwk extends zzev implements zzwi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void destroy() throws RemoteException {
        zzb(5, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle getInterstitialAdapterInfo() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        Bundle bundle = (Bundle) zzex.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzmm getVideoController() throws RemoteException {
        Parcel zza = zza(26, zzbc());
        zzmm zzh = zzmn.zzh(zza.readStrongBinder());
        zza.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final IObjectWrapper getView() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final boolean isInitialized() throws RemoteException {
        Parcel zza = zza(13, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void pause() throws RemoteException {
        zzb(8, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void resume() throws RemoteException {
        zzb(9, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(25, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void showInterstitial() throws RemoteException {
        zzb(4, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void showVideo() throws RemoteException {
        zzb(12, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzafz zzafzVar, List<String> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzafzVar);
        zzbc.writeStringList(list);
        zzb(23, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, zzafz zzafzVar, String str2) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzafzVar);
        zzbc.writeString(str2);
        zzb(10, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, zzwl zzwlVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwlVar);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, String str2, zzwl zzwlVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzex.zza(zzbc, zzwlVar);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, String str2, zzwl zzwlVar, zzqh zzqhVar, List<String> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzex.zza(zzbc, zzwlVar);
        zzex.zza(zzbc, zzqhVar);
        zzbc.writeStringList(list);
        zzb(14, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, zzkk zzkkVar, String str, zzwl zzwlVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkoVar);
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwlVar);
        zzb(1, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, zzkk zzkkVar, String str, String str2, zzwl zzwlVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkoVar);
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzex.zza(zzbc, zzwlVar);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(zzkk zzkkVar, String str, String str2) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzb(20, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zzc(zzkk zzkkVar, String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeString(str);
        zzb(11, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(21, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwr zzmp() throws RemoteException {
        zzwr zzwtVar;
        Parcel zza = zza(15, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzwtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzwtVar = queryLocalInterface instanceof zzwr ? (zzwr) queryLocalInterface : new zzwt(readStrongBinder);
        }
        zza.recycle();
        return zzwtVar;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwu zzmq() throws RemoteException {
        zzwu zzwwVar;
        Parcel zza = zza(16, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzwwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzwwVar = queryLocalInterface instanceof zzwu ? (zzwu) queryLocalInterface : new zzww(readStrongBinder);
        }
        zza.recycle();
        return zzwwVar;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle zzmr() throws RemoteException {
        Parcel zza = zza(17, zzbc());
        Bundle bundle = (Bundle) zzex.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle zzms() throws RemoteException {
        Parcel zza = zza(19, zzbc());
        Bundle bundle = (Bundle) zzex.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final boolean zzmt() throws RemoteException {
        Parcel zza = zza(22, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzro zzmu() throws RemoteException {
        Parcel zza = zza(24, zzbc());
        zzro zzn = zzrp.zzn(zza.readStrongBinder());
        zza.recycle();
        return zzn;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwx zzmv() throws RemoteException {
        zzwx zzwzVar;
        Parcel zza = zza(27, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzwzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzwzVar = queryLocalInterface instanceof zzwx ? (zzwx) queryLocalInterface : new zzwz(readStrongBinder);
        }
        zza.recycle();
        return zzwzVar;
    }
}
