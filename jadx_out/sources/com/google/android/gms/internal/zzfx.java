package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzfx implements zzhf {
    private WeakReference<zzpv> zzawq;

    public zzfx(zzpv zzpvVar) {
        this.zzawq = new WeakReference<>(zzpvVar);
    }

    @Override // com.google.android.gms.internal.zzhf
    @Nullable
    public final View zzgh() {
        zzpv zzpvVar = this.zzawq.get();
        if (zzpvVar != null) {
            return zzpvVar.zzkt();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final boolean zzgi() {
        return this.zzawq.get() == null;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final zzhf zzgj() {
        return new zzfz(this.zzawq.get());
    }
}
