package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzue implements zzuk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzue(zzua zzuaVar) {
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzcdw != null) {
            zzulVar.zzcdw.onRewardedVideoAdClosed();
        }
    }
}
