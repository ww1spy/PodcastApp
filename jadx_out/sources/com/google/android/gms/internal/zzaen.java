package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaen implements zzadr {
    private zzux<JSONObject, JSONObject> zzczf;
    private zzux<JSONObject, JSONObject> zzczk;

    public zzaen(Context context) {
        this.zzczk = com.google.android.gms.ads.internal.zzbt.zzez().zzb(context, zzala.zzse()).zza("google.afma.request.getAdDictionary", zzvc.zzcgm, zzvc.zzcgm);
        this.zzczf = com.google.android.gms.ads.internal.zzbt.zzez().zzb(context, zzala.zzse()).zza("google.afma.sdkConstants.getSdkConstants", zzvc.zzcgm, zzvc.zzcgm);
    }

    @Override // com.google.android.gms.internal.zzadr
    public final zzux<JSONObject, JSONObject> zzoe() {
        return this.zzczk;
    }

    @Override // com.google.android.gms.internal.zzadr
    public final zzux<JSONObject, JSONObject> zzof() {
        return this.zzczf;
    }
}
