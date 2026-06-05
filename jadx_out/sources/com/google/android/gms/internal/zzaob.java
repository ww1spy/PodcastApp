package com.google.android.gms.internal;

import android.text.TextUtils;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaob implements Runnable {
    private /* synthetic */ String val$message;
    private /* synthetic */ String zzcrd;
    private /* synthetic */ String zzdoq;
    private /* synthetic */ zzany zzdou;
    private /* synthetic */ String zzdov;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaob(zzany zzanyVar, String str, String str2, String str3, String str4) {
        this.zzdou = zzanyVar;
        this.zzcrd = str;
        this.zzdoq = str2;
        this.zzdov = str3;
        this.val$message = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String zzdd;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.zzcrd);
        if (!TextUtils.isEmpty(this.zzdoq)) {
            hashMap.put("cachedSrc", this.zzdoq);
        }
        zzany zzanyVar = this.zzdou;
        zzdd = zzany.zzdd(this.zzdov);
        hashMap.put("type", zzdd);
        hashMap.put("reason", this.zzdov);
        if (!TextUtils.isEmpty(this.val$message)) {
            hashMap.put(SettingsJsonConstants.PROMPT_MESSAGE_KEY, this.val$message);
        }
        this.zzdou.zza("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
