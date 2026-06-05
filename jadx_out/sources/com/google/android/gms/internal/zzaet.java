package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzaet implements Runnable {
    private /* synthetic */ zzahe zzant;
    private /* synthetic */ zzaer zzczx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaet(zzaer zzaerVar, zzahe zzaheVar) {
        this.zzczx = zzaerVar;
        this.zzant = zzaheVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzczx.zzb(new zzahd(this.zzant, null, null, null, null, null, null, null));
    }
}
