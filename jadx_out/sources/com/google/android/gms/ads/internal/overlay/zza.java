package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zza {
    private static boolean zza(Context context, Intent intent, zzt zztVar) {
        try {
            String valueOf = String.valueOf(intent.toURI());
            zzahw.v(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzbt.zzel();
            zzaij.zza(context, intent);
            if (zztVar == null) {
                return true;
            }
            zztVar.zzbr();
            return true;
        } catch (ActivityNotFoundException e) {
            zzahw.zzcz(e.getMessage());
            return false;
        }
    }

    public static boolean zza(Context context, zzc zzcVar, zzt zztVar) {
        int i;
        String str;
        if (zzcVar == null) {
            str = "No intent data for launcher overlay.";
        } else {
            zzoi.initialize(context);
            if (zzcVar.intent != null) {
                return zza(context, zzcVar.intent, zztVar);
            }
            Intent intent = new Intent();
            if (!TextUtils.isEmpty(zzcVar.url)) {
                if (TextUtils.isEmpty(zzcVar.mimeType)) {
                    intent.setData(Uri.parse(zzcVar.url));
                } else {
                    intent.setDataAndType(Uri.parse(zzcVar.url), zzcVar.mimeType);
                }
                intent.setAction("android.intent.action.VIEW");
                if (!TextUtils.isEmpty(zzcVar.packageName)) {
                    intent.setPackage(zzcVar.packageName);
                }
                if (!TextUtils.isEmpty(zzcVar.zzcmh)) {
                    String[] split = zzcVar.zzcmh.split("/", 2);
                    if (split.length < 2) {
                        String valueOf = String.valueOf(zzcVar.zzcmh);
                        zzahw.zzcz(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                        return false;
                    }
                    intent.setClassName(split[0], split[1]);
                }
                String str2 = zzcVar.zzcmi;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        i = Integer.parseInt(str2);
                    } catch (NumberFormatException unused) {
                        zzahw.zzcz("Could not parse intent flags.");
                        i = 0;
                    }
                    intent.addFlags(i);
                }
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbuq)).booleanValue()) {
                    intent.addFlags(268435456);
                    intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
                } else {
                    if (((Boolean) zzlc.zzio().zzd(zzoi.zzbup)).booleanValue()) {
                        zzbt.zzel();
                        zzaij.zzb(context, intent);
                    }
                }
                return zza(context, intent, zztVar);
            }
            str = "Open GMSG did not contain a URL.";
        }
        zzahw.zzcz(str);
        return false;
    }
}
