package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzahd;

/* loaded from: classes.dex */
final class zzm implements Runnable {
    private /* synthetic */ zzl zzaoc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(zzl zzlVar) {
        this.zzaoc = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaoc.zzanz.zzb(new zzahd(this.zzaoc.zzant, null, null, null, null, null, null, null));
    }
}
