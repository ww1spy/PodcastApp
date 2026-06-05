package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzaof;
import java.util.Map;
import mobi.beyondpod.services.player.MediaPlaybackService;

/* loaded from: classes.dex */
final class zzs implements zzt<zzaof> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        if (map.keySet().contains("start")) {
            zzaofVar2.zzak(true);
        }
        if (map.keySet().contains(MediaPlaybackService.CMDSTOP)) {
            zzaofVar2.zzak(false);
        }
    }
}
