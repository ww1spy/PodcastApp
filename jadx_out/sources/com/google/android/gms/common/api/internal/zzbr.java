package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zzbr implements Runnable {
    private /* synthetic */ zzbo zzgaa;
    private /* synthetic */ ConnectionResult zzgab;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbr(zzbo zzboVar, ConnectionResult connectionResult) {
        this.zzgaa = zzboVar;
        this.zzgab = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgaa.onConnectionFailed(this.zzgab);
    }
}
