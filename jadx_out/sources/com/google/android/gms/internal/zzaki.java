package com.google.android.gms.internal;

import android.annotation.TargetApi;
import com.google.android.gms.common.internal.Hide;

@Hide
@TargetApi(17)
@zzabh
/* loaded from: classes.dex */
public final class zzaki {
    private static zzaki zzdhu;
    String zzddt;

    private zzaki() {
    }

    public static zzaki zzru() {
        if (zzdhu == null) {
            zzdhu = new zzaki();
        }
        return zzdhu;
    }
}
