package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzlv extends zzev implements zzlt {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void destroy() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzlt
    public final String getAdUnitId() throws RemoteException {
        Parcel zza = zza(31, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzmm getVideoController() throws RemoteException {
        zzmm zzmoVar;
        Parcel zza = zza(26, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzmoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzmoVar = queryLocalInterface instanceof zzmm ? (zzmm) queryLocalInterface : new zzmo(readStrongBinder);
        }
        zza.recycle();
        return zzmoVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(23, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isReady() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void pause() throws RemoteException {
        zzb(5, zzbc());
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void resume() throws RemoteException {
        zzb(6, zzbc());
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(34, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(22, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setUserId(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzb(25, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void showInterstitial() throws RemoteException {
        zzb(9, zzbc());
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void stopLoading() throws RemoteException {
        zzb(10, zzbc());
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzafc zzafcVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzafcVar);
        zzb(24, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzko zzkoVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzkoVar);
        zzb(13, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzlf zzlfVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzlfVar);
        zzb(20, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzli zzliVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzliVar);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzly zzlyVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzlyVar);
        zzb(8, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzme zzmeVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzmeVar);
        zzb(21, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzms zzmsVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzmsVar);
        zzb(30, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzns zznsVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zznsVar);
        zzb(29, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzpb zzpbVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzpbVar);
        zzb(19, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzyx zzyxVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzyxVar);
        zzb(14, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzzd zzzdVar, String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzzdVar);
        zzbc.writeString(str);
        zzb(15, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean zzb(zzkk zzkkVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzkkVar);
        Parcel zza = zza(4, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final IObjectWrapper zzbp() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzko zzbq() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        zzko zzkoVar = (zzko) zzex.zza(zza, zzko.CREATOR);
        zza.recycle();
        return zzkoVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zzbs() throws RemoteException {
        zzb(11, zzbc());
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzly zzcc() throws RemoteException {
        zzly zzmaVar;
        Parcel zza = zza(32, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzmaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzmaVar = queryLocalInterface instanceof zzly ? (zzly) queryLocalInterface : new zzma(readStrongBinder);
        }
        zza.recycle();
        return zzmaVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzli zzcd() throws RemoteException {
        zzli zzlkVar;
        Parcel zza = zza(33, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzlkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzlkVar = queryLocalInterface instanceof zzli ? (zzli) queryLocalInterface : new zzlk(readStrongBinder);
        }
        zza.recycle();
        return zzlkVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final String zzco() throws RemoteException {
        Parcel zza = zza(35, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
