package com.google.android.gms.cast;

import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbk implements RemoteMediaPlayer.MediaChannelResult {
    private /* synthetic */ Status zzetp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbk(RemoteMediaPlayer.zzb zzbVar, Status status) {
        this.zzetp = status;
    }

    @Override // com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult
    public final JSONObject getCustomData() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zzetp;
    }
}
