package com.google.android.gms.internal;

import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahw extends zzaky {
    public static void v(String str) {
        if (zzqk()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzqk() {
        if (zzae(2)) {
            return ((Boolean) zzlc.zzio().zzd(zzoi.zzbqk)).booleanValue();
        }
        return false;
    }
}
