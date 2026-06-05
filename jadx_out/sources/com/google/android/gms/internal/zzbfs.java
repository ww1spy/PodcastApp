package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzbfs extends zzev implements zzbfr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbfs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.clearcut.internal.IClearcutLoggerService");
    }

    @Override // com.google.android.gms.internal.zzbfr
    public final void zza(zzbfp zzbfpVar, com.google.android.gms.clearcut.zze zzeVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbfpVar);
        zzex.zza(zzbc, zzeVar);
        zzc(1, zzbc);
    }
}
