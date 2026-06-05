package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaqt extends com.google.android.gms.analytics.zzi<zzaqt> {
    public String zzdxh;
    public boolean zzdxi;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("description", this.zzdxh);
        hashMap.put("fatal", Boolean.valueOf(this.zzdxi));
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqt zzaqtVar) {
        zzaqt zzaqtVar2 = zzaqtVar;
        if (!TextUtils.isEmpty(this.zzdxh)) {
            zzaqtVar2.zzdxh = this.zzdxh;
        }
        if (this.zzdxi) {
            zzaqtVar2.zzdxi = this.zzdxi;
        }
    }
}
