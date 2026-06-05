package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzon {
    @Nullable
    public static zzol zza(@Nullable zzok zzokVar) {
        if (!zzokVar.zzjh()) {
            zzahw.v("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        }
        if (zzokVar.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(zzokVar.zzfw())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        return new zzol(zzokVar.getContext(), zzokVar.zzfw(), zzokVar.zzji(), zzokVar.zzjj());
    }
}
