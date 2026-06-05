package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzx implements zzcd {
    private /* synthetic */ zzv zzfwc;

    private zzx(zzv zzvVar) {
        this.zzfwc = zzvVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzx(zzv zzvVar, zzw zzwVar) {
        this(zzvVar);
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzc(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.zzfwc.zzfwa;
        lock.lock();
        try {
            this.zzfwc.zzfvx = connectionResult;
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
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        zzbi zzbiVar;
        lock = this.zzfwc.zzfwa;
        lock.lock();
        try {
            z2 = this.zzfwc.zzfvz;
            if (!z2) {
                connectionResult = this.zzfwc.zzfvy;
                if (connectionResult != null) {
                    connectionResult2 = this.zzfwc.zzfvy;
                    if (connectionResult2.isSuccess()) {
                        this.zzfwc.zzfvz = true;
                        zzbiVar = this.zzfwc.zzfvs;
                        zzbiVar.onConnectionSuspended(i);
                    }
                }
            }
            this.zzfwc.zzfvz = false;
            this.zzfwc.zze(i, z);
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
            this.zzfwc.zzj(bundle);
            this.zzfwc.zzfvx = ConnectionResult.zzfqt;
            this.zzfwc.zzait();
        } finally {
            lock2 = this.zzfwc.zzfwa;
            lock2.unlock();
        }
    }
}
