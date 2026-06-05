package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zznn implements Runnable {
    private /* synthetic */ zznm zzbkl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zznn(zznm zznmVar) {
        this.zzbkl = zznmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzafc zzafcVar;
        zzafc zzafcVar2;
        zzafcVar = this.zzbkl.zzbkk;
        if (zzafcVar != null) {
            try {
                zzafcVar2 = this.zzbkl.zzbkk;
                zzafcVar2.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzaky.zzc("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
