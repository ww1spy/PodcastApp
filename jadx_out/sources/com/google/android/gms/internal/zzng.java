package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzng implements Runnable {
    private /* synthetic */ zznf zzbki;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzng(zznf zznfVar) {
        this.zzbki = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zznd.zza(this.zzbki.zzbkh) != null) {
            try {
                zznd.zza(this.zzbki.zzbkh).onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzaky.zzc("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
