package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaf implements PendingResult.zza {
    private /* synthetic */ BasePendingResult zzfwy;
    private /* synthetic */ zzae zzfwz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(zzae zzaeVar, BasePendingResult basePendingResult) {
        this.zzfwz = zzaeVar;
        this.zzfwy = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.zza
    public final void zzr(Status status) {
        Map map;
        map = this.zzfwz.zzfww;
        map.remove(this.zzfwy);
    }
}
