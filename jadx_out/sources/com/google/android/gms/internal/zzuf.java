package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzuf implements zzuk {
    private /* synthetic */ zzaeu zzcdq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzuf(zzua zzuaVar, zzaeu zzaeuVar) {
        this.zzcdq = zzaeuVar;
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzcdw != null) {
            zzulVar.zzcdw.zza(this.zzcdq);
        }
    }
}
