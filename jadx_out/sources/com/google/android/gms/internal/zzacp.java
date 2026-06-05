package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzacp extends zzev implements zzacn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.zzacn
    public final void zza(zzacf zzacfVar, zzacq zzacqVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzacfVar);
        zzex.zza(zzbc, zzacqVar);
        zzb(2, zzbc);
    }

    @Override // com.google.android.gms.internal.zzacn
    public final void zza(zzacy zzacyVar, zzact zzactVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzacyVar);
        zzex.zza(zzbc, zzactVar);
        zzb(4, zzbc);
    }

    @Override // com.google.android.gms.internal.zzacn
    public final zzacj zzb(zzacf zzacfVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzacfVar);
        Parcel zza = zza(1, zzbc);
        zzacj zzacjVar = (zzacj) zzex.zza(zza, zzacj.CREATOR);
        zza.recycle();
        return zzacjVar;
    }
}
