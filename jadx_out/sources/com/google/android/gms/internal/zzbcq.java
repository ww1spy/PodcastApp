package com.google.android.gms.internal;

import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbcq implements ResultCallback<Status> {
    private /* synthetic */ zzbcl zzfkt;
    private /* synthetic */ long zzfky;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcq(zzbcl zzbclVar, long j) {
        this.zzfkt = zzbclVar;
        this.zzfky = j;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(Status status) {
        Status status2 = status;
        if (status2.isSuccess()) {
            return;
        }
        this.zzfkt.zzc(this.zzfky, status2.getStatusCode());
    }
}
