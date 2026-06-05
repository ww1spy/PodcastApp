package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzls extends zzev implements zzlr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzls(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // com.google.android.gms.internal.zzlr
    public final IBinder zza(IObjectWrapper iObjectWrapper, String str, zzwf zzwfVar, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeString(str);
        zzex.zza(zzbc, zzwfVar);
        zzbc.writeInt(com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        Parcel zza = zza(1, zzbc);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
