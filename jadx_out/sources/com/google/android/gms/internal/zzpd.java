package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzpd extends zzev implements zzpb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.zzpb
    public final void zza(zzoy zzoyVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzoyVar);
        zzb(1, zzbc);
    }
}
