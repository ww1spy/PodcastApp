package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes.dex */
final class zzape implements DialogInterface.OnClickListener {
    private /* synthetic */ JsResult zzdsc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzape(JsResult jsResult) {
        this.zzdsc = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdsc.cancel();
    }
}
