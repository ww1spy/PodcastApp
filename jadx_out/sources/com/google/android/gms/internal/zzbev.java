package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzbev extends com.google.android.gms.common.api.internal.zzm<CastRemoteDisplay.CastRemoteDisplaySessionResult, zzbfa> {
    final /* synthetic */ zzbeq zzfor;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbev(com.google.android.gms.internal.zzbeq r1, com.google.android.gms.common.api.GoogleApiClient r2) {
        /*
            r0 = this;
            r0.zzfor = r1
            com.google.android.gms.common.api.Api r1 = com.google.android.gms.internal.zzbeq.zzc(r1)
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbev.<init>(com.google.android.gms.internal.zzbeq, com.google.android.gms.common.api.GoogleApiClient):void");
    }

    @Override // com.google.android.gms.common.api.internal.zzm, com.google.android.gms.common.api.internal.zzn
    @Hide
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zzbev) obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.api.internal.zzm
    public void zza(zzbfa zzbfaVar) throws RemoteException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result zzb(Status status) {
        return new zzbey(status);
    }
}
