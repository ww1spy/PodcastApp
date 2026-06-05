package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzagb extends zzev implements zzafz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zza(IObjectWrapper iObjectWrapper, zzagd zzagdVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzagdVar);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzc(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeInt(i);
        zzb(2, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzd(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeInt(i);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(1, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(4, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(8, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(10, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(11, zzbc);
    }
}
