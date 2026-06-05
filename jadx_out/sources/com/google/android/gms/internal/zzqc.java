package com.google.android.gms.internal;

import android.text.TextUtils;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqc implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzaan zzbze;
    final /* synthetic */ zzqb zzbzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqc(zzqb zzqbVar, zzaan zzaanVar) {
        this.zzbzf = zzqbVar;
        this.zzbze = zzaanVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, final Map<String, String> map) {
        WeakReference weakReference;
        weakReference = this.zzbzf.zzbzc;
        zzaof zzaofVar = (zzaof) weakReference.get();
        if (zzaofVar == null) {
            this.zzbze.zzb("/loadHtml", this);
            return;
        }
        zzapu zzua = zzaofVar.zzua();
        final zzaan zzaanVar = this.zzbze;
        zzua.zza(new zzapv(this, map, zzaanVar) { // from class: com.google.android.gms.internal.zzqd
            private final zzqc zzbzg;
            private final Map zzbzh;
            private final zzaan zzbzi;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbzg = this;
                this.zzbzh = map;
                this.zzbzi = zzaanVar;
            }

            @Override // com.google.android.gms.internal.zzapv
            public final void zza(zzaof zzaofVar2, boolean z) {
                String str;
                zzqc zzqcVar = this.zzbzg;
                Map map2 = this.zzbzh;
                zzaan zzaanVar2 = this.zzbzi;
                zzqcVar.zzbzf.zzbzd = (String) map2.get("id");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("messageType", "htmlLoaded");
                    str = zzqcVar.zzbzf.zzbzd;
                    jSONObject.put("id", str);
                    zzaanVar2.zza("sendMessageToNativeJs", jSONObject);
                } catch (JSONException e) {
                    zzahw.zzb("Unable to dispatch sendMessageToNativeJs event", e);
                }
            }
        });
        String str = map.get("overlayHtml");
        String str2 = map.get("baseUrl");
        if (TextUtils.isEmpty(str2)) {
            zzaofVar.loadData(str, "text/html", HttpRequest.CHARSET_UTF8);
        } else {
            zzaofVar.loadDataWithBaseURL(str2, str, "text/html", HttpRequest.CHARSET_UTF8, null);
        }
    }
}
