package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzaez extends zzev implements zzaex {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void destroy() throws RemoteException {
        zzb(8, zzbc());
    }

    @Override // com.google.android.gms.internal.zzaex
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final boolean isLoaded() throws RemoteException {
        Parcel zza = zza(5, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void pause() throws RemoteException {
        zzb(6, zzbc());
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void resume() throws RemoteException {
        zzb(7, zzbc());
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(34, zzbc);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void setUserId(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzb(13, zzbc);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void show() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zza(zzafc zzafcVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzafcVar);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zza(zzafi zzafiVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzafiVar);
        zzb(1, zzbc);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(10, zzbc);
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(11, zzbc);
    }
}
