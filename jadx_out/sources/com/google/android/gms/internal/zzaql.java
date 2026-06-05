package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import java.util.HashMap;

@Hide
/* loaded from: classes.dex */
public final class zzaql extends com.google.android.gms.analytics.zzi<zzaql> {
    private String mAppId;
    private String zzdwo;
    private String zzdwp;
    private String zzdwq;

    public final String getAppId() {
        return this.mAppId;
    }

    public final void setAppId(String str) {
        this.mAppId = str;
    }

    public final void setAppInstallerId(String str) {
        this.zzdwq = str;
    }

    public final void setAppName(String str) {
        this.zzdwo = str;
    }

    public final void setAppVersion(String str) {
        this.zzdwp = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("appName", this.zzdwo);
        hashMap.put("appVersion", this.zzdwp);
        hashMap.put("appId", this.mAppId);
        hashMap.put("appInstallerId", this.zzdwq);
        return zzl(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final void zzb(zzaql zzaqlVar) {
        if (!TextUtils.isEmpty(this.zzdwo)) {
            zzaqlVar.zzdwo = this.zzdwo;
        }
        if (!TextUtils.isEmpty(this.zzdwp)) {
            zzaqlVar.zzdwp = this.zzdwp;
        }
        if (!TextUtils.isEmpty(this.mAppId)) {
            zzaqlVar.mAppId = this.mAppId;
        }
        if (TextUtils.isEmpty(this.zzdwq)) {
            return;
        }
        zzaqlVar.zzdwq = this.zzdwq;
    }

    public final String zzwn() {
        return this.zzdwo;
    }

    public final String zzwo() {
        return this.zzdwp;
    }

    public final String zzwp() {
        return this.zzdwq;
    }
}
