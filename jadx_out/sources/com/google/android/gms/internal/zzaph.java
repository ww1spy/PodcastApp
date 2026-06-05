package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes.dex */
final class zzaph implements DialogInterface.OnClickListener {
    private /* synthetic */ JsPromptResult zzdsd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaph(JsPromptResult jsPromptResult) {
        this.zzdsd = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdsd.cancel();
    }
}
