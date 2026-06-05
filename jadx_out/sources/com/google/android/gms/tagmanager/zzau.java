package com.google.android.gms.tagmanager;

import java.util.List;

/* loaded from: classes.dex */
final class zzau implements Runnable {
    private /* synthetic */ List zzkox;
    private /* synthetic */ long zzkoy;
    private /* synthetic */ zzat zzkoz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzau(zzat zzatVar, List list, long j) {
        this.zzkoz = zzatVar;
        this.zzkox = list;
        this.zzkoy = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzkoz.zzb(this.zzkox, this.zzkoy);
    }
}
