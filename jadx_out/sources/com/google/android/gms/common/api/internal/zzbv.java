package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbv implements Runnable {
    private /* synthetic */ ConnectionResult zzgab;
    private /* synthetic */ zzbu zzgae;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbv(zzbu zzbuVar, ConnectionResult connectionResult) {
        this.zzgae = zzbuVar;
        this.zzgab = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        zzh zzhVar;
        Api.zze zzeVar;
        Api.zze zzeVar2;
        if (!this.zzgab.isSuccess()) {
            map = this.zzgae.zzfzq.zzfwg;
            zzhVar = this.zzgae.zzfsn;
            ((zzbo) map.get(zzhVar)).onConnectionFailed(this.zzgab);
            return;
        }
        zzbu.zza(this.zzgae, true);
        zzeVar = this.zzgae.zzfwd;
        if (zzeVar.zzacc()) {
            this.zzgae.zzakp();
        } else {
            zzeVar2 = this.zzgae.zzfwd;
            zzeVar2.zza(null, Collections.emptySet());
        }
    }
}
