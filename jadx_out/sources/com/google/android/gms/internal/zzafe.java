package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzafe extends zzev implements zzafc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdClosed() throws RemoteException {
        zzb(4, zzbc());
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdFailedToLoad(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdLeftApplication() throws RemoteException {
        zzb(6, zzbc());
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdLoaded() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdOpened() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoCompleted() throws RemoteException {
        zzb(8, zzbc());
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoStarted() throws RemoteException {
        zzb(3, zzbc());
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void zza(zzaeu zzaeuVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzaeuVar);
        zzb(5, zzbc);
    }
}
