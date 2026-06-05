package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbh;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzf extends zzbr {
    private static final String ID = zzbh.ADVERTISING_TRACKING_ENABLED.toString();
    private final zza zzkmt;

    public zzf(Context context) {
        this(zza.zzeg(context));
    }

    private zzf(zza zzaVar) {
        super(ID, new String[0]);
        this.zzkmt = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public final com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        return zzgk.zzam(Boolean.valueOf(!this.zzkmt.isLimitAdTrackingEnabled()));
    }
}
