package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzwn extends zzev implements zzwl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdClicked() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdClosed() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdImpression() throws RemoteException {
        zzb(8, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdLeftApplication() throws RemoteException {
        zzb(4, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdLoaded() throws RemoteException {
        zzb(6, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAdOpened() throws RemoteException {
        zzb(5, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onAppEvent(String str, String str2) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void onVideoEnd() throws RemoteException {
        zzb(11, zzbc());
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void zza(zzwo zzwoVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzwoVar);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.internal.zzwl
    public final void zzb(zzro zzroVar, String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzroVar);
        zzbc.writeString(str);
        zzb(10, zzbc);
    }
}
