package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
final class zzaq implements com.google.android.gms.common.internal.zzj {
    private final Api<?> zzfop;
    private final boolean zzfvo;
    private final WeakReference<zzao> zzfxu;

    public zzaq(zzao zzaoVar, Api<?> api, boolean z) {
        this.zzfxu = new WeakReference<>(zzaoVar);
        this.zzfop = api;
        this.zzfvo = z;
    }

    @Override // com.google.android.gms.common.internal.zzj
    public final void zzf(@NonNull ConnectionResult connectionResult) {
        zzbi zzbiVar;
        Lock lock;
        Lock lock2;
        boolean zzbs;
        boolean zzajk;
        zzao zzaoVar = this.zzfxu.get();
        if (zzaoVar == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        zzbiVar = zzaoVar.zzfxd;
        com.google.android.gms.common.internal.zzbq.zza(myLooper == zzbiVar.zzfvq.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock = zzaoVar.zzfwa;
        lock.lock();
        try {
            zzbs = zzaoVar.zzbs(0);
            if (zzbs) {
                if (!connectionResult.isSuccess()) {
                    zzaoVar.zzb(connectionResult, this.zzfop, this.zzfvo);
                }
                zzajk = zzaoVar.zzajk();
                if (zzajk) {
                    zzaoVar.zzajl();
                }
            }
        } finally {
            lock2 = zzaoVar.zzfwa;
            lock2.unlock();
        }
    }
}
