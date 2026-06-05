package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzdkf;

/* loaded from: classes.dex */
final class zzfa implements Runnable {
    private /* synthetic */ zzey zzksi;
    private /* synthetic */ zzdkf zzksj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfa(zzey zzeyVar, zzdkf zzdkfVar) {
        this.zzksi = zzeyVar;
        this.zzksj = zzdkfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzksi.zzb(this.zzksj);
    }
}
