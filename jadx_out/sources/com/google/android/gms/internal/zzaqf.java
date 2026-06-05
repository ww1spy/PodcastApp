package com.google.android.gms.internal;

import android.text.TextUtils;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;

/* loaded from: classes.dex */
final class zzaqf implements com.google.android.gms.ads.internal.gmsg.zzt<zzaof> {
    private /* synthetic */ zzaqe zzdst;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqf(zzaqe zzaqeVar) {
        this.zzdst = zzaqeVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(zzaof zzaofVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get(SettingsJsonConstants.ICON_HEIGHT_KEY);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.zzdst) {
                    i = this.zzdst.zzdre;
                    if (i != parseInt) {
                        this.zzdst.zzdre = parseInt;
                        this.zzdst.requestLayout();
                    }
                }
            } catch (Exception e) {
                zzahw.zzc("Exception occurred while getting webview content height", e);
            }
        }
    }
}
