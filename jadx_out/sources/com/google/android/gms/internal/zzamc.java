package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzamc<T> extends zzamd<T> {
    private final T zzdjz;

    private zzamc(T t) {
        this.zzdjz = t;
    }

    public static <T> zzamc<T> zzi(T t) {
        return new zzamc<>(t);
    }

    public final void zzsg() {
        set(this.zzdjz);
    }
}
