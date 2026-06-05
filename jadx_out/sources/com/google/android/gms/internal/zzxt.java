package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzxt implements Runnable {
    private /* synthetic */ zzxi zzckk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxt(zzxi zzxiVar) {
        this.zzckk = zzxiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwl zzwlVar;
        try {
            zzwlVar = this.zzckk.zzckb;
            zzwlVar.onAdLeftApplication();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLeftApplication.", e);
        }
    }
}
