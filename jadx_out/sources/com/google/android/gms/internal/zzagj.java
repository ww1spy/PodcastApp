package com.google.android.gms.internal;

import java.util.List;

/* loaded from: classes.dex */
final class zzagj implements zzalf<Void> {
    private /* synthetic */ zzalt zzdbl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagj(zzagf zzagfVar, zzalt zzaltVar) {
        this.zzdbl = zzaltVar;
    }

    @Override // com.google.android.gms.internal.zzalf
    public final /* synthetic */ void onSuccess(Void r2) {
        List list;
        list = zzagf.zzday;
        list.remove(this.zzdbl);
    }

    @Override // com.google.android.gms.internal.zzalf
    public final void zzb(Throwable th) {
        List list;
        list = zzagf.zzday;
        list.remove(this.zzdbl);
    }
}
