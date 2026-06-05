package com.google.android.gms.iid;

import android.content.Intent;

/* loaded from: classes.dex */
final class zzc implements Runnable {
    private /* synthetic */ Intent val$intent;
    private /* synthetic */ Intent zzimg;
    private /* synthetic */ zzb zzimh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(zzb zzbVar, Intent intent, Intent intent2) {
        this.zzimh = zzbVar;
        this.val$intent = intent;
        this.zzimg = intent2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzimh.handleIntent(this.val$intent);
        this.zzimh.zzh(this.zzimg);
    }
}
