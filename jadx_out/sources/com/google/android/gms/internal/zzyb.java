package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzyb implements DialogInterface.OnClickListener {
    private /* synthetic */ zzya zzckx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyb(zzya zzyaVar) {
        this.zzckx = zzyaVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Intent createIntent = this.zzckx.createIntent();
        com.google.android.gms.ads.internal.zzbt.zzel();
        context = this.zzckx.mContext;
        zzaij.zza(context, createIntent);
    }
}
