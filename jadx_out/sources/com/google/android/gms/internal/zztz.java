package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zztz implements zzuk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zztz(zzty zztyVar) {
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzcdv != null) {
            zzulVar.zzcdv.onAdClicked();
        }
    }
}
