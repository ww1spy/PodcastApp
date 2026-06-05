package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* loaded from: classes.dex */
final class zzch implements Runnable {
    private /* synthetic */ String zzas;
    private /* synthetic */ LifecycleCallback zzgaq;
    private /* synthetic */ zzcg zzgar;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzch(zzcg zzcgVar, LifecycleCallback lifecycleCallback, String str) {
        this.zzgar = zzcgVar;
        this.zzgaq = lifecycleCallback;
        this.zzas = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i = this.zzgar.zzcfl;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.zzgaq;
            bundle = this.zzgar.zzgap;
            if (bundle != null) {
                bundle3 = this.zzgar.zzgap;
                bundle2 = bundle3.getBundle(this.zzas);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i2 = this.zzgar.zzcfl;
        if (i2 >= 2) {
            this.zzgaq.onStart();
        }
        i3 = this.zzgar.zzcfl;
        if (i3 >= 3) {
            this.zzgaq.onResume();
        }
        i4 = this.zzgar.zzcfl;
        if (i4 >= 4) {
            this.zzgaq.onStop();
        }
        i5 = this.zzgar.zzcfl;
        if (i5 >= 5) {
            this.zzgaq.onDestroy();
        }
    }
}
