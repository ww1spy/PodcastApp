package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbez;

/* loaded from: classes.dex */
final class zzp extends Api.zza<zzbez, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzbez zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzbez(context, looper, zzrVar, connectionCallbacks, onConnectionFailedListener);
    }
}
