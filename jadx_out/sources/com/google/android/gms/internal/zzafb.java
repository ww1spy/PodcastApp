package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzafb extends zzev implements zzafa {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
    }

    @Override // com.google.android.gms.internal.zzafa
    public final IBinder zza(IObjectWrapper iObjectWrapper, zzwf zzwfVar, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        Parcel zza = zza(1, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
