package com.google.android.gms.common.api.internal;

import android.support.annotation.BinderThread;
import com.google.android.gms.internal.zzcyo;
import com.google.android.gms.internal.zzcyw;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzav extends zzcyo {
    private final WeakReference<zzao> zzfxu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(zzao zzaoVar) {
        this.zzfxu = new WeakReference<>(zzaoVar);
    }

    @Override // com.google.android.gms.internal.zzcyo, com.google.android.gms.internal.zzcyp
    @BinderThread
    public final void zzb(zzcyw zzcywVar) {
        zzbi zzbiVar;
        zzao zzaoVar = this.zzfxu.get();
        if (zzaoVar == null) {
            return;
        }
        zzbiVar = zzaoVar.zzfxd;
        zzbiVar.zza(new zzaw(this, zzaoVar, zzaoVar, zzcywVar));
    }
}
