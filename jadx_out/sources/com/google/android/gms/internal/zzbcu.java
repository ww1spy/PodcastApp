package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzbcu extends zzbct<GameManagerClient.GameManagerInstanceResult> {
    final /* synthetic */ zzbcl zzfkt;
    private GameManagerClient zzflb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbcu(zzbcl zzbclVar, GameManagerClient gameManagerClient) {
        super(zzbclVar);
        this.zzfkt = zzbclVar;
        this.zzflb = gameManagerClient;
        this.zzezb = new zzbcv(this, zzbclVar);
    }

    public static GameManagerClient.GameManagerInstanceResult zzm(Status status) {
        return new zzbcw(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result zzb(Status status) {
        return zzm(status);
    }
}
