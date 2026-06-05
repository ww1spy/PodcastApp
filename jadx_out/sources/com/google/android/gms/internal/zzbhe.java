package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzbhe extends zzev implements zzbhd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    @Override // com.google.android.gms.internal.zzbhd
    public final void zza(zzbhb zzbhbVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbhbVar);
        zzc(1, zzbc);
    }
}
