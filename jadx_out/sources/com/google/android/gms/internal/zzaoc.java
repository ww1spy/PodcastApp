package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.Map;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaoc implements com.google.android.gms.ads.internal.gmsg.zzt<zzann> {

    @Nullable
    private zzany zzdow;

    private static Integer zze(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(39 + String.valueOf(str).length() + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            zzahw.zzcz(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzann zzannVar, Map map) {
        zzann zzannVar2 = zzannVar;
        com.google.android.gms.ads.internal.zzbt.zzff();
        if (map.containsKey("abort")) {
            if (this.zzdow != null) {
                this.zzdow.abort();
                return;
            } else {
                if (zzanx.zzb(zzannVar2)) {
                    return;
                }
                zzahw.zzcz("Precache abort but no precache task running.");
                return;
            }
        }
        String str = (String) map.get("src");
        if (str != null) {
            if (this.zzdow != null) {
                zzahw.zzcz("Threadless precache task has already started.");
                return;
            }
            if (zzanx.zzc(zzannVar2) != null) {
                zzahw.zzcz("Precache task is already running.");
                return;
            }
            if (zzannVar2.zzbo() == null) {
                zzahw.zzcz("Precache requires a dependency provider.");
                return;
            }
            zzanm zzanmVar = new zzanm((String) map.get("flags"));
            Integer zze = zze(map, "notifyBytes");
            Integer zze2 = zze(map, "notifyMillis");
            Integer zze3 = zze(map, "player");
            boolean z = false;
            if (zze3 == null) {
                zze3 = 0;
            }
            zzany zza = zzannVar2.zzbo().zzaok.zza(zzannVar2, zze3.intValue(), null, zzanmVar);
            if ((zze == null && zze2 == null) ? false : true) {
                String[] split = zzanmVar.zzdnm.split(",");
                int length = split.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    String str2 = split[i];
                    if (!str2.equals(NotificationPreferences.YES) && !str2.equals("2")) {
                        z = true;
                        break;
                    }
                    i++;
                }
                if (z) {
                    if (zze != null) {
                        zze.intValue();
                    } else {
                        zze2.intValue();
                    }
                    this.zzdow = zza;
                }
            }
            new zzanv(zzannVar2, zza, str).zzns();
        } else if (zzanx.zzc(zzannVar2) == null && this.zzdow == null) {
            zzahw.zzcz("Precache must specify a source.");
            return;
        }
        Integer zze4 = zze(map, "minBufferMs");
        if (zze4 != null) {
            zze4.intValue();
        }
        Integer zze5 = zze(map, "maxBufferMs");
        if (zze5 != null) {
            zze5.intValue();
        }
        Integer zze6 = zze(map, "bufferForPlaybackMs");
        if (zze6 != null) {
            zze6.intValue();
        }
        Integer zze7 = zze(map, "bufferForPlaybackAfterRebufferMs");
        if (zze7 != null) {
            zze7.intValue();
        }
    }
}
