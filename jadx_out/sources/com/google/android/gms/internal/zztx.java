package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zztx implements zzuk {
    private /* synthetic */ zzoy zzcdp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztx(zztw zztwVar, zzoy zzoyVar) {
        this.zzcdp = zzoyVar;
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzcdu != null) {
            zzulVar.zzcdu.zza(this.zzcdp);
        }
    }
}
