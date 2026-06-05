package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.zzks;

/* loaded from: classes.dex */
final class zzla extends zzks.zza<zzaex> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzwf zzbir;
    private /* synthetic */ zzks zzbis;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzla(zzks zzksVar, Context context, zzwf zzwfVar) {
        super();
        this.zzbis = zzksVar;
        this.val$context = context;
        this.zzbir = zzwfVar;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzaex zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createRewardedVideoAd(com.google.android.gms.dynamic.zzn.zzz(this.val$context), this.zzbir, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzaex zzif() throws RemoteException {
        zzafg zzafgVar;
        zzafgVar = this.zzbis.zzbim;
        zzaex zza = zzafgVar.zza(this.val$context, this.zzbir);
        if (zza != null) {
            return zza;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$context, "rewarded_video");
        return new zznm();
    }
}
