package com.google.android.gms.phenotype;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzcvz;

/* loaded from: classes.dex */
final class zzl extends Api.zza<zzcvz, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzcvz zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzcvz(context, looper, zzrVar, connectionCallbacks, onConnectionFailedListener);
    }
}
