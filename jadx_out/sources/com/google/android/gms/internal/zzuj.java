package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzuj implements Runnable {
    private /* synthetic */ zzuk zzcdr;
    private /* synthetic */ zzul zzcds;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzuj(zztl zztlVar, zzuk zzukVar, zzul zzulVar) {
        this.zzcdr = zzukVar;
        this.zzcds = zzulVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzcdr.zzb(this.zzcds);
        } catch (RemoteException e) {
            zzahw.zzc("Could not propagate interstitial ad event.", e);
        }
    }
}
