package com.google.android.gms.cast;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbea;

/* loaded from: classes.dex */
final class zzl extends zzbea {
    private /* synthetic */ String val$sessionId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzl(Cast.CastApi.zza zzaVar, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient);
        this.val$sessionId = str;
    }

    @Override // com.google.android.gms.internal.zzbea, com.google.android.gms.common.api.internal.zzm
    public final /* bridge */ /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        zza(zzbdpVar);
    }

    @Override // com.google.android.gms.internal.zzbea
    /* renamed from: zza, reason: avoid collision after fix types in other method */
    public final void zza2(zzbdp zzbdpVar) throws RemoteException {
        if (TextUtils.isEmpty(this.val$sessionId)) {
            setResult((zzl) zzb(new Status(CastStatusCodes.INVALID_REQUEST, "IllegalArgument: sessionId cannot be null or empty", null)));
            return;
        }
        try {
            zzbdpVar.zza(this.val$sessionId, this);
        } catch (IllegalStateException unused) {
            zzbj(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
