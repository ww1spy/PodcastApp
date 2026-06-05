package com.google.android.gms.common.internal;

import android.support.annotation.NonNull;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;

@Hide
/* loaded from: classes.dex */
public final class zzam {

    @NonNull
    private final String mPackageName;

    @NonNull
    private final String zzghk;
    private final boolean zzghl = false;
    private final int zzggv = NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED;

    public zzam(@NonNull String str, @NonNull String str2, boolean z, int i) {
        this.mPackageName = str;
        this.zzghk = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public final String getPackageName() {
        return this.mPackageName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzamu() {
        return this.zzggv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public final String zzamx() {
        return this.zzghk;
    }
}
