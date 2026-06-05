package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zza implements zzt<Object> {
    private final zzb zzcbc;

    public zza(zzb zzbVar) {
        this.zzcbc = zzbVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzahw.zzcz("App event with no name parameter.");
        } else {
            this.zzcbc.onAppEvent(str, map.get("info"));
        }
    }
}
