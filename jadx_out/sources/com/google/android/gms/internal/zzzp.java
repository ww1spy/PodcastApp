package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzzp extends zzahs {
    private final zzzn zzcoa;
    private final zzahe zzcob;
    private final zzacj zzcoc;

    public zzzp(zzahe zzaheVar, zzzn zzznVar) {
        this.zzcob = zzaheVar;
        this.zzcoc = this.zzcob.zzdcw;
        this.zzcoa = zzznVar;
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void onStop() {
    }

    @Override // com.google.android.gms.internal.zzahs
    public final void zzdo() {
        zzaij.zzdfn.post(new zzzq(this, new zzahd(this.zzcob.zzcvm.zzcrv, null, null, 0, null, null, this.zzcoc.orientation, this.zzcoc.zzcic, this.zzcob.zzcvm.zzcry, false, null, null, null, null, null, this.zzcoc.zzctp, this.zzcob.zzaud, this.zzcoc.zzctn, this.zzcob.zzdcn, this.zzcoc.zzcts, this.zzcoc.zzctt, this.zzcob.zzdch, null, null, null, null, this.zzcob.zzdcw.zzcuf, this.zzcob.zzdcw.zzcug, null, null, null, this.zzcob.zzdcu, this.zzcob.zzdcw.zzaqw, this.zzcob.zzdcv)));
    }
}
