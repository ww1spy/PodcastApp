package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzaqo extends com.google.android.gms.analytics.zzi<zzaqo> {
    private Map<Integer, Double> zzdwz = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.zzdwz.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            StringBuilder sb = new StringBuilder(6 + String.valueOf(valueOf).length());
            sb.append("metric");
            sb.append(valueOf);
            hashMap.put(sb.toString(), entry.getValue());
        }
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqo zzaqoVar) {
        zzaqoVar.zzdwz.putAll(this.zzdwz);
    }

    public final Map<Integer, Double> zzwx() {
        return Collections.unmodifiableMap(this.zzdwz);
    }
}
