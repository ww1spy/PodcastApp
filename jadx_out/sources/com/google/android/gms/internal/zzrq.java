package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzrq extends zzev implements zzro {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.zzro
    public final void destroy() throws RemoteException {
        zzb(8, zzbc());
    }

    @Override // com.google.android.gms.internal.zzro
    public final List<String> getAvailableAssetNames() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        ArrayList<String> createStringArrayList = zza.createStringArrayList();
        zza.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.zzro, com.google.android.gms.internal.zzpx
    public final String getCustomTemplateId() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzro
    public final zzmm getVideoController() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        zzmm zzh = zzmn.zzh(zza.readStrongBinder());
        zza.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.zzro
    public final void performClick(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzro
    public final void recordImpression() throws RemoteException {
        zzb(6, zzbc());
    }

    @Override // com.google.android.gms.internal.zzro
    public final String zzap(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(1, zzbc);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzro
    public final zzqs zzaq(String str) throws RemoteException {
        zzqs zzquVar;
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(2, zzbc);
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

    @Override // com.google.android.gms.internal.zzro
    public final boolean zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        Parcel zza = zza(10, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzro
    public final IObjectWrapper zzkd() throws RemoteException {
        Parcel zza = zza(11, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.internal.zzro
    public final IObjectWrapper zzkk() throws RemoteException {
        Parcel zza = zza(9, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }
}
