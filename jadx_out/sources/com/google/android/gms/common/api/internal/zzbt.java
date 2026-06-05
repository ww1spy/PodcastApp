package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
final class zzbt implements Runnable {
    private /* synthetic */ zzbs zzgac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbt(zzbs zzbsVar) {
        this.zzgac = zzbsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.zze zzeVar;
        zzeVar = this.zzgac.zzgaa.zzfwd;
        zzeVar.disconnect();
    }
}
