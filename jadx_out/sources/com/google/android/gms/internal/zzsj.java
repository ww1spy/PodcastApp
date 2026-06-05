package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzsj extends zzev implements zzsh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.zzsh
    public final void zza(zzsk zzskVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzskVar);
        zzb(1, zzbc);
    }
}
