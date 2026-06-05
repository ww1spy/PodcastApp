package com.google.android.gms.internal;

import android.content.Context;

/* loaded from: classes.dex */
final class zzabw implements zzaby {
    private /* synthetic */ Context val$context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabw(Context context) {
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.zzaby
    public final boolean zza(zzala zzalaVar) {
        boolean zzd;
        zzlc.zzij();
        boolean zzbb = zzako.zzbb(this.val$context);
        boolean z = ((Boolean) zzlc.zzio().zzd(zzoi.zzbve)).booleanValue() && zzalaVar.zzdjb;
        zzd = zzabv.zzd(this.val$context, zzalaVar.zzdjb);
        if (!zzd || !zzbb || z) {
            return true;
        }
        if (com.google.android.gms.common.util.zzj.zzcw(this.val$context)) {
            if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbmx)).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
