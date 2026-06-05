package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztg implements com.google.android.gms.common.internal.zzf {
    final /* synthetic */ zzte zzcdd;
    private /* synthetic */ zzamd zzcde;
    private /* synthetic */ zzsy zzcdf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztg(zzte zzteVar, zzamd zzamdVar, zzsy zzsyVar) {
        this.zzcdd = zzteVar;
        this.zzcde = zzamdVar;
        this.zzcdf = zzsyVar;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        boolean z;
        final zzsx zzsxVar;
        obj = this.zzcdd.mLock;
        synchronized (obj) {
            z = this.zzcdd.zzcdc;
            if (z) {
                return;
            }
            zzte.zza(this.zzcdd, true);
            zzsxVar = this.zzcdd.zzcdb;
            if (zzsxVar == null) {
                return;
            }
            final zzamd zzamdVar = this.zzcde;
            final zzsy zzsyVar = this.zzcdf;
            final zzalt<Void> zzb = zzaid.zzb(new Runnable(this, zzsxVar, zzamdVar, zzsyVar) { // from class: com.google.android.gms.internal.zzth
                private final zztg zzcdg;
                private final zzsx zzcdh;
                private final zzamd zzcdi;
                private final zzsy zzcdj;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcdg = this;
                    this.zzcdh = zzsxVar;
                    this.zzcdi = zzamdVar;
                    this.zzcdj = zzsyVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zztg zztgVar = this.zzcdg;
                    zzsx zzsxVar2 = this.zzcdh;
                    zzamd zzamdVar2 = this.zzcdi;
                    try {
                        zzamdVar2.set(zzsxVar2.zzle().zza(this.zzcdj));
                    } catch (RemoteException e) {
                        zzahw.zzb("Unable to obtain a cache service instance.", e);
                        zzamdVar2.setException(e);
                        zztgVar.zzcdd.disconnect();
                    }
                }
            });
            zzamd zzamdVar2 = this.zzcde;
            final zzamd zzamdVar3 = this.zzcde;
            zzamdVar2.zza(new Runnable(zzamdVar3, zzb) { // from class: com.google.android.gms.internal.zzti
                private final zzamd zzcdk;
                private final Future zzcdl;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzcdk = zzamdVar3;
                    this.zzcdl = zzb;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzamd zzamdVar4 = this.zzcdk;
                    Future future = this.zzcdl;
                    if (zzamdVar4.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzaly.zzdju);
        }
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnectionSuspended(int i) {
    }
}
