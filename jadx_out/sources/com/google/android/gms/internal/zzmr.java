package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzmr extends zzev implements zzmp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoEnd() throws RemoteException {
        zzb(4, zzbc());
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoMute(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoPause() throws RemoteException {
        zzb(3, zzbc());
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoPlay() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzmp
    public final void onVideoStart() throws RemoteException {
        zzb(1, zzbc());
    }
}
