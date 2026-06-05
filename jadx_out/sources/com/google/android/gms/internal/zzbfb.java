package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfb extends zzbfh {
    private /* synthetic */ zzbfg zzfox;
    private /* synthetic */ zzbfa zzfoy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbfb(zzbfa zzbfaVar, zzbfg zzbfgVar) {
        this.zzfoy = zzbfaVar;
        this.zzfox = zzbfgVar;
    }

    @Override // com.google.android.gms.internal.zzbfg
    public final void zzbn(int i) throws RemoteException {
        zzbei zzbeiVar;
        CastRemoteDisplay.CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks;
        CastRemoteDisplay.CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks2;
        zzbeiVar = zzbfa.zzeus;
        zzbeiVar.zzb("onRemoteDisplayEnded", new Object[0]);
        if (this.zzfox != null) {
            this.zzfox.zzbn(i);
        }
        castRemoteDisplaySessionCallbacks = this.zzfoy.zzfov;
        if (castRemoteDisplaySessionCallbacks != null) {
            castRemoteDisplaySessionCallbacks2 = this.zzfoy.zzfov;
            castRemoteDisplaySessionCallbacks2.onRemoteDisplayEnded(new Status(i));
        }
    }
}
