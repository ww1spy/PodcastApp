package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzaqn extends com.google.android.gms.analytics.zzi<zzaqn> {
    private Map<Integer, String> zzdwy = new HashMap(4);

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<Integer, String> entry : this.zzdwy.entrySet()) {
            String valueOf = String.valueOf(entry.getKey());
            StringBuilder sb = new StringBuilder(9 + String.valueOf(valueOf).length());
            sb.append("dimension");
            sb.append(valueOf);
            hashMap.put(sb.toString(), entry.getValue());
        }
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqn zzaqnVar) {
        zzaqnVar.zzdwy.putAll(this.zzdwy);
    }

    public final Map<Integer, String> zzww() {
        return Collections.unmodifiableMap(this.zzdwy);
    }
}
