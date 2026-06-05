package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzcdi extends zzev implements zzcdh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.zzcdh
    public final zzcdf zza(zzcdd zzcddVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzcddVar);
        Parcel zza = zza(1, zzbc);
        zzcdf zzcdfVar = (zzcdf) zzex.zza(zza, zzcdf.CREATOR);
        zza.recycle();
        return zzcdfVar;
    }
}
