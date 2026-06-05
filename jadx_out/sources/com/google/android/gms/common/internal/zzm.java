package com.google.android.gms.common.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzm implements zzj {
    private /* synthetic */ zzd zzgfk;

    public zzm(zzd zzdVar) {
        this.zzgfk = zzdVar;
    }

    @Override // com.google.android.gms.common.internal.zzj
    public final void zzf(@NonNull ConnectionResult connectionResult) {
        zzg zzgVar;
        zzg zzgVar2;
        if (connectionResult.isSuccess()) {
            this.zzgfk.zza((zzan) null, this.zzgfk.zzaly());
            return;
        }
        zzgVar = this.zzgfk.zzgfc;
        if (zzgVar != null) {
            zzgVar2 = this.zzgfk.zzgfc;
            zzgVar2.onConnectionFailed(connectionResult);
        }
    }
}
