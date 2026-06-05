package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzss extends zzrz {
    private final NativeCustomTemplateAd.OnCustomClickListener zzcav;

    public zzss(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzcav = onCustomClickListener;
    }

    @Override // com.google.android.gms.internal.zzry
    public final void zzb(zzro zzroVar, String str) {
        this.zzcav.onCustomClick(zzrr.zza(zzroVar), str);
    }
}
