package com.google.android.gms.internal;

import android.view.View;

/* loaded from: classes.dex */
final class zzye implements View.OnClickListener {
    private /* synthetic */ zzyd zzcll;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzye(zzyd zzydVar) {
        this.zzcll = zzydVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzcll.zzm(true);
    }
}
