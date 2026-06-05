package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzbcr extends zzbct<GameManagerClient.GameManagerResult> {
    final /* synthetic */ zzbcl zzfkt;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbcr(zzbcl zzbclVar) {
        super(zzbclVar);
        this.zzfkt = zzbclVar;
        this.zzezb = new zzbcs(this, zzbclVar);
    }

    public static GameManagerClient.GameManagerResult zzl(Status status) {
        return new zzbcx(status, null, -1L, null);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result zzb(Status status) {
        return zzl(status);
    }
}
