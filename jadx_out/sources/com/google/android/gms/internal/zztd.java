package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zztd extends zzev implements zztc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zztd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.zztc
    public final ParcelFileDescriptor zza(zzsy zzsyVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzsyVar);
        Parcel zza = zza(1, zzbc);
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzex.zza(zza, ParcelFileDescriptor.CREATOR);
        zza.recycle();
        return parcelFileDescriptor;
    }
}
