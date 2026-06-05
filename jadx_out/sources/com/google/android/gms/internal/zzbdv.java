package com.google.android.gms.internal;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbdv implements Runnable {
    private /* synthetic */ String zzetf;
    private /* synthetic */ zzbdp zzfmz;
    private /* synthetic */ String zzfnd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdv(zzbdr zzbdrVar, zzbdp zzbdpVar, String str, String str2) {
        this.zzfmz = zzbdpVar;
        this.zzetf = str;
        this.zzfnd = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Map map2;
        Cast.MessageReceivedCallback messageReceivedCallback;
        zzbei zzbeiVar;
        CastDevice castDevice;
        map = this.zzfmz.zzfmd;
        synchronized (map) {
            map2 = this.zzfmz.zzfmd;
            messageReceivedCallback = (Cast.MessageReceivedCallback) map2.get(this.zzetf);
        }
        if (messageReceivedCallback != null) {
            castDevice = this.zzfmz.zzfar;
            messageReceivedCallback.onMessageReceived(castDevice, this.zzetf, this.zzfnd);
        } else {
            zzbeiVar = zzbdp.zzeus;
            zzbeiVar.zzb("Discarded message for unknown namespace '%s'", this.zzetf);
        }
    }
}
