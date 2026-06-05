package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzmg extends zzev implements zzme {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
    }

    @Override // com.google.android.gms.internal.zzme
    public final long getValue() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        long readLong = zza.readLong();
        zza.recycle();
        return readLong;
    }
}
