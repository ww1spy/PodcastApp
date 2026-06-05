package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(19)
/* loaded from: classes.dex */
public class zzaiy extends zzaiw {
    @Override // com.google.android.gms.internal.zzaiw, com.google.android.gms.internal.zzaip
    public final boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.internal.zzaip
    public final ViewGroup.LayoutParams zzrj() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
