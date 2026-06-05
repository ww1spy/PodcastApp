package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import java.util.Map;

/* loaded from: classes.dex */
final class zzp implements zzt<zzaof> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqw)).booleanValue()) {
            zzaofVar2.zzaj(!Boolean.parseBoolean((String) map.get("disabled")));
        }
    }
}
