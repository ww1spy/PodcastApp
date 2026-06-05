package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbe implements ResultCallback<Status> {
    private /* synthetic */ GoogleApiClient zzeya;
    private /* synthetic */ zzba zzfyr;
    private /* synthetic */ zzdb zzfyt;
    private /* synthetic */ boolean zzfyu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbe(zzba zzbaVar, zzdb zzdbVar, boolean z, GoogleApiClient googleApiClient) {
        this.zzfyr = zzbaVar;
        this.zzfyt = zzdbVar;
        this.zzfyu = z;
        this.zzeya = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(@NonNull Status status) {
        Context context;
        Status status2 = status;
        context = this.zzfyr.mContext;
        com.google.android.gms.auth.api.signin.internal.zzaa.zzbs(context).zzacz();
        if (status2.isSuccess() && this.zzfyr.isConnected()) {
            this.zzfyr.reconnect();
        }
        this.zzfyt.setResult(status2);
        if (this.zzfyu) {
            this.zzeya.disconnect();
        }
    }
}
