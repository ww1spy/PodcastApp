package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaqs extends com.google.android.gms.analytics.zzi<zzaqs> {
    private String mCategory;
    private String zzdxe;
    private String zzdxf;
    private long zzdxg;

    public final String getAction() {
        return this.zzdxe;
    }

    public final String getCategory() {
        return this.mCategory;
    }

    public final String getLabel() {
        return this.zzdxf;
    }

    public final long getValue() {
        return this.zzdxg;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.mCategory);
        hashMap.put("action", this.zzdxe);
        hashMap.put("label", this.zzdxf);
        hashMap.put("value", Long.valueOf(this.zzdxg));
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqs zzaqsVar) {
        zzaqs zzaqsVar2 = zzaqsVar;
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzaqsVar2.mCategory = this.mCategory;
        }
        if (!TextUtils.isEmpty(this.zzdxe)) {
            zzaqsVar2.zzdxe = this.zzdxe;
        }
        if (!TextUtils.isEmpty(this.zzdxf)) {
            zzaqsVar2.zzdxf = this.zzdxf;
        }
        if (this.zzdxg != 0) {
            zzaqsVar2.zzdxg = this.zzdxg;
        }
    }
}
