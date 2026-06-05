package com.google.android.gms.tagmanager;

import android.text.TextUtils;

/* loaded from: classes.dex */
final class zzbx {
    private final long zzedk;
    private final long zzkpu;
    private final long zzkpv;
    private String zzkpw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbx(long j, long j2, long j3) {
        this.zzkpu = j;
        this.zzedk = j2;
        this.zzkpv = j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzbgr() {
        return this.zzkpu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzbgs() {
        return this.zzkpv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzbgt() {
        return this.zzkpw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlv(String str) {
        if (str == null || TextUtils.isEmpty(str.trim())) {
            return;
        }
        this.zzkpw = str;
    }
}
