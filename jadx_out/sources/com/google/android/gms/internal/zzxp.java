package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzxp implements Runnable {
    private /* synthetic */ zzxi zzckk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxp(zzxi zzxiVar) {
        this.zzckk = zzxiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwl zzwlVar;
        try {
            zzwlVar = this.zzckk.zzckb;
            zzwlVar.onAdOpened();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdOpened.", e);
        }
    }
}
