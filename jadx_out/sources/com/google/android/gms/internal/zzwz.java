package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzwz extends zzev implements zzwx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getAdvertiser() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getBody() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getCallToAction() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final Bundle getExtras() throws RemoteException {
        Parcel zza = zza(16, zzbc());
        Bundle bundle = (Bundle) zzex.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getHeadline() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final List getImages() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        ArrayList zzb = zzex.zzb(zza);
        zza.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final boolean getOverrideClickHandling() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final boolean getOverrideImpressionRecording() throws RemoteException {
        Parcel zza = zza(17, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getPrice() throws RemoteException {
        Parcel zza = zza(10, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final double getStarRating() throws RemoteException {
        Parcel zza = zza(8, zzbc());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final String getStore() throws RemoteException {
        Parcel zza = zza(9, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final zzmm getVideoController() throws RemoteException {
        Parcel zza = zza(11, zzbc());
        zzmm zzh = zzmn.zzh(zza.readStrongBinder());
        zza.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void recordImpression() throws RemoteException {
        zzb(19, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, iObjectWrapper2);
        zzex.zza(zzbc, iObjectWrapper3);
        zzb(21, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(20, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwx
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(22, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwx
    public final zzqs zzkc() throws RemoteException {
        Parcel zza = zza(5, zzbc());
        zzqs zzk = zzqt.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final IObjectWrapper zzkh() throws RemoteException {
        Parcel zza = zza(15, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final zzqo zzki() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        zzqo zzj = zzqp.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final IObjectWrapper zzmw() throws RemoteException {
        Parcel zza = zza(13, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzwx
    public final IObjectWrapper zzmx() throws RemoteException {
        Parcel zza = zza(14, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }
}
