package com.google.android.gms.cast;

import android.support.v7.media.MediaRouter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzu extends MediaRouter.Callback {
    private /* synthetic */ CastRemoteDisplayLocalService zzevk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzevk = castRemoteDisplayLocalService;
    }

    @Override // android.support.v7.media.MediaRouter.Callback
    public final void onRouteUnselected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        CastDevice castDevice;
        CastDevice castDevice2;
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        String str;
        this.zzevk.zzeb("onRouteUnselected");
        castDevice = this.zzevk.zzevb;
        if (castDevice == null) {
            castRemoteDisplayLocalService = this.zzevk;
            str = "onRouteUnselected, no device was selected";
        } else {
            String deviceId = CastDevice.getFromBundle(routeInfo.getExtras()).getDeviceId();
            castDevice2 = this.zzevk.zzevb;
            if (deviceId.equals(castDevice2.getDeviceId())) {
                CastRemoteDisplayLocalService.stopService();
                return;
            } else {
                castRemoteDisplayLocalService = this.zzevk;
                str = "onRouteUnselected, device does not match";
            }
        }
        castRemoteDisplayLocalService.zzeb(str);
    }
}
