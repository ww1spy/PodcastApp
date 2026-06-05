package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzru extends zzev implements zzrs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzru(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.zzrs
    public final void zza(zzrg zzrgVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzrgVar);
        zzb(1, zzbc);
    }
}
