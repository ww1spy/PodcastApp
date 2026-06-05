package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzus {
    private static zzus zzcen = new zzus();
    private int zzceo;
    private int zzcep;
    private int zzceq;
    private int zzcer;
    private int zzces;

    public static zzus zzln() {
        return zzcen;
    }

    public final Bundle asBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("ipl", this.zzceo);
        bundle.putInt("ipds", this.zzcep);
        bundle.putInt("ipde", this.zzceq);
        bundle.putInt("iph", this.zzcer);
        bundle.putInt("ipm", this.zzces);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlo() {
        this.zzcep++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlp() {
        this.zzceq++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlq() {
        this.zzcer++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlr() {
        this.zzces++;
    }

    public final int zzls() {
        return this.zzcep;
    }

    public final int zzlt() {
        return this.zzceq;
    }

    public final int zzlu() {
        return this.zzcer;
    }

    public final int zzlv() {
        return this.zzces;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzu(int i) {
        this.zzceo += i;
    }
}
