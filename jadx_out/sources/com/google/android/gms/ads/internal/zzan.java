package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahs;
import com.google.android.gms.internal.zzaij;

/* JADX INFO: Access modifiers changed from: package-private */
@zzabh
/* loaded from: classes.dex */
public final class zzan extends zzahs {
    final /* synthetic */ zzak zzaql;
    private final int zzaqm;

    public zzan(zzak zzakVar, int i) {
        this.zzaql = zzakVar;
        this.zzaqm = i;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        boolean z;
        float f;
        boolean z2;
        boolean z3 = this.zzaql.zzanm.zzaqp;
        boolean zzdj = this.zzaql.zzdj();
        z = this.zzaql.zzaqd;
        f = this.zzaql.zzaqe;
        int i = this.zzaql.zzanm.zzaqp ? this.zzaqm : -1;
        z2 = this.zzaql.zzaqf;
        zzap zzapVar = new zzap(z3, zzdj, z, f, i, z2, this.zzaql.zzanm.zzaue.zzaqw);
        int requestedOrientation = this.zzaql.zzanm.zzaue.zzcnm.getRequestedOrientation();
        if (requestedOrientation == -1) {
            requestedOrientation = this.zzaql.zzanm.zzaue.orientation;
        }
        zzaij.zzdfn.post(new zzao(this, new AdOverlayInfoParcel(this.zzaql, this.zzaql, this.zzaql, this.zzaql.zzanm.zzaue.zzcnm, requestedOrientation, this.zzaql.zzanm.zzatz, this.zzaql.zzanm.zzaue.zzctt, zzapVar)));
    }
}
