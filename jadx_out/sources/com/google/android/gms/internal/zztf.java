package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztf extends zzamd<ParcelFileDescriptor> {
    private /* synthetic */ zzte zzcdd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztf(zzte zzteVar) {
        this.zzcdd = zzteVar;
    }

    @Override // com.google.android.gms.internal.zzamd, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.zzcdd.disconnect();
        return super.cancel(z);
    }
}
