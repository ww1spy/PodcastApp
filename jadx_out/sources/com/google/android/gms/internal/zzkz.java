package com.google.android.gms.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.zzks;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzkz extends zzks.zza<zzrb> {
    private /* synthetic */ zzks zzbis;
    private /* synthetic */ View zzbiv;
    private /* synthetic */ HashMap zzbiw;
    private /* synthetic */ HashMap zzbix;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkz(zzks zzksVar, View view, HashMap hashMap, HashMap hashMap2) {
        super();
        this.zzbis = zzksVar;
        this.zzbiv = view;
        this.zzbiw = hashMap;
        this.zzbix = hashMap2;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzrb zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createNativeAdViewHolderDelegate(com.google.android.gms.dynamic.zzn.zzz(this.zzbiv), com.google.android.gms.dynamic.zzn.zzz(this.zzbiw), com.google.android.gms.dynamic.zzn.zzz(this.zzbix));
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzrb zzif() throws RemoteException {
        zzsp zzspVar;
        zzspVar = this.zzbis.zzbio;
        zzrb zzb = zzspVar.zzb(this.zzbiv, this.zzbiw, this.zzbix);
        if (zzb != null) {
            return zzb;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.zzbiv.getContext(), "native_ad_view_holder_delegate");
        return new zznl();
    }
}
