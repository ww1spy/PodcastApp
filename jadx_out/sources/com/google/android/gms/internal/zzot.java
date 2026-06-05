package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzot {
    private final long zzbwp;

    @Nullable
    private final String zzbwq;

    @Nullable
    private final zzot zzbwr;

    public zzot(long j, @Nullable String str, @Nullable zzot zzotVar) {
        this.zzbwp = j;
        this.zzbwq = str;
        this.zzbwr = zzotVar;
    }

    public final long getTime() {
        return this.zzbwp;
    }

    public final String zzjl() {
        return this.zzbwq;
    }

    @Nullable
    public final zzot zzjm() {
        return this.zzbwr;
    }
}
