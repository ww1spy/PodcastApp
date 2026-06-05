package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbcx implements GameManagerClient.GameManagerResult {
    private final Status mStatus;
    private final String zzfld;
    private final long zzfle;
    private final JSONObject zzflf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcx(Status status, String str, long j, JSONObject jSONObject) {
        this.mStatus = status;
        this.zzfld = str;
        this.zzfle = j;
        this.zzflf = jSONObject;
    }

    @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerResult
    public final JSONObject getExtraMessageData() {
        return this.zzflf;
    }

    @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerResult
    public final String getPlayerId() {
        return this.zzfld;
    }

    @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerResult
    public final long getRequestId() {
        return this.zzfle;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }
}
