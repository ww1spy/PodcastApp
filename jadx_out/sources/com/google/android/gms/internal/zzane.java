package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;

@zzabh
/* loaded from: classes.dex */
public final class zzane {
    private final Context zzdlx;
    private final zzann zzdly;
    private final ViewGroup zzdlz;
    private zzanb zzdma;

    private zzane(Context context, ViewGroup viewGroup, zzann zzannVar, zzanb zzanbVar) {
        this.zzdlx = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzdlz = viewGroup;
        this.zzdly = zzannVar;
        this.zzdma = null;
    }

    public zzane(Context context, ViewGroup viewGroup, zzaof zzaofVar) {
        this(context, viewGroup, zzaofVar, null);
    }

    public final void onDestroy() {
        com.google.android.gms.common.internal.zzbq.zzgn("onDestroy must be called from the UI thread.");
        if (this.zzdma != null) {
            this.zzdma.destroy();
            this.zzdlz.removeView(this.zzdma);
            this.zzdma = null;
        }
    }

    public final void onPause() {
        com.google.android.gms.common.internal.zzbq.zzgn("onPause must be called from the UI thread.");
        if (this.zzdma != null) {
            this.zzdma.pause();
        }
    }

    public final void zza(int i, int i2, int i3, int i4, int i5, boolean z, zzanm zzanmVar) {
        if (this.zzdma != null) {
            return;
        }
        zzoo.zza(this.zzdly.zztk().zzjn(), this.zzdly.zzti(), "vpr2");
        this.zzdma = new zzanb(this.zzdlx, this.zzdly, i5, z, this.zzdly.zztk().zzjn(), zzanmVar);
        this.zzdlz.addView(this.zzdma, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzdma.zzd(i, i2, i3, i4);
        this.zzdly.zzag(false);
    }

    public final void zze(int i, int i2, int i3, int i4) {
        com.google.android.gms.common.internal.zzbq.zzgn("The underlay may only be modified from the UI thread.");
        if (this.zzdma != null) {
            this.zzdma.zzd(i, i2, i3, i4);
        }
    }

    public final zzanb zztb() {
        com.google.android.gms.common.internal.zzbq.zzgn("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzdma;
    }
}
