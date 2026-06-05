package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
final class zzty extends zzlg {
    private /* synthetic */ zztl zzcdm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzty(zztl zztlVar) {
        this.zzcdm = zztlVar;
    }

    @Override // com.google.android.gms.internal.zzlf
    public final void onAdClicked() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztz(this));
    }
}
