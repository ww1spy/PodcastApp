package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzlk extends zzev implements zzli {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClicked() throws RemoteException {
        zzb(6, zzbc());
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClosed() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(2, zzbc);
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdImpression() throws RemoteException {
        zzb(7, zzbc());
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLeftApplication() throws RemoteException {
        zzb(3, zzbc());
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLoaded() throws RemoteException {
        zzb(4, zzbc());
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdOpened() throws RemoteException {
        zzb(5, zzbc());
    }
}
