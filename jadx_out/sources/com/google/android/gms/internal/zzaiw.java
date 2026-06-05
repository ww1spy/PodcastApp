package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;

@TargetApi(18)
/* loaded from: classes.dex */
public class zzaiw extends zzaiv {
    @Override // com.google.android.gms.internal.zzaip
    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.internal.zzaip
    public final int zzri() {
        return 14;
    }
}
