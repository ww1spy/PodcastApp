package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzarz implements Runnable {
    private /* synthetic */ zzarw zzeal;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarz(zzarw zzarwVar) {
        this.zzeal = zzarwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeal.zzze();
    }
}
