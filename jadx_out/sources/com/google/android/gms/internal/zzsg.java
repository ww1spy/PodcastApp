package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzsg extends zzev implements zzse {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.zzse
    public final void zza(zzlt zzltVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzltVar);
        zzex.zza(zzbc, iObjectWrapper);
        zzb(1, zzbc);
    }
}
