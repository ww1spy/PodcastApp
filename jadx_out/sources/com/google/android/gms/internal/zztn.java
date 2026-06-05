package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zztn implements zzuk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zztn(zztm zztmVar) {
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzapd != null) {
            zzulVar.zzapd.onAdClosed();
        }
    }
}
