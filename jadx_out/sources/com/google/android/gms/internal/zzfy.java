package com.google.android.gms.internal;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: classes.dex */
final class zzfy extends ContentObserver {
    private /* synthetic */ zzfv zzawp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfy(zzfv zzfvVar, Handler handler) {
        super(handler);
        this.zzawp = zzfvVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        this.zzawp.zzgb();
    }
}
