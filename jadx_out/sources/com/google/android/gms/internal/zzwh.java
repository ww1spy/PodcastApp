package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzwh extends zzev implements zzwf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.zzwf
    public final zzwi zzbg(String str) throws RemoteException {
        zzwi zzwkVar;
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(1, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzwkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzwkVar = queryLocalInterface instanceof zzwi ? (zzwi) queryLocalInterface : new zzwk(readStrongBinder);
        }
        zza.recycle();
        return zzwkVar;
    }

    @Override // com.google.android.gms.internal.zzwf
    public final boolean zzbh(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(2, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
