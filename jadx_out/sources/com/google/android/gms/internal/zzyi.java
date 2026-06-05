package com.google.android.gms.internal;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class zzyi implements DialogInterface.OnClickListener {
    private /* synthetic */ zzyg zzclq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyi(zzyg zzygVar) {
        this.zzclq = zzygVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzclq.zzbm("User canceled the download.");
    }
}
