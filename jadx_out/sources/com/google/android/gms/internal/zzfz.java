package com.google.android.gms.internal;

import android.view.View;

/* loaded from: classes.dex */
public final class zzfz implements zzhf {
    private zzpv zzawr;

    public zzfz(zzpv zzpvVar) {
        this.zzawr = zzpvVar;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final View zzgh() {
        if (this.zzawr != null) {
            return this.zzawr.zzkt();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final boolean zzgi() {
        return this.zzawr == null;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final zzhf zzgj() {
        return this;
    }
}
