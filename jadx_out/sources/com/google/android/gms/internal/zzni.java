package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzni implements Runnable {
    private /* synthetic */ zznh zzbkj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzni(zznh zznhVar) {
        this.zzbkj = zznhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzli zzliVar;
        zzli zzliVar2;
        zzliVar = this.zzbkj.zzapd;
        if (zzliVar != null) {
            try {
                zzliVar2 = this.zzbkj.zzapd;
                zzliVar2.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzaky.zzc("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
