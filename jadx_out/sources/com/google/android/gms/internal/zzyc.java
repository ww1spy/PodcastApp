package com.google.android.gms.internal;

import android.content.DialogInterface;

/* loaded from: classes.dex */
final class zzyc implements DialogInterface.OnClickListener {
    private /* synthetic */ zzya zzckx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyc(zzya zzyaVar) {
        this.zzckx = zzyaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzckx.zzbm("Operation denied by user.");
    }
}
