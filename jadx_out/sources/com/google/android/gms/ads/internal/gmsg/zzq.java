package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzaof;
import java.util.Map;
import mobi.beyondpod.services.player.MediaPlaybackService;

/* loaded from: classes.dex */
final class zzq implements zzt<zzaof> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        String str = (String) map.get("action");
        if (MediaPlaybackService.CMDPAUSE.equals(str)) {
            zzaofVar2.zzcp();
        } else if (MediaPlaybackService.CMDRESUME.equals(str)) {
            zzaofVar2.zzcq();
        }
    }
}
