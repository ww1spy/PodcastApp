package com.google.android.gms.internal;

import android.support.annotation.Nullable;

@zzabh
/* loaded from: classes.dex */
public final class zzoo {
    public static boolean zza(@Nullable zzov zzovVar, @Nullable zzot zzotVar, String... strArr) {
        if (zzovVar == null || zzotVar == null) {
            return false;
        }
        return zzovVar.zza(zzotVar, strArr);
    }

    @Nullable
    public static zzot zzb(@Nullable zzov zzovVar) {
        if (zzovVar == null) {
            return null;
        }
        return zzovVar.zzjo();
    }
}
