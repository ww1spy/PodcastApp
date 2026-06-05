package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzxm implements Runnable {
    private /* synthetic */ zzxi zzckk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxm(zzxi zzxiVar) {
        this.zzckk = zzxiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwl zzwlVar;
        try {
            zzwlVar = this.zzckk.zzckb;
            zzwlVar.onAdClosed();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClosed.", e);
        }
    }
}
