package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztj implements com.google.android.gms.common.internal.zzg {
    private /* synthetic */ zzte zzcdd;
    private /* synthetic */ zzamd zzcde;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztj(zzte zzteVar, zzamd zzamdVar) {
        this.zzcdd = zzteVar;
        this.zzcde = zzamdVar;
    }

    @Override // com.google.android.gms.common.internal.zzg
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Object obj;
        obj = this.zzcdd.mLock;
        synchronized (obj) {
            this.zzcde.setException(new RuntimeException("Connection failed."));
        }
    }
}
