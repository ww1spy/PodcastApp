package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes.dex */
final class zzapg implements DialogInterface.OnCancelListener {
    private /* synthetic */ JsPromptResult zzdsd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapg(JsPromptResult jsPromptResult) {
        this.zzdsd = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.zzdsd.cancel();
    }
}
