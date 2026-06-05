package com.google.android.gms.ads.internal.gmsg;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzbt;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzov;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzc implements zzt<zzaof> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                zzahw.zzcz("No label given for CSI tick.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                zzahw.zzcz("No timestamp given for CSI tick.");
                return;
            }
            try {
                long elapsedRealtime = zzbt.zzes().elapsedRealtime() + (Long.parseLong(str4) - zzbt.zzes().currentTimeMillis());
                if (TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                zzaofVar2.zztk().zza(str2, str3, elapsedRealtime);
                return;
            } catch (NumberFormatException e) {
                zzahw.zzc("Malformed timestamp for CSI tick.", e);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                zzahw.zzcz("No value given for CSI experiment.");
                return;
            }
            zzov zzjn = zzaofVar2.zztk().zzjn();
            if (zzjn == null) {
                zzahw.zzcz("No ticker for WebView, dropping experiment ID.");
                return;
            } else {
                zzjn.zzf("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                zzahw.zzcz("No value given for CSI extra.");
                return;
            }
            if (TextUtils.isEmpty(str6)) {
                zzahw.zzcz("No name given for CSI extra.");
                return;
            }
            zzov zzjn2 = zzaofVar2.zztk().zzjn();
            if (zzjn2 == null) {
                zzahw.zzcz("No ticker for WebView, dropping extra parameter.");
            } else {
                zzjn2.zzf(str6, str7);
            }
        }
    }
}
