package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes.dex */
final class zzapd implements DialogInterface.OnCancelListener {
    private /* synthetic */ JsResult zzdsc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapd(JsResult jsResult) {
        this.zzdsc = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zzdsc.cancel();
    }
}
