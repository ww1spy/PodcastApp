package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import io.fabric.sdk.android.services.network.HttpRequest;
import org.json.JSONException;
import org.json.JSONObject;

@zzabh
/* loaded from: classes.dex */
public final class zzaef extends zzaeh {
    private final Context mApplicationContext;
    private final Object mLock = new Object();

    @Nullable
    private SharedPreferences zzcze;
    private final zzux<JSONObject, JSONObject> zzczf;

    public zzaef(Context context, zzux<JSONObject, JSONObject> zzuxVar) {
        this.mApplicationContext = context.getApplicationContext();
        this.zzczf = zzuxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void zzm(JSONObject jSONObject) {
        zzoi.zza(this.mApplicationContext, 1, jSONObject);
        this.zzcze.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis()).apply();
        return null;
    }

    @Override // com.google.android.gms.internal.zzaeh
    public final zzalt<Void> zzon() {
        synchronized (this.mLock) {
            if (this.zzcze == null) {
                this.zzcze = this.mApplicationContext.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis() - this.zzcze.getLong("js_last_update", 0L) < ((Long) zzlc.zzio().zzd(zzoi.zzbse)).longValue()) {
            return zzali.zzh(null);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzala.zzse().zzcu);
            jSONObject.put("mf", zzlc.zzio().zzd(zzoi.zzbsf));
            jSONObject.put("cl", "190237664");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", HttpRequest.METHOD_HEAD);
            return zzali.zza(this.zzczf.zzf(jSONObject), new zzale(this) { // from class: com.google.android.gms.internal.zzaeg
                private final zzaef zzczg;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzczg = this;
                }

                @Override // com.google.android.gms.internal.zzale
                public final Object apply(Object obj) {
                    return this.zzczg.zzm((JSONObject) obj);
                }
            }, zzaly.zzdju);
        } catch (JSONException e) {
            zzahw.zzb("Unable to populate SDK Core Constants parameters.", e);
            return zzali.zzh(null);
        }
    }
}
