package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Result;

/* loaded from: classes.dex */
public abstract class zzbct<R extends Result> extends zzbdf<R> {
    protected zzben zzezb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbct(com.google.android.gms.internal.zzbcl r1) {
        /*
            r0 = this;
            com.google.android.gms.common.api.GoogleApiClient r1 = com.google.android.gms.internal.zzbcl.zza(r1)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbct.<init>(com.google.android.gms.internal.zzbcl):void");
    }

    public abstract void execute();

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        execute();
    }
}
