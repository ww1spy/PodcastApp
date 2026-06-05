package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.common.internal.Hide;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzok {
    private Context mContext;
    private String zzavp;
    private boolean zzbwc = ((Boolean) zzlc.zzio().zzd(zzoi.zzbne)).booleanValue();
    private String zzbwd = (String) zzlc.zzio().zzd(zzoi.zzbnf);
    private Map<String, String> zzbwe = new LinkedHashMap();

    public zzok(Context context, String str) {
        this.mContext = null;
        this.zzavp = null;
        this.mContext = context;
        this.zzavp = str;
        this.zzbwe.put("s", "gmob_sdk");
        this.zzbwe.put("v", "3");
        this.zzbwe.put("os", Build.VERSION.RELEASE);
        this.zzbwe.put(CommonUtils.SDK, Build.VERSION.SDK);
        Map<String, String> map = this.zzbwe;
        com.google.android.gms.ads.internal.zzbt.zzel();
        map.put("device", zzaij.zzrd());
        this.zzbwe.put(SettingsJsonConstants.APP_KEY, context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.zzbwe;
        com.google.android.gms.ads.internal.zzbt.zzel();
        map2.put("is_lite_sdk", zzaij.zzas(context) ? NotificationPreferences.YES : NotificationPreferences.NO);
        Future<zzaea> zzo = com.google.android.gms.ads.internal.zzbt.zzew().zzo(this.mContext);
        try {
            zzo.get();
            this.zzbwe.put("network_coarse", Integer.toString(zzo.get().zzcyo));
            this.zzbwe.put("network_fine", Integer.toString(zzo.get().zzcyp));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzfw() {
        return this.zzavp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzjh() {
        return this.zzbwc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzji() {
        return this.zzbwd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, String> zzjj() {
        return this.zzbwe;
    }
}
