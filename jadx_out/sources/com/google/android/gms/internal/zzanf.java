package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.support.annotation.Nullable;

@zzabh
/* loaded from: classes.dex */
public final class zzanf extends zzana {
    @Override // com.google.android.gms.internal.zzana
    @Nullable
    public final zzamz zza(Context context, zzann zzannVar, int i, boolean z, zzov zzovVar, zzanm zzanmVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null || applicationInfo.targetSdkVersion >= 11) {
            return new zzamp(context, z, zzannVar.zzty().zzvl(), zzanmVar, new zzano(context, zzannVar.zztl(), zzannVar.getRequestId(), zzovVar, zzannVar.zzti()));
        }
        return null;
    }
}
