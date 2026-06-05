package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzajj implements Runnable {
    final /* synthetic */ Context val$context;
    private /* synthetic */ String zzdgl;
    private /* synthetic */ boolean zzdgm;
    private /* synthetic */ boolean zzdgn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajj(zzaji zzajiVar, Context context, String str, boolean z, boolean z2) {
        this.val$context = context;
        this.zzdgl = str;
        this.zzdgm = z;
        this.zzdgn = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.val$context);
        builder.setMessage(this.zzdgl);
        builder.setTitle(this.zzdgm ? "Error" : "Info");
        if (this.zzdgn) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new zzajk(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
