package com.google.android.gms.internal;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zznf extends zzlm {
    final /* synthetic */ zznd zzbkh;

    private zznf(zznd zzndVar) {
        this.zzbkh = zzndVar;
    }

    @Override // com.google.android.gms.internal.zzll
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.zzll
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zzll
    public final void zza(zzkk zzkkVar, int i) throws RemoteException {
        zzaky.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzako.zzaju.post(new zzng(this));
    }

    @Override // com.google.android.gms.internal.zzll
    public final String zzco() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.zzll
    public final void zzd(zzkk zzkkVar) throws RemoteException {
        zza(zzkkVar, 1);
    }
}
