package com.google.android.gms.cast;

import android.support.annotation.NonNull;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbej;

/* loaded from: classes.dex */
final class zzbi implements ResultCallback<Status> {
    private final long zzeyz;
    private /* synthetic */ RemoteMediaPlayer.zza zzeza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(RemoteMediaPlayer.zza zzaVar, long j) {
        this.zzeza = zzaVar;
        this.zzeyz = j;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(@NonNull Status status) {
        zzbej zzbejVar;
        Status status2 = status;
        if (status2.isSuccess()) {
            return;
        }
        zzbejVar = RemoteMediaPlayer.this.zzext;
        zzbejVar.zzc(this.zzeyz, status2.getStatusCode());
    }
}
