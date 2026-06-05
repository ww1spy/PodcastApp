package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaht implements Runnable {
    private /* synthetic */ zzahs zzdes;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaht(zzahs zzahsVar) {
        this.zzdes = zzahsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdes.zzdeq = Thread.currentThread();
        this.zzdes.zzdo();
    }
}
