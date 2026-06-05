package com.google.android.gms.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbdq implements Cast.ApplicationConnectionResult {
    private final String mSessionId;
    private final Status mStatus;
    private final ApplicationMetadata zzfmv;
    private final String zzfmw;
    private final boolean zzfmx;

    public zzbdq(Status status) {
        this(status, null, null, null, false);
    }

    public zzbdq(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        this.mStatus = status;
        this.zzfmv = applicationMetadata;
        this.zzfmw = str;
        this.mSessionId = str2;
        this.zzfmx = z;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final ApplicationMetadata getApplicationMetadata() {
        return this.zzfmv;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String getApplicationStatus() {
        return this.zzfmw;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String getSessionId() {
        return this.mSessionId;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final boolean getWasLaunched() {
        return this.zzfmx;
    }
}
