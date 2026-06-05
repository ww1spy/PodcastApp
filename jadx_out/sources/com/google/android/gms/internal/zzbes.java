package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
final class zzbes extends zzbev {
    private /* synthetic */ zzbeq zzfor;
    private /* synthetic */ String zzfos;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbes(zzbeq zzbeqVar, GoogleApiClient googleApiClient, String str) {
        super(zzbeqVar, googleApiClient);
        this.zzfor = zzbeqVar;
        this.zzfos = str;
    }

    @Override // com.google.android.gms.internal.zzbev, com.google.android.gms.common.api.internal.zzm
    public final /* bridge */ /* synthetic */ void zza(zzbfa zzbfaVar) throws RemoteException {
        zza(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.zzbev
    /* renamed from: zza, reason: avoid collision after fix types in other method */
    public final void zza2(zzbfa zzbfaVar) throws RemoteException {
        zzbfg zzbfgVar;
        zzbew zzbewVar = new zzbew(this, zzbfaVar);
        zzbfgVar = this.zzfor.zzfoq;
        zzbfaVar.zza(zzbewVar, zzbfgVar, this.zzfos);
    }
}
