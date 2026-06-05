package com.google.android.gms.ads.internal.gmsg;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzagd;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaf implements zzt<Object> {
    private final zzag zzccw;

    public zzaf(zzag zzagVar) {
        this.zzccw = zzagVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("action");
        if ("grant".equals(str)) {
            zzagd zzagdVar = null;
            try {
                int parseInt = Integer.parseInt(map.get("amount"));
                String str2 = map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzagdVar = new zzagd(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzahw.zzc("Unable to parse reward amount.", e);
            }
            this.zzccw.zzb(zzagdVar);
            return;
        }
        if ("video_start".equals(str)) {
            this.zzccw.zzdl();
            return;
        }
        if ("video_complete".equals(str)) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbos)).booleanValue()) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbos)).booleanValue()) {
                    this.zzccw.zzdm();
                }
            }
        }
    }
}
