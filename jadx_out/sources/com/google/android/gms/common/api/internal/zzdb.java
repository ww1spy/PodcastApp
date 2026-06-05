package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzdb extends BasePendingResult<Status> {
    @Deprecated
    public zzdb(Looper looper) {
        super(looper);
    }

    public zzdb(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Status zzb(Status status) {
        return status;
    }
}
