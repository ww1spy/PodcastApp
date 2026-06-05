package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzsd extends zzev implements zzsb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.zzsb
    public final void zzb(zzro zzroVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzroVar);
        zzb(1, zzbc);
    }
}
