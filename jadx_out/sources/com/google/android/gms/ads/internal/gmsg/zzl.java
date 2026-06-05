package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaof;
import java.util.Map;

/* loaded from: classes.dex */
final class zzl implements zzt<zzaof> {
    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        com.google.android.gms.ads.internal.overlay.zzd zztw = zzaofVar2.zztw();
        if (zztw != null) {
            zztw.close();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzd zztx = zzaofVar2.zztx();
        if (zztx != null) {
            zztx.close();
        } else {
            zzahw.zzcz("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
