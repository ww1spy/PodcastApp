package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzbex extends zzbeu {
    private /* synthetic */ zzbev zzfou;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbex(zzbev zzbevVar) {
        this.zzfou = zzbevVar;
    }

    @Override // com.google.android.gms.internal.zzbeu, com.google.android.gms.internal.zzbfc
    public final void onDisconnected() throws RemoteException {
        zzbei zzbeiVar;
        zzbeiVar = zzbeq.zzeus;
        zzbeiVar.zzb("onDisconnected", new Object[0]);
        this.zzfou.zzfor.zzadn();
        this.zzfou.setResult((zzbev) new zzbey(Status.zzftq));
    }

    @Override // com.google.android.gms.internal.zzbeu, com.google.android.gms.internal.zzbfc
    public final void onError(int i) throws RemoteException {
        zzbei zzbeiVar;
        zzbeiVar = zzbeq.zzeus;
        zzbeiVar.zzb("onError: %d", Integer.valueOf(i));
        this.zzfou.zzfor.zzadn();
        this.zzfou.setResult((zzbev) new zzbey(Status.zzfts));
    }
}
