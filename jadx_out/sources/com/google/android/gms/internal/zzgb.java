package com.google.android.gms.internal;

import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzgb implements zzhf {
    private final WeakReference<View> zzawt;
    private final WeakReference<zzahd> zzawu;

    public zzgb(View view, zzahd zzahdVar) {
        this.zzawt = new WeakReference<>(view);
        this.zzawu = new WeakReference<>(zzahdVar);
    }

    @Override // com.google.android.gms.internal.zzhf
    public final View zzgh() {
        return this.zzawt.get();
    }

    @Override // com.google.android.gms.internal.zzhf
    public final boolean zzgi() {
        return this.zzawt.get() == null || this.zzawu.get() == null;
    }

    @Override // com.google.android.gms.internal.zzhf
    public final zzhf zzgj() {
        return new zzga(this.zzawt.get(), this.zzawu.get());
    }
}
