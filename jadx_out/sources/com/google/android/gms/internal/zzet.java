package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzet implements Runnable {
    private /* synthetic */ zzes zzakx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzet(zzes zzesVar) {
        this.zzakx = zzesVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzakx.zzba();
    }
}
