package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
final class zzbdk extends Api.zza<zzbdn, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzbdn zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzbdn(context, looper, zzrVar, connectionCallbacks, onConnectionFailedListener);
    }
}
