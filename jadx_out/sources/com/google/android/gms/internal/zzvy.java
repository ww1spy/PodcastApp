package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzvy {
    private static String zza(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public static List<String> zza(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i = 0; i < optJSONArray.length(); i++) {
            arrayList.add(optJSONArray.getString(i));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void zza(Context context, String str, zzahd zzahdVar, String str2, boolean z, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        String str3 = z ? NotificationPreferences.YES : NotificationPreferences.NO;
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String zza = zza(zza(zza(zza(zza(zza(zza(it.next(), "@gw_adlocid@", str2), "@gw_adnetrefresh@", str3), "@gw_qdata@", zzahdVar.zzdcj.zzcib), "@gw_sdkver@", str), "@gw_sessid@", zzlc.zzil()), "@gw_seqnum@", zzahdVar.zzcry), "@gw_adnetstatus@", zzahdVar.zzdck);
            if (zzahdVar.zzcje != null) {
                zza = zza(zza(zza, "@gw_adnetid@", zzahdVar.zzcje.zzchc), "@gw_allocid@", zzahdVar.zzcje.zzche);
            }
            String zzb = zzagx.zzb(zza, context);
            com.google.android.gms.ads.internal.zzbt.zzel();
            zzaij.zze(context, str, zzb);
        }
    }

    public static void zza(Context context, String str, List<String> list, String str2, @Nullable zzagd zzagdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!TextUtils.isEmpty(str2) && zzaks.isEnabled()) {
            str2 = "fakeUserForAdDebugLog";
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String zza = zza(zza(it.next(), "@gw_rwd_userid@", Uri.encode(str2)), "@gw_tmstmp@", Long.toString(currentTimeMillis));
            if (zzagdVar != null) {
                zza = zza(zza(zza, "@gw_rwd_itm@", Uri.encode(zzagdVar.type)), "@gw_rwd_amt@", Integer.toString(zzagdVar.zzdax));
            }
            com.google.android.gms.ads.internal.zzbt.zzel();
            zzaij.zze(context, str, zza);
        }
    }

    public static boolean zza(String str, int[] iArr) {
        if (TextUtils.isEmpty(str) || iArr.length != 2) {
            return false;
        }
        String[] split = str.split("x");
        if (split.length != 2) {
            return false;
        }
        try {
            iArr[0] = Integer.parseInt(split[0]);
            iArr[1] = Integer.parseInt(split[1]);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
