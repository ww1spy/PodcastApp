package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public abstract class zzcq<A extends Api.zzb, L> {
    private final zzci<L> zzgbb;

    protected zzcq(zzci<L> zzciVar) {
        this.zzgbb = zzciVar;
    }

    @Hide
    public final zzck<L> zzakx() {
        return this.zzgbb.zzakx();
    }

    public final void zzaky() {
        this.zzgbb.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public abstract void zzb(A a, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;
}
