package com.google.android.gms.internal;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzajg implements Runnable {
    private /* synthetic */ zzajc zzdgf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajg(zzajc zzajcVar) {
        this.zzdgf = zzajcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        String str;
        String str2;
        zzaji zzev = com.google.android.gms.ads.internal.zzbt.zzev();
        context = this.zzdgf.mContext;
        str = this.zzdgf.zzapp;
        str2 = this.zzdgf.zzavp;
        zzev.zzg(context, str, str2);
    }
}
