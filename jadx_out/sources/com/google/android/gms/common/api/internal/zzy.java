package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzy implements zzcd {
    private /* synthetic */ zzv zzfwc;

    private zzy(zzv zzvVar) {
        this.zzfwc = zzvVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzy(zzv zzvVar, zzw zzwVar) {
        this(zzvVar);
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzc(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.zzfwc.zzfwa;
        lock.lock();
        try {
            this.zzfwc.zzfvy = connectionResult;
            this.zzfwc.zzait();
        } finally {
            lock2 = this.zzfwc.zzfwa;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzf(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zzbi zzbiVar;
        lock = this.zzfwc.zzfwa;
        lock.lock();
        try {
            z2 = this.zzfwc.zzfvz;
            if (z2) {
                this.zzfwc.zzfvz = false;
                this.zzfwc.zze(i, z);
            } else {
                this.zzfwc.zzfvz = true;
                zzbiVar = this.zzfwc.zzfvr;
                zzbiVar.onConnectionSuspended(i);
            }
        } finally {
            lock2 = this.zzfwc.zzfwa;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzk(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.zzfwc.zzfwa;
        lock.lock();
        try {
            this.zzfwc.zzfvy = ConnectionResult.zzfqt;
            this.zzfwc.zzait();
        } finally {
            lock2 = this.zzfwc.zzfwa;
            lock2.unlock();
        }
    }
}
