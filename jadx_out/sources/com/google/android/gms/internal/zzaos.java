package com.google.android.gms.internal;

import android.text.TextUtils;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;

/* loaded from: classes.dex */
final class zzaos implements com.google.android.gms.ads.internal.gmsg.zzt<zzaof> {
    private /* synthetic */ zzaor zzdrm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaos(zzaor zzaorVar) {
        this.zzdrm = zzaorVar;
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
                synchronized (this.zzdrm) {
                    i = this.zzdrm.zzdre;
                    if (i != parseInt) {
                        this.zzdrm.zzdre = parseInt;
                        this.zzdrm.requestLayout();
                    }
                }
            } catch (Exception e) {
                zzahw.zzc("Exception occurred while getting webview content height", e);
            }
        }
    }
}
