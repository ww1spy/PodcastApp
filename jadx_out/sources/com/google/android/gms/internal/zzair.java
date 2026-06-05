package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.DownloadManager;

@TargetApi(9)
/* loaded from: classes.dex */
public class zzair extends zzaip {
    public zzair() {
        super();
    }

    @Override // com.google.android.gms.internal.zzaip
    public boolean zza(DownloadManager.Request request) {
        request.setShowRunningNotification(true);
        return true;
    }

    @Override // com.google.android.gms.internal.zzaip
    public final int zzrg() {
        return 6;
    }

    @Override // com.google.android.gms.internal.zzaip
    public final int zzrh() {
        return 7;
    }
}
