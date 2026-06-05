package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.lang.ref.WeakReference;
import java.util.Map;

@Hide
/* loaded from: classes.dex */
public final class zzqa implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private final WeakReference<zzpw> zzapr;
    private final String zzarn;

    public zzqa(zzpw zzpwVar, String str) {
        this.zzapr = new WeakReference<>(zzpwVar);
        this.zzarn = str;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        zzpw zzpwVar;
        String str = map.get("ads_id");
        String str2 = map.get("eventName");
        if (TextUtils.isEmpty(str) || !this.zzarn.equals(str)) {
            return;
        }
        try {
            Integer.parseInt(map.get("eventType"));
        } catch (Exception e) {
            zzahw.zzb("Parse Scion log event type error", e);
        }
        if ("_ai".equals(str2)) {
            zzpw zzpwVar2 = this.zzapr.get();
            if (zzpwVar2 != null) {
                zzpwVar2.zzbx();
                return;
            }
            return;
        }
        if (!"_ac".equals(str2) || (zzpwVar = this.zzapr.get()) == null) {
            return;
        }
        zzpwVar.zzby();
    }
}
