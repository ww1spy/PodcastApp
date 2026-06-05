package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.zzks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzku extends zzks.zza<zzlt> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzko zzbip;
    private /* synthetic */ String zzbiq;
    private /* synthetic */ zzks zzbis;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzku(zzks zzksVar, Context context, zzko zzkoVar, String str) {
        super();
        this.zzbis = zzksVar;
        this.val$context = context;
        this.zzbip = zzkoVar;
        this.zzbiq = str;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzlt zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createSearchAdManager(com.google.android.gms.dynamic.zzn.zzz(this.val$context), this.zzbip, this.zzbiq, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzlt zzif() throws RemoteException {
        zzkj zzkjVar;
        zzkjVar = this.zzbis.zzbii;
        zzlt zza = zzkjVar.zza(this.val$context, this.zzbip, this.zzbiq, null, 3);
        if (zza != null) {
            return zza;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$context, "search");
        return new zznh();
    }
}
