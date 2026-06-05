package com.google.android.gms.ads.internal.gmsg;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzya;
import com.google.android.gms.internal.zzyd;
import com.google.android.gms.internal.zzyf;
import com.google.android.gms.internal.zzyg;
import com.google.android.gms.internal.zzyo;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaa implements zzt<zzaof> {
    private static Map<String, Integer> zzccp = com.google.android.gms.common.util.zzf.zzb(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzw zzccm;
    private final zzyd zzccn;
    private final zzyo zzcco;

    public zzaa(com.google.android.gms.ads.internal.zzw zzwVar, zzyd zzydVar, zzyo zzyoVar) {
        this.zzccm = zzwVar;
        this.zzccn = zzydVar;
        this.zzcco = zzyoVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        zzaof zzaofVar2 = zzaofVar;
        int intValue = zzccp.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && this.zzccm != null && !this.zzccm.zzcz()) {
            this.zzccm.zzt(null);
            return;
        }
        if (intValue == 1) {
            this.zzccn.execute(map);
            return;
        }
        switch (intValue) {
            case 3:
                new zzyg(zzaofVar2, map).execute();
                return;
            case 4:
                new zzya(zzaofVar2, map).execute();
                return;
            case 5:
                new zzyf(zzaofVar2, map).execute();
                return;
            case 6:
                this.zzccn.zzm(true);
                return;
            case 7:
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbnd)).booleanValue()) {
                    this.zzcco.zzda();
                    return;
                }
                return;
            default:
                zzahw.zzcy("Unknown MRAID command called.");
                return;
        }
    }
}
