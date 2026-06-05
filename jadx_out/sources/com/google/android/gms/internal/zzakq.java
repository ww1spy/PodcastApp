package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzakq extends Thread {
    private /* synthetic */ String zzcrd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakq(zzakp zzakpVar, String str) {
        this.zzcrd = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzakz().zzcp(this.zzcrd);
    }
}
