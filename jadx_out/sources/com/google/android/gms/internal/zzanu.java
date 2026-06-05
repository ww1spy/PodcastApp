package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@zzabh
/* loaded from: classes.dex */
public final class zzanu implements com.google.android.gms.ads.internal.gmsg.zzt<zzann> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzann zzannVar, Map map) {
        zzann zzannVar2 = zzannVar;
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqx)).booleanValue()) {
            zzaou zzth = zzannVar2.zzth();
            if (zzth == null) {
                try {
                    zzaou zzaouVar = new zzaou(zzannVar2, Float.parseFloat((String) map.get("duration")), NotificationPreferences.YES.equals(map.get("customControlsAllowed")), NotificationPreferences.YES.equals(map.get("clickToExpandAllowed")));
                    zzannVar2.zza(zzaouVar);
                    zzth = zzaouVar;
                } catch (NullPointerException | NumberFormatException e) {
                    zzahw.zzb("Unable to parse videoMeta message.", e);
                    com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "VideoMetaGmsgHandler.onGmsg");
                    return;
                }
            }
            boolean equals = NotificationPreferences.YES.equals(map.get("muted"));
            float parseFloat = Float.parseFloat((String) map.get("currentTime"));
            int parseInt = Integer.parseInt((String) map.get("playbackState"));
            if (parseInt < 0 || 3 < parseInt) {
                parseInt = 0;
            }
            String str = (String) map.get("aspectRatio");
            float parseFloat2 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
            if (zzahw.zzae(3)) {
                StringBuilder sb = new StringBuilder(79 + String.valueOf(str).length());
                sb.append("Video Meta GMSG: isMuted : ");
                sb.append(equals);
                sb.append(" , playbackState : ");
                sb.append(parseInt);
                sb.append(" , aspectRatio : ");
                sb.append(str);
                zzahw.zzby(sb.toString());
            }
            zzth.zza(parseFloat, parseInt, equals, parseFloat2);
        }
    }
}
