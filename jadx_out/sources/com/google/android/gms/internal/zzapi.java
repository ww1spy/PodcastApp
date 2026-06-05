package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* loaded from: classes.dex */
final class zzapi implements DialogInterface.OnClickListener {
    private /* synthetic */ JsPromptResult zzdsd;
    private /* synthetic */ EditText zzdse;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzapi(JsPromptResult jsPromptResult, EditText editText) {
        this.zzdsd = jsPromptResult;
        this.zzdse = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdsd.confirm(this.zzdse.getText().toString());
    }
}
