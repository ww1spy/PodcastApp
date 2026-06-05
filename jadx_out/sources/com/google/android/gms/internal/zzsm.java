package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzsm extends zzev implements zzsk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.zzsk
    public final void destroy() throws RemoteException {
        zzb(13, zzbc());
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getAdvertiser() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getBody() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getCallToAction() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getHeadline() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk, com.google.android.gms.internal.zzpy
    public final List getImages() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        ArrayList zzb = zzex.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getPrice() throws RemoteException {
        Parcel zza = zza(10, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final double getStarRating() throws RemoteException {
        Parcel zza = zza(8, zzbc());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final String getStore() throws RemoteException {
        Parcel zza = zza(9, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final zzmm getVideoController() throws RemoteException {
        Parcel zza = zza(11, zzbc());
        zzmm zzh = zzmn.zzh(zza.readStrongBinder());
        zza.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final void performClick(Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bundle);
        zzb(15, zzbc);
    }

    @Override // com.google.android.gms.internal.zzsk
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bundle);
        Parcel zza = zza(16, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bundle);
        zzb(17, zzbc);
    }

    @Override // com.google.android.gms.internal.zzsk
    public final zzqs zzkc() throws RemoteException {
        zzqs zzquVar;
        Parcel zza = zza(5, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzquVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzquVar = queryLocalInterface instanceof zzqs ? (zzqs) queryLocalInterface : new zzqu(readStrongBinder);
        }
        zza.recycle();
        return zzquVar;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final IObjectWrapper zzkd() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final IObjectWrapper zzkh() throws RemoteException {
        Parcel zza = zza(19, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzsk
    public final zzqo zzki() throws RemoteException {
        zzqo zzqqVar;
        Parcel zza = zza(14, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzqqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzqqVar = queryLocalInterface instanceof zzqo ? (zzqo) queryLocalInterface : new zzqq(readStrongBinder);
        }
        zza.recycle();
        return zzqqVar;
    }
}
