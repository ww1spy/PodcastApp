package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.internal.zzks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlb extends zzks.zza<zzyq> {
    private /* synthetic */ Activity val$activity;
    private /* synthetic */ zzks zzbis;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlb(zzks zzksVar, Activity activity) {
        super();
        this.zzbis = zzksVar;
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzyq zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createAdOverlay(com.google.android.gms.dynamic.zzn.zzz(this.val$activity));
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzyq zzif() throws RemoteException {
        zzyp zzypVar;
        zzypVar = this.zzbis.zzbin;
        zzyq zze = zzypVar.zze(this.val$activity);
        if (zze != null) {
            return zze;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$activity, "ad_overlay");
        return null;
    }
}
