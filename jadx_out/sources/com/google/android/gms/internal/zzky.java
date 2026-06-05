package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.internal.zzks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzky extends zzks.zza<zzqw> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzks zzbis;
    private /* synthetic */ FrameLayout zzbit;
    private /* synthetic */ FrameLayout zzbiu;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzky(zzks zzksVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        super();
        this.zzbis = zzksVar;
        this.zzbit = frameLayout;
        this.zzbiu = frameLayout2;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzqw zza(zzmb zzmbVar) throws RemoteException {
        return zzmbVar.createNativeAdViewDelegate(com.google.android.gms.dynamic.zzn.zzz(this.zzbit), com.google.android.gms.dynamic.zzn.zzz(this.zzbiu));
    }

    @Override // com.google.android.gms.internal.zzks.zza
    public final /* synthetic */ zzqw zzif() throws RemoteException {
        zzso zzsoVar;
        zzsoVar = this.zzbis.zzbil;
        zzqw zzb = zzsoVar.zzb(this.val$context, this.zzbit, this.zzbiu);
        if (zzb != null) {
            return zzb;
        }
        zzks zzksVar = this.zzbis;
        zzks.zza(this.val$context, "native_ad_view_delegate");
        return new zznk();
    }
}
