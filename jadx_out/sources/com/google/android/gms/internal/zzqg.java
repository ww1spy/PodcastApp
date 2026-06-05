package com.google.android.gms.internal;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqg implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzaan zzbze;
    private /* synthetic */ zzqb zzbzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqg(zzqb zzqbVar, zzaan zzaanVar) {
        this.zzbzf = zzqbVar;
        this.zzbze = zzaanVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : map.keySet()) {
                jSONObject.put(str2, map.get(str2));
            }
            str = this.zzbzf.zzbzd;
            jSONObject.put("id", str);
            this.zzbze.zza("sendMessageToNativeJs", jSONObject);
        } catch (JSONException e) {
            zzahw.zzb("Unable to dispatch sendMessageToNativeJs event", e);
        }
    }
}
