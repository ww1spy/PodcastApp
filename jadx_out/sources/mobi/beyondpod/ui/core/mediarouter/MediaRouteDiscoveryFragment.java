package mobi.beyondpod.ui.core.mediarouter;

import android.support.v7.media.MediaRouter;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.impl.ChromecastDevice;

/* loaded from: classes.dex */
public class MediaRouteDiscoveryFragment extends android.support.v7.app.MediaRouteDiscoveryFragment {
    public static final String DISCOVERY_FRAGMENT_TAG = "DiscoveryFragment";
    private static final String TAG = "MediaRouteDiscoveryFragment";
    IDiscoveryFragmentOwner _Owner;

    /* loaded from: classes.dex */
    public interface IDiscoveryFragmentOwner {
        void onCastDeviceDetected();

        void onConnectedToDevice(String str);

        void onConnectionRefused();

        void onDisconnectFromDevice();

        void onIncompatiblePlayServices();
    }

    public void setOwner(IDiscoveryFragmentOwner iDiscoveryFragmentOwner) {
        this._Owner = iDiscoveryFragmentOwner;
    }

    @Override // android.support.v7.app.MediaRouteDiscoveryFragment
    public MediaRouter.Callback onCreateCallback() {
        return new MediaRouter.Callback() { // from class: mobi.beyondpod.ui.core.mediarouter.MediaRouteDiscoveryFragment.1
            @Override // android.support.v7.media.MediaRouter.Callback
            public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "onRouteAdded: route=" + routeInfo);
                if (routeInfo.supportsControlCategory(ChromecastDevice.castControlCategory()) && MediaRouteDiscoveryFragment.this._Owner != null) {
                    MediaRouteDiscoveryFragment.this._Owner.onCastDeviceDetected();
                }
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onRouteSelected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "Media Route Selected: route=" + routeInfo);
                if (routeInfo.supportsControlCategory(ChromecastDevice.castControlCategory())) {
                    if (!ChromecastDevice.checkGooglePlayServices(MediaRouteDiscoveryFragment.this.getActivity(), false)) {
                        CoreHelper.writeTraceEntry(MediaRouteDiscoveryFragment.TAG, "device is not running a required version of Google Play Services! Please update from Google Play store");
                        if (MediaRouteDiscoveryFragment.this._Owner != null) {
                            MediaRouteDiscoveryFragment.this._Owner.onIncompatiblePlayServices();
                            return;
                        }
                        return;
                    }
                    try {
                        if (BeyondPodApplication.getInstance().chromecastDevice().connectToDevice(routeInfo.getId())) {
                            if (MediaRouteDiscoveryFragment.this._Owner != null) {
                                MediaRouteDiscoveryFragment.this._Owner.onConnectedToDevice(routeInfo.getName());
                            }
                        } else {
                            CoreHelper.writeTraceEntry(MediaRouteDiscoveryFragment.TAG, "Selected route is not a CAST route (probably bluetooth device)! Nothing to do!");
                        }
                    } catch (IllegalAccessException unused) {
                        if (MediaRouteDiscoveryFragment.this._Owner != null) {
                            MediaRouteDiscoveryFragment.this._Owner.onConnectionRefused();
                        }
                    }
                }
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onRouteUnselected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "Media Route Unselected: route=" + routeInfo);
                if (!BeyondPodApplication.getInstance().chromecastDevice().disconnectFromDevice() || MediaRouteDiscoveryFragment.this._Owner == null) {
                    return;
                }
                MediaRouteDiscoveryFragment.this._Owner.onDisconnectFromDevice();
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "onRouteVolumeChanged: route=" + routeInfo);
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "onRoutePresentationDisplayChanged: route=" + routeInfo);
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onProviderAdded(MediaRouter mediaRouter, MediaRouter.ProviderInfo providerInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "onRouteProviderAdded: provider=" + providerInfo);
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onProviderRemoved(MediaRouter mediaRouter, MediaRouter.ProviderInfo providerInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "onRouteProviderRemoved: provider=" + providerInfo);
            }

            @Override // android.support.v7.media.MediaRouter.Callback
            public void onProviderChanged(MediaRouter mediaRouter, MediaRouter.ProviderInfo providerInfo) {
                CoreHelper.writeTraceEntryInDebug(MediaRouteDiscoveryFragment.TAG, "onRouteProviderChanged: provider=" + providerInfo);
            }
        };
    }

    @Override // android.support.v7.app.MediaRouteDiscoveryFragment
    public int onPrepareCallbackFlags() {
        return super.onPrepareCallbackFlags() | 2;
    }
}
