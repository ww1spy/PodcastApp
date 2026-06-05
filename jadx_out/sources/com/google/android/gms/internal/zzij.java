package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzij implements com.google.android.gms.common.internal.zzg {
    private /* synthetic */ zzif zzbay;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzij(zzif zzifVar) {
        this.zzbay = zzifVar;
    }

    @Override // com.google.android.gms.common.internal.zzg
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        zzim zzimVar;
        Object obj2;
        obj = this.zzbay.mLock;
        synchronized (obj) {
            this.zzbay.zzbax = null;
            zzimVar = this.zzbay.zzbaw;
            if (zzimVar != null) {
                zzif.zza(this.zzbay, (zzim) null);
            }
            obj2 = this.zzbay.mLock;
            obj2.notifyAll();
        }
    }
}
