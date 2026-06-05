package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzto implements zzuk {
    private /* synthetic */ int zzcdn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzto(zztm zztmVar, int i) {
        this.zzcdn = i;
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzapd != null) {
            zzulVar.zzapd.onAdFailedToLoad(this.zzcdn);
        }
    }
}
