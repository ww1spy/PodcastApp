package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzanv extends zzahs {
    final zzann zzdly;
    final zzany zzdol;
    private final String zzdom;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanv(zzann zzannVar, zzany zzanyVar, String str) {
        this.zzdly = zzannVar;
        this.zzdol = zzanyVar;
        this.zzdom = str;
        com.google.android.gms.ads.internal.zzbt.zzff().zza(this);
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
        this.zzdol.abort();
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        try {
            this.zzdol.zzdc(this.zzdom);
        } finally {
            zzaij.zzdfn.post(new zzanw(this));
        }
    }
}
