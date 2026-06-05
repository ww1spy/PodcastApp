package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzacs extends zzev implements zzacq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdResponseListener");
    }

    @Override // com.google.android.gms.internal.zzacq
    public final void zza(zzacj zzacjVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzacjVar);
        zzb(1, zzbc);
    }
}
