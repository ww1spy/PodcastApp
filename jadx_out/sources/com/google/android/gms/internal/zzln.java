package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzln extends zzev implements zzll {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzln(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.zzll
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzll
    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzll
    public final void zza(zzkk zzkkVar, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzkkVar);
        zzbc.writeInt(i);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzll
    public final String zzco() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzll
    public final void zzd(zzkk zzkkVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzkkVar);
        zzb(1, zzbc);
    }
}
