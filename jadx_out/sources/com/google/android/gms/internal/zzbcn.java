package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;

/* loaded from: classes.dex */
final class zzbcn implements Cast.MessageReceivedCallback {
    private /* synthetic */ zzbcm zzfku;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbcn(zzbcm zzbcmVar) {
        this.zzfku = zzbcmVar;
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public final void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzfku.zzfkt.zzfu(str2);
    }
}
