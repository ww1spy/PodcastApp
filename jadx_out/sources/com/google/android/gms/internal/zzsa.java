package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzsa extends zzev implements zzry {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.zzry
    public final void zzb(zzro zzroVar, String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzroVar);
        zzbc.writeString(str);
        zzb(1, zzbc);
    }
}
