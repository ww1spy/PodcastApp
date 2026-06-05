package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;

/* loaded from: classes.dex */
public abstract class zzbdf<R extends Result> extends com.google.android.gms.common.api.internal.zzm<R, zzbdp> {
    public zzbdf(GoogleApiClient googleApiClient) {
        super(Cast.API, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.zzm, com.google.android.gms.common.api.internal.zzn
    @Hide
    public /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zzbdf<R>) obj);
    }

    public final void zzbj(int i) {
        setResult((zzbdf<R>) zzb(new Status(CastStatusCodes.INVALID_REQUEST)));
    }
}
