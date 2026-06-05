package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.view.View;

/* loaded from: classes.dex */
public final class zzga implements zzhf {

    @Nullable
    private final View mView;

    @Nullable
    private final zzahd zzaws;

    public zzga(View view, zzahd zzahdVar) {
        this.mView = view;
        this.zzaws = zzahdVar;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final View zzgh() {
        return this.mView;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final boolean zzgi() {
        return this.zzaws == null || this.mView == null;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final zzhf zzgj() {
        return this;
    }
}
