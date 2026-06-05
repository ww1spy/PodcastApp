package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzpa extends zzev implements zzoy {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.zzoy
    public final String getContent() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzoy
    public final void recordClick() throws RemoteException {
        zzb(4, zzbc());
    }

    @Override // com.google.android.gms.internal.zzoy
    public final void recordImpression() throws RemoteException {
        zzb(5, zzbc());
    }

    @Override // com.google.android.gms.internal.zzoy
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzoy
    public final String zzjs() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
