package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzrx extends zzev implements zzrv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.zzrv
    public final void zza(zzrk zzrkVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzrkVar);
        zzb(1, zzbc);
    }
}
