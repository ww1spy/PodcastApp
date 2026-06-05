package com.google.android.gms.internal;

import android.content.ComponentName;

/* loaded from: classes.dex */
final class zzars implements Runnable {
    private /* synthetic */ ComponentName val$name;
    private /* synthetic */ zzarq zzdzu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzars(zzarq zzarqVar, ComponentName componentName) {
        this.zzdzu = zzarqVar;
        this.val$name = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdzu.zzdzq.onServiceDisconnected(this.val$name);
    }
}
