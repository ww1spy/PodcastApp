package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class zzbc implements GoogleApiClient.ConnectionCallbacks {
    private /* synthetic */ zzba zzfyr;
    private /* synthetic */ AtomicReference zzfys;
    private /* synthetic */ zzdb zzfyt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbc(zzba zzbaVar, AtomicReference atomicReference, zzdb zzdbVar) {
        this.zzfyr = zzbaVar;
        this.zzfys = atomicReference;
        this.zzfyt = zzdbVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.zzfyr.zza((GoogleApiClient) this.zzfys.get(), this.zzfyt, true);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
