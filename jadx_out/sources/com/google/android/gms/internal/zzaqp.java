package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzaqp extends com.google.android.gms.analytics.zzi<zzaqp> {
    private final Map<String, Object> zzbwu = new HashMap();

    public final void set(String str, String str2) {
        com.google.android.gms.common.internal.zzbq.zzgv(str);
        if (str != null && str.startsWith("&")) {
            str = str.substring(1);
        }
        com.google.android.gms.common.internal.zzbq.zzh(str, "Name can not be empty or \"&\"");
        this.zzbwu.put(str, str2);
    }

    public final String toString() {
        return zzl(this.zzbwu);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqp zzaqpVar) {
        zzaqp zzaqpVar2 = zzaqpVar;
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzaqpVar2);
        zzaqpVar2.zzbwu.putAll(this.zzbwu);
    }

    public final Map<String, Object> zzwy() {
        return Collections.unmodifiableMap(this.zzbwu);
    }
}
