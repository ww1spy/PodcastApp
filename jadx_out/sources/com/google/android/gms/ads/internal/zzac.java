package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzalg;
import com.google.android.gms.internal.zzali;
import com.google.android.gms.internal.zzalt;
import com.google.android.gms.internal.zzaly;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzux;
import com.google.android.gms.internal.zzvc;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public final class zzac {
    private Context mContext;
    private final Object mLock = new Object();
    private long zzaox = 0;

    public final void zza(Context context, zzala zzalaVar, String str, @Nullable Runnable runnable) {
        zza(context, zzalaVar, true, null, str, null, runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(Context context, zzala zzalaVar, boolean z, @Nullable zzahh zzahhVar, String str, @Nullable String str2, @Nullable Runnable runnable) {
        if (zzbt.zzes().elapsedRealtime() - this.zzaox < 5000) {
            zzahw.zzcz("Not retrying to fetch app settings");
            return;
        }
        this.zzaox = zzbt.zzes().elapsedRealtime();
        boolean z2 = true;
        if (zzahhVar != null) {
            if (!(zzbt.zzes().currentTimeMillis() - zzahhVar.zzpq() > ((Long) zzlc.zzio().zzd(zzoi.zzbtk)).longValue()) && zzahhVar.zzpr()) {
                z2 = false;
            }
        }
        if (z2) {
            if (context == null) {
                zzahw.zzcz("Context not provided to fetch application settings");
                return;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                zzahw.zzcz("App settings could not be fetched. Required parameters missing");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.mContext = applicationContext;
            zzux zza = zzbt.zzez().zzb(this.mContext, zzalaVar).zza("google.afma.config.fetchAppSettings", zzvc.zzcgm, zzvc.zzcgm);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                zzalt zzf = zza.zzf(jSONObject);
                zzalt zza2 = zzali.zza(zzf, zzad.zzaoy, zzaly.zzdju);
                if (runnable != null) {
                    zzf.zza(runnable, zzaly.zzdju);
                }
                zzalg.zza(zza2, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e) {
                zzahw.zzb("Error requesting application settings", e);
            }
        }
    }
}
