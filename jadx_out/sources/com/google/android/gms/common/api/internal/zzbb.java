package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbb implements com.google.android.gms.common.internal.zzaf {
    private /* synthetic */ zzba zzfyr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbb(zzba zzbaVar) {
        this.zzfyr = zzbaVar;
    }

    @Override // com.google.android.gms.common.internal.zzaf
    public final boolean isConnected() {
        return this.zzfyr.isConnected();
    }

    @Override // com.google.android.gms.common.internal.zzaf
    public final Bundle zzagp() {
        return null;
    }
}
