package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;
import java.util.Map;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzou {

    @Nullable
    private final zzov zzanh;
    private final Map<String, zzot> zzbws = new HashMap();

    public zzou(@Nullable zzov zzovVar) {
        this.zzanh = zzovVar;
    }

    public final void zza(String str, zzot zzotVar) {
        this.zzbws.put(str, zzotVar);
    }

    public final void zza(String str, String str2, long j) {
        zzov zzovVar = this.zzanh;
        zzot zzotVar = this.zzbws.get(str2);
        String[] strArr = {str};
        if (zzovVar != null && zzotVar != null) {
            zzovVar.zza(zzotVar, j, strArr);
        }
        Map<String, zzot> map = this.zzbws;
        zzov zzovVar2 = this.zzanh;
        map.put(str, zzovVar2 == null ? null : zzovVar2.zzd(j));
    }

    @Nullable
    public final zzov zzjn() {
        return this.zzanh;
    }
}
