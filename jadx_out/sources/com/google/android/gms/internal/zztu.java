package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
final class zztu extends zzlz {
    private /* synthetic */ zztl zzcdm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztu(zztl zztlVar) {
        this.zzcdm = zztlVar;
    }

    @Override // com.google.android.gms.internal.zzly
    public final void onAppEvent(String str, String str2) throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztv(this, str, str2));
    }
}
