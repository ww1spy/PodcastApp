package com.google.android.gms.cast;

import android.util.Log;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzben;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbj implements zzben {
    private /* synthetic */ RemoteMediaPlayer.zzb zzezc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbj(RemoteMediaPlayer.zzb zzbVar) {
        this.zzezc = zzbVar;
    }

    @Override // com.google.android.gms.internal.zzben
    public final void zza(long j, int i, Object obj) {
        try {
            this.zzezc.setResult((RemoteMediaPlayer.zzb) new RemoteMediaPlayer.zzc(new Status(i), obj instanceof JSONObject ? (JSONObject) obj : null));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestCompleted", e);
        }
    }

    @Override // com.google.android.gms.internal.zzben
    public final void zzx(long j) {
        try {
            this.zzezc.setResult((RemoteMediaPlayer.zzb) this.zzezc.zzb(new Status(2103)));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestReplaced", e);
        }
    }
}
