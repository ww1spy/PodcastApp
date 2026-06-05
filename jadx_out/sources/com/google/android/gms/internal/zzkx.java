package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.zzks;

/* loaded from: classes.dex */
final class zzkx extends zzks.zza<zzmh> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzks zzbis;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkx(zzks zzksVar, Context context) {
        super();
        this.zzbis = zzksVar;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzmh zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.getMobileAdsSettingsManagerWithClientJarVersion(com.google.android.gms.dynamic.zzn.zzz(this.val$context), com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzmh zzif() throws RemoteException {
        zznc zzncVar;
        zzncVar = this.zzbis.zzbik;
        zzmh zzg = zzncVar.zzg(this.val$context);
        if (zzg != null) {
            return zzg;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$context, "mobile_ads_settings");
        return new zznj();
    }
}
