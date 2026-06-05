package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzir extends zzev implements zziq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzir(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.zziq
    public final zzik zza(zzin zzinVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzinVar);
        Parcel zza = zza(1, zzbc);
        zzik zzikVar = (zzik) zzex.zza(zza, zzik.CREATOR);
        zza.recycle();
        return zzikVar;
    }
}
