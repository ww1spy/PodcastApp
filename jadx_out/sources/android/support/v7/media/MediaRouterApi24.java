package android.support.v7.media;

import android.media.MediaRouter;
import android.support.annotation.RequiresApi;

@RequiresApi(24)
/* loaded from: classes.dex */
final class MediaRouterApi24 {
    MediaRouterApi24() {
    }

    /* loaded from: classes.dex */
    public static final class RouteInfo {
        public static int getDeviceType(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getDeviceType();
        }
    }
}
