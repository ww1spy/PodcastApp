package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import java.util.HashMap;
import java.util.Map;
import mobi.beyondpod.services.player.MediaPlaybackService;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzant implements com.google.android.gms.ads.internal.gmsg.zzt<zzann> {
    private boolean zzdok;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 != null) {
            try {
                zzlc.zzij();
                return zzako.zza(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                StringBuilder sb = new StringBuilder(34 + String.valueOf(str).length() + String.valueOf(str2).length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzahw.zzcz(sb.toString());
            }
        }
        return i;
    }

    private static void zza(zzanb zzanbVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        if (str != null) {
            try {
                Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                zzahw.zzcz(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            Integer.parseInt(str2);
        }
        if (str3 != null) {
            Integer.parseInt(str3);
        }
        if (str4 != null) {
            Integer.parseInt(str4);
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzann zzannVar, Map map) {
        int i;
        int i2;
        zzann zzannVar2 = zzannVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzahw.zzcz("Action missing from video GMSG.");
            return;
        }
        if (zzahw.zzae(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(13 + String.valueOf(str).length() + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            zzahw.zzby(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzahw.zzcz("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzannVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                zzahw.zzcz("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                zzahw.zzcz("No MIME types specified for decoder properties inspection.");
                zzanb.zza(zzannVar2, "missingMimeTypes");
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                zzahw.zzcz("Video decoder properties available on API versions >= 16.");
                zzanb.zza(zzannVar2, "deficientApiVersion");
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str4 : str3.split(",")) {
                hashMap.put(str4, zzakm.zzct(str4.trim()));
            }
            zzanb.zza(zzannVar2, hashMap);
            return;
        }
        zzane zztg = zzannVar2.zztg();
        if (zztg == null) {
            zzahw.zzcz("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = AppSettingsData.STATUS_NEW.equals(str);
        boolean equals2 = "position".equals(str);
        if (equals || equals2) {
            Context context = zzannVar2.getContext();
            int zza = zza(context, map, "x", 0);
            int zza2 = zza(context, map, "y", 0);
            int zza3 = zza(context, map, "w", -1);
            int zza4 = zza(context, map, "h", -1);
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbss)).booleanValue()) {
                zza3 = Math.min(zza3, zzannVar2.zztn() - zza);
                i = Math.min(zza4, zzannVar2.zztm() - zza2);
            } else {
                i = zza4;
            }
            try {
                i2 = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused2) {
                i2 = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (!equals || zztg.zztb() != null) {
                zztg.zze(zza, zza2, zza3, i);
                return;
            }
            zztg.zza(zza, zza2, zza3, i, i2, parseBoolean, new zzanm((String) map.get("flags")));
            zzanb zztb = zztg.zztb();
            if (zztb != null) {
                zza(zztb, (Map<String, String>) map);
                return;
            }
            return;
        }
        zzanb zztb2 = zztg.zztb();
        if (zztb2 == null) {
            zzanb.zza(zzannVar2);
            return;
        }
        if ("click".equals(str)) {
            Context context2 = zzannVar2.getContext();
            int zza5 = zza(context2, map, "x", 0);
            int zza6 = zza(context2, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, zza5, zza6, 0);
            zztb2.zzf(obtain);
            obtain.recycle();
            return;
        }
        if ("currentTime".equals(str)) {
            String str5 = (String) map.get("time");
            if (str5 == null) {
                zzahw.zzcz("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zztb2.seekTo((int) (Float.parseFloat(str5) * 1000.0f));
                return;
            } catch (NumberFormatException unused3) {
                String valueOf = String.valueOf(str5);
                zzahw.zzcz(valueOf.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf) : new String("Could not parse time parameter from currentTime video GMSG: "));
                return;
            }
        }
        if ("hide".equals(str)) {
            zztb2.setVisibility(4);
            return;
        }
        if ("load".equals(str)) {
            zztb2.zzsu();
            return;
        }
        if ("loadControl".equals(str)) {
            zza(zztb2, (Map<String, String>) map);
            return;
        }
        if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zztb2.zzsv();
                return;
            } else {
                zztb2.zzsw();
                return;
            }
        }
        if (MediaPlaybackService.CMDPAUSE.equals(str)) {
            zztb2.pause();
            return;
        }
        if (MediaPlaybackService.CMDOPTIONPLAY.equals(str)) {
            zztb2.play();
            return;
        }
        if ("show".equals(str)) {
            zztb2.setVisibility(0);
            return;
        }
        if ("src".equals(str)) {
            zztb2.zzda((String) map.get("src"));
            return;
        }
        if ("touchMove".equals(str)) {
            Context context3 = zzannVar2.getContext();
            zztb2.zza(zza(context3, map, "dx", 0), zza(context3, map, "dy", 0));
            if (this.zzdok) {
                return;
            }
            zzannVar2.zzno();
            this.zzdok = true;
            return;
        }
        if (!MediaRouteProviderProtocol.CLIENT_DATA_VOLUME.equals(str)) {
            if ("watermark".equals(str)) {
                zztb2.zzsx();
                return;
            } else {
                String valueOf2 = String.valueOf(str);
                zzahw.zzcz(valueOf2.length() != 0 ? "Unknown video action: ".concat(valueOf2) : new String("Unknown video action: "));
                return;
            }
        }
        String str6 = (String) map.get(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME);
        if (str6 == null) {
            zzahw.zzcz("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            zztb2.zzb(Float.parseFloat(str6));
        } catch (NumberFormatException unused4) {
            String valueOf3 = String.valueOf(str6);
            zzahw.zzcz(valueOf3.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf3) : new String("Could not parse volume parameter from volume video GMSG: "));
        }
    }
}
