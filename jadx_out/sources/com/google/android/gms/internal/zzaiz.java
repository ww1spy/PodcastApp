package com.google.android.gms.internal;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;

@TargetApi(21)
/* loaded from: classes.dex */
public final class zzaiz extends zzaiy {
    @Override // com.google.android.gms.internal.zzaip
    public final CookieManager zzau(Context context) {
        if (zzrk()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzahw.zzb("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.zzbt.zzep().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzais, com.google.android.gms.internal.zzaip
    public final zzaog zzc(zzaof zzaofVar, boolean z) {
        return new zzapn(zzaofVar, z);
    }

    @Override // com.google.android.gms.internal.zzaiu, com.google.android.gms.internal.zzaip
    public final int zzrl() {
        return R.style.Theme.Material.Dialog.Alert;
    }
}
