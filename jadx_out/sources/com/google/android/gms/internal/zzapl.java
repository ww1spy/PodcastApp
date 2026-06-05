package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.webkit.WebChromeClient;
import com.google.android.gms.common.internal.Hide;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzapl extends zzapc {
    public zzapl(zzaof zzaofVar) {
        super(zzaofVar);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        zza(view, i, customViewCallback);
    }
}
