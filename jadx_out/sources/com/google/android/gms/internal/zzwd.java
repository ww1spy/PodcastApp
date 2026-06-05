package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzwd implements Runnable {
    private /* synthetic */ zzvw zzcjv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwd(zzwc zzwcVar, zzvw zzvwVar) {
        this.zzcjv = zzvwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzcjv.zzcjf.destroy();
        } catch (RemoteException e) {
            zzahw.zzc("Could not destroy mediation adapter.", e);
        }
    }
}
