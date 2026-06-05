package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzagx {
    public static Uri zzb(Uri uri, Context context) {
        if (!com.google.android.gms.ads.internal.zzbt.zzfh().zzv(context) || !TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            return uri;
        }
        String zzz = com.google.android.gms.ads.internal.zzbt.zzfh().zzz(context);
        Uri zzb = zzb(uri.toString(), "fbs_aeid", zzz);
        com.google.android.gms.ads.internal.zzbt.zzfh().zze(context, zzz);
        return zzb;
    }

    private static Uri zzb(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i = indexOf + 1;
        return Uri.parse(str.substring(0, i) + str2 + "=" + str3 + "&" + str.substring(i));
    }

    public static String zzb(String str, Context context) {
        String zzz;
        if (!com.google.android.gms.ads.internal.zzbt.zzfh().zzq(context) || TextUtils.isEmpty(str) || (zzz = com.google.android.gms.ads.internal.zzbt.zzfh().zzz(context)) == null) {
            return str;
        }
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzboo)).booleanValue()) {
            if (str.contains("fbs_aeid")) {
                return str;
            }
            if (com.google.android.gms.ads.internal.zzbt.zzel().zzcl(str)) {
                com.google.android.gms.ads.internal.zzbt.zzfh().zze(context, zzz);
                return zzb(str, "fbs_aeid", zzz).toString();
            }
            if (!com.google.android.gms.ads.internal.zzbt.zzel().zzcm(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.zzbt.zzfh().zzf(context, zzz);
            return zzb(str, "fbs_aeid", zzz).toString();
        }
        CharSequence charSequence = (String) zzlc.zzio().zzd(zzoi.zzbop);
        if (!str.contains(charSequence)) {
            return str;
        }
        if (com.google.android.gms.ads.internal.zzbt.zzel().zzcl(str)) {
            com.google.android.gms.ads.internal.zzbt.zzfh().zze(context, zzz);
            return str.replace(charSequence, zzz);
        }
        if (!com.google.android.gms.ads.internal.zzbt.zzel().zzcm(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.zzbt.zzfh().zzf(context, zzz);
        return str.replace(charSequence, zzz);
    }
}
