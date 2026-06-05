package com.google.android.gms.internal;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaim implements zzakr {
    private /* synthetic */ Context val$context;
    private /* synthetic */ String zzdfw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaim(zzaij zzaijVar, Context context, String str) {
        this.val$context = context;
        this.zzdfw = str;
    }

    @Override // com.google.android.gms.internal.zzakr
    public final void zzcp(String str) {
        com.google.android.gms.ads.internal.zzbt.zzel();
        zzaij.zze(this.val$context, this.zzdfw, str);
    }
}
