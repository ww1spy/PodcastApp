package com.google.android.gms.ads.internal.gmsg;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzz implements zzt<Object> {
    private final Context zzaiq;

    public zzz(Context context) {
        this.zzaiq = context;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        if (zzbt.zzfh().zzq(this.zzaiq)) {
            zzbt.zzfh().zza(this.zzaiq, map.get("eventName"), map.get("eventId"));
        }
    }
}
