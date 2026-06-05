package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaqq extends com.google.android.gms.analytics.zzi<zzaqq> {
    public int zzcly;
    public int zzclz;
    private String zzdxa;
    public int zzdxb;
    public int zzdxc;
    public int zzdxd;

    public final String getLanguage() {
        return this.zzdxa;
    }

    public final void setLanguage(String str) {
        this.zzdxa = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.zzdxa);
        hashMap.put("screenColors", Integer.valueOf(this.zzdxb));
        hashMap.put("screenWidth", Integer.valueOf(this.zzcly));
        hashMap.put("screenHeight", Integer.valueOf(this.zzclz));
        hashMap.put("viewportWidth", Integer.valueOf(this.zzdxc));
        hashMap.put("viewportHeight", Integer.valueOf(this.zzdxd));
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzaqq zzaqqVar) {
        zzaqq zzaqqVar2 = zzaqqVar;
        if (this.zzdxb != 0) {
            zzaqqVar2.zzdxb = this.zzdxb;
        }
        if (this.zzcly != 0) {
            zzaqqVar2.zzcly = this.zzcly;
        }
        if (this.zzclz != 0) {
            zzaqqVar2.zzclz = this.zzclz;
        }
        if (this.zzdxc != 0) {
            zzaqqVar2.zzdxc = this.zzdxc;
        }
        if (this.zzdxd != 0) {
            zzaqqVar2.zzdxd = this.zzdxd;
        }
        if (TextUtils.isEmpty(this.zzdxa)) {
            return;
        }
        zzaqqVar2.zzdxa = this.zzdxa;
    }
}
