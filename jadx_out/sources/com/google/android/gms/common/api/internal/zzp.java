package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zzp {
    private final int zzfuv;
    private final ConnectionResult zzfuw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(ConnectionResult connectionResult, int i) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(connectionResult);
        this.zzfuw = connectionResult;
        this.zzfuv = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzaim() {
        return this.zzfuv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ConnectionResult zzain() {
        return this.zzfuw;
    }
}
