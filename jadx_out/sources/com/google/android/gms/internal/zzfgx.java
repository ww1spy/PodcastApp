package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfgx {
    private final byte[] buffer;
    private final zzfhg zzpob;

    private zzfgx(int i) {
        this.buffer = new byte[i];
        this.zzpob = zzfhg.zzbc(this.buffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfgx(int i, zzfgt zzfgtVar) {
        this(i);
    }

    public final zzfgs zzcxv() {
        this.zzpob.zzcyx();
        return new zzfgz(this.buffer);
    }

    public final zzfhg zzcxw() {
        return this.zzpob;
    }
}
