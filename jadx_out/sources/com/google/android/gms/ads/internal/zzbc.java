package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;

/* loaded from: classes.dex */
final class zzbc implements Runnable {
    private /* synthetic */ zzahe zzant;
    private /* synthetic */ zzbb zzaro;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbc(zzbb zzbbVar, zzahe zzaheVar) {
        this.zzaro = zzbbVar;
        this.zzant = zzaheVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaro.zzb(new zzahd(this.zzant, null, null, null, null, null, null, null));
    }
}
