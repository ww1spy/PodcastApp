package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
final class zztw extends zzpc {
    private /* synthetic */ zztl zzcdm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztw(zztl zztlVar) {
        this.zzcdm = zztlVar;
    }

    @Override // com.google.android.gms.internal.zzpb
    public final void zza(zzoy zzoyVar) throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztx(this, zzoyVar));
    }
}
