package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.zzks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzkt extends zzks.zza<zzlt> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzko zzbip;
    private /* synthetic */ String zzbiq;
    private /* synthetic */ zzwf zzbir;
    private /* synthetic */ zzks zzbis;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkt(zzks zzksVar, Context context, zzko zzkoVar, String str, zzwf zzwfVar) {
        super();
        this.zzbis = zzksVar;
        this.val$context = context;
        this.zzbip = zzkoVar;
        this.zzbiq = str;
        this.zzbir = zzwfVar;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzlt zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createBannerAdManager(com.google.android.gms.dynamic.zzn.zzz(this.val$context), this.zzbip, this.zzbiq, this.zzbir, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzlt zzif() throws RemoteException {
        zzkj zzkjVar;
        zzkjVar = this.zzbis.zzbii;
        zzlt zza = zzkjVar.zza(this.val$context, this.zzbip, this.zzbiq, this.zzbir, 1);
        if (zza != null) {
            return zza;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$context, "banner");
        return new zznh();
    }
}
