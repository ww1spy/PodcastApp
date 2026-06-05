package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zztv implements zzuk {
    private /* synthetic */ String val$name;
    private /* synthetic */ String zzcdo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztv(zztu zztuVar, String str, String str2) {
        this.val$name = str;
        this.zzcdo = str2;
    }

    @Override // com.google.android.gms.internal.zzuk
    public final void zzb(zzul zzulVar) throws RemoteException {
        if (zzulVar.zzcdt != null) {
            zzulVar.zzcdt.onAppEvent(this.val$name, this.zzcdo);
        }
    }
}
