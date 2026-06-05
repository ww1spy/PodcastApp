package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.zzks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzkw extends zzks.zza<zzlo> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ String zzbiq;
    private /* synthetic */ zzwf zzbir;
    private /* synthetic */ zzks zzbis;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkw(zzks zzksVar, Context context, String str, zzwf zzwfVar) {
        super();
        this.zzbis = zzksVar;
        this.val$context = context;
        this.zzbiq = str;
        this.zzbir = zzwfVar;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzlo zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createAdLoaderBuilder(com.google.android.gms.dynamic.zzn.zzz(this.val$context), this.zzbiq, this.zzbir, com.google.android.gms.common.zzs.GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzlo zzif() throws RemoteException {
        zzki zzkiVar;
        zzkiVar = this.zzbis.zzbij;
        zzlo zza = zzkiVar.zza(this.val$context, this.zzbiq, this.zzbir);
        if (zza != null) {
            return zza;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$context, "native_ad");
        return new zznd();
    }
}
