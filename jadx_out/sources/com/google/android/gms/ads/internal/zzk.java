package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzk implements Runnable {
    private /* synthetic */ zzahe zzant;
    private /* synthetic */ zzi zzanz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(zzi zziVar, zzahe zzaheVar) {
        this.zzanz = zziVar;
        this.zzant = zzaheVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzanz.zzb(new zzahd(this.zzant, null, null, null, null, null, null, null));
    }
}
