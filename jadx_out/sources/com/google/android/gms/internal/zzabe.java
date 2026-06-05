package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzabe implements Runnable {
    private /* synthetic */ zzakz zzcrc;
    private /* synthetic */ String zzcrd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabe(zzabb zzabbVar, zzakz zzakzVar, String str) {
        this.zzcrc = zzakzVar;
        this.zzcrd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcrc.zzcp(this.zzcrd);
    }
}
