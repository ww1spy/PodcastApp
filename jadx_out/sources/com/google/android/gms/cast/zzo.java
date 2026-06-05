package com.google.android.gms.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbfa;

/* loaded from: classes.dex */
final class zzo extends Api.zza<zzbfa, CastRemoteDisplay.CastRemoteDisplayOptions> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzbfa zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, CastRemoteDisplay.CastRemoteDisplayOptions castRemoteDisplayOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        CastRemoteDisplay.CastRemoteDisplayOptions castRemoteDisplayOptions2 = castRemoteDisplayOptions;
        Bundle bundle = new Bundle();
        bundle.putInt("configuration", castRemoteDisplayOptions2.zzeuf);
        return new zzbfa(context, looper, zzrVar, castRemoteDisplayOptions2.zzetj, bundle, castRemoteDisplayOptions2.zzeue, connectionCallbacks, onConnectionFailedListener);
    }
}
