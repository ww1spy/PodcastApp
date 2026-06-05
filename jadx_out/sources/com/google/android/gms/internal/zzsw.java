package com.google.android.gms.internal;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzsw extends zzsi {
    private final UnifiedNativeAd.zza zzcbb;

    public zzsw(UnifiedNativeAd.zza zzaVar) {
        this.zzcbb = zzaVar;
    }

    @Override // com.google.android.gms.internal.zzsh
    public final void zza(zzsk zzskVar) {
        this.zzcbb.zza(new zzsn(zzskVar));
    }
}
