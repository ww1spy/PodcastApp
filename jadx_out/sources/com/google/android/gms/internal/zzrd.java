package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzrd extends zzev implements zzrb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.zzrb
    public final void unregisterNativeAd() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzrb
    public final void zza(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(1, zzbc);
    }
}
