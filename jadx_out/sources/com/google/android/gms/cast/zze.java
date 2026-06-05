package com.google.android.gms.cast;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbdp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zze extends Api.zza<zzbdp, Cast.CastOptions> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzbdp zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, Cast.CastOptions castOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        int i;
        Cast.CastOptions castOptions2 = castOptions;
        zzbq.checkNotNull(castOptions2, "Setting the API options is required.");
        CastDevice castDevice = castOptions2.zzetj;
        i = castOptions2.zzetl;
        return new zzbdp(context, looper, zzrVar, castDevice, i, castOptions2.zzetk, castOptions2.extras, connectionCallbacks, onConnectionFailedListener);
    }
}
