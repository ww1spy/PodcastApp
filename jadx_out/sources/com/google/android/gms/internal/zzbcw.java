package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbcw implements GameManagerClient.GameManagerInstanceResult {
    private final Status mStatus;
    private final GameManagerClient zzflb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcw(Status status, GameManagerClient gameManagerClient) {
        this.mStatus = status;
        this.zzflb = gameManagerClient;
    }

    @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult
    public final GameManagerClient getGameManagerClient() {
        return this.zzflb;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }
}
