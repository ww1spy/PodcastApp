package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzaof;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
final class zzm implements zzt<zzaof> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaofVar.zzai(NotificationPreferences.YES.equals(map.get("custom_close")));
    }
}
