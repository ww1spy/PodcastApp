package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.support.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzii implements com.google.android.gms.common.internal.zzf {
    private /* synthetic */ zzif zzbay;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzii(zzif zzifVar) {
        this.zzbay = zzifVar;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        Object obj2;
        zzim zzimVar;
        zzim zzimVar2;
        obj = this.zzbay.mLock;
        synchronized (obj) {
            try {
                zzimVar = this.zzbay.zzbaw;
                if (zzimVar != null) {
                    zzif zzifVar = this.zzbay;
                    zzimVar2 = this.zzbay.zzbaw;
                    zzifVar.zzbax = zzimVar2.zzho();
                }
            } catch (DeadObjectException e) {
                zzahw.zzb("Unable to obtain a cache service instance.", e);
                this.zzbay.disconnect();
            }
            obj2 = this.zzbay.mLock;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.zzbay.mLock;
        synchronized (obj) {
            this.zzbay.zzbax = null;
            obj2 = this.zzbay.mLock;
            obj2.notifyAll();
        }
    }
}
