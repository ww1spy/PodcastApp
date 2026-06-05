package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaqx extends com.google.android.gms.analytics.zzi<zzaqx> {
    public String mCategory;
    public String zzdxf;
    public String zzdxy;
    public long zzdxz;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.zzdxy);
        hashMap.put("timeInMillis", Long.valueOf(this.zzdxz));
        hashMap.put("category", this.mCategory);
        hashMap.put("label", this.zzdxf);
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqx zzaqxVar) {
        zzaqx zzaqxVar2 = zzaqxVar;
        if (!TextUtils.isEmpty(this.zzdxy)) {
            zzaqxVar2.zzdxy = this.zzdxy;
        }
        if (this.zzdxz != 0) {
            zzaqxVar2.zzdxz = this.zzdxz;
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzaqxVar2.mCategory = this.mCategory;
        }
        if (TextUtils.isEmpty(this.zzdxf)) {
            return;
        }
        zzaqxVar2.zzdxf = this.zzdxf;
    }
}
