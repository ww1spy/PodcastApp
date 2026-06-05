package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzlx extends zzev implements zzlw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.zzlw
    public final IBinder zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, String str, zzwf zzwfVar, int i, int i2) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzkoVar);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        zzbc.writeInt(i2);
        Parcel zza = zza(2, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
