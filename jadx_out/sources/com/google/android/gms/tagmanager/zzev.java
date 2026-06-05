package com.google.android.gms.tagmanager;

import android.content.Context;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzev implements zzew {
    private /* synthetic */ zzet zzksh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzev(zzet zzetVar) {
        this.zzksh = zzetVar;
    }

    @Override // com.google.android.gms.tagmanager.zzew
    public final zzes zza(zzal zzalVar) {
        Context context;
        String str;
        context = this.zzksh.mContext;
        str = this.zzksh.zzknc;
        return new zzes(context, str, zzalVar);
    }
}
