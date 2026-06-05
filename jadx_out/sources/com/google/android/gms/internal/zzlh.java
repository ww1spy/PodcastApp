package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzlh extends zzev implements zzlf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.zzlf
    public final void onAdClicked() throws RemoteException {
        zzb(1, zzbc());
    }
}
