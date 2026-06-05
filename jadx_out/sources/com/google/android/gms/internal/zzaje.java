package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaje implements DialogInterface.OnClickListener {
    private /* synthetic */ zzajc zzdgf;
    private /* synthetic */ String zzdgg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaje(zzajc zzajcVar, String str) {
        this.zzdgf = zzajcVar;
        this.zzdgg = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        com.google.android.gms.ads.internal.zzbt.zzel();
        context = this.zzdgf.mContext;
        zzaij.zza(context, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", this.zzdgg), "Share via"));
    }
}
