package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzyf {
    private final zzaof zzcct;
    private final boolean zzclm;
    private final String zzcln;

    public zzyf(zzaof zzaofVar, Map<String, String> map) {
        this.zzcct = zzaofVar;
        this.zzcln = map.get("forceOrientation");
        this.zzclm = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean(map.get("allowOrientationChange")) : true;
    }

    public final void execute() {
        if (this.zzcct == null) {
            zzahw.zzcz("AdWebView is null");
        } else {
            this.zzcct.setRequestedOrientation("portrait".equalsIgnoreCase(this.zzcln) ? com.google.android.gms.ads.internal.zzbt.zzen().zzrh() : "landscape".equalsIgnoreCase(this.zzcln) ? com.google.android.gms.ads.internal.zzbt.zzen().zzrg() : this.zzclm ? -1 : com.google.android.gms.ads.internal.zzbt.zzen().zzri());
        }
    }
}
