package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.net.Uri;

/* loaded from: classes.dex */
final class zzajk implements DialogInterface.OnClickListener {
    private /* synthetic */ zzajj zzdgo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajk(zzajj zzajjVar) {
        this.zzdgo = zzajjVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzbt.zzel();
        zzaij.zza(this.zzdgo.val$context, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
