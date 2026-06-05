package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzamd;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzy implements zzt<Object> {
    private HashMap<String, zzamd<JSONObject>> zzccl = new HashMap<>();

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("request_id");
        String str2 = map.get("fetched_ad");
        zzahw.zzby("Received ad from the cache.");
        zzamd<JSONObject> zzamdVar = this.zzccl.get(str);
        try {
            if (zzamdVar == null) {
                zzahw.e("Could not find the ad request for the corresponding ad response.");
            } else {
                zzamdVar.set(new JSONObject(str2));
            }
        } catch (JSONException e) {
            zzahw.zzb("Failed constructing JSON object from value passed from javascript", e);
            zzamdVar.set(null);
        } finally {
            this.zzccl.remove(str);
        }
    }

    public final Future<JSONObject> zzas(String str) {
        zzamd<JSONObject> zzamdVar = new zzamd<>();
        this.zzccl.put(str, zzamdVar);
        return zzamdVar;
    }

    public final void zzat(String str) {
        zzamd<JSONObject> zzamdVar = this.zzccl.get(str);
        if (zzamdVar == null) {
            zzahw.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!zzamdVar.isDone()) {
            zzamdVar.cancel(true);
        }
        this.zzccl.remove(str);
    }
}
