package mobi.beyondpod.services.player.impl;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.util.Log;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import java.io.IOException;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ChromecastDevice {
    public static final String APPLICATION_ID_DEV = "BBC4E9EF";
    public static final String APPLICATION_ID_PROD = "D1B83C8C";
    public static final String APPLICATION_ID_TEST = "6F001398";
    public static final int CC_SDK_LEVEL = 3;
    private static final String TAG = "chromecastDevice";
    private static final double VOLUME_INCREMENT = 0.05d;
    private ApplicationMetadata _AppMetadata;
    private GoogleApiClient _CastClient;
    private Cast.Listener _CastDeviceControllerListener;
    private ConnectionCallbacks _ConnectionCallbacks;
    private ConnectionFailedListener _ConnectionFailedListener;
    private MediaControlChannel _MediaControlChannel;
    private MediaFeedbackChannel _MediaFeedbackChannel;
    private MediaRouteSelector _MediaRouteSelector;
    private MediaRouter _MediaRouter;
    private CastMediaRouterCallback _MediaRouterCallback;
    private Object _RemoteControlClient;
    private CastDevice _SelectedDevice;
    private String _ChromecastSessionID = null;
    private int _NumAvailableDevices = 0;

    public boolean disconnectFromDevice() {
        return true;
    }

    static /* synthetic */ int access$1408(ChromecastDevice chromecastDevice) {
        int i = chromecastDevice._NumAvailableDevices;
        chromecastDevice._NumAvailableDevices = i + 1;
        return i;
    }

    static /* synthetic */ int access$1410(ChromecastDevice chromecastDevice) {
        int i = chromecastDevice._NumAvailableDevices;
        chromecastDevice._NumAvailableDevices = i - 1;
        return i;
    }

    public ChromecastDevice(Context context) {
        this._MediaRouter = MediaRouter.getInstance(context);
        this._ConnectionCallbacks = new ConnectionCallbacks();
        this._ConnectionFailedListener = new ConnectionFailedListener();
        this._CastDeviceControllerListener = new CastDeviceControllerListener();
        MediaRouteSelector.Builder builder = new MediaRouteSelector.Builder();
        builder.addControlCategory(CastMediaControlIntent.categoryForCast(appId()));
        this._MediaRouteSelector = builder.build();
        this._MediaRouterCallback = new CastMediaRouterCallback();
        this._MediaRouter.addCallback(this._MediaRouteSelector, this._MediaRouterCallback, 1);
    }

    public static String castControlCategory() {
        return CastMediaControlIntent.categoryForCast(appId());
    }

    private static String appId() {
        return Configuration.DBGChromecastEnvironment() == 0 ? APPLICATION_ID_PROD : APPLICATION_ID_DEV;
    }

    public MediaRouteSelector getRouteSelector() {
        return this._MediaRouteSelector;
    }

    public boolean adjustVolume(int i) {
        if (!hasDeviceConnection()) {
            return false;
        }
        double volume = Cast.CastApi.getVolume(this._CastClient);
        double d = (i * VOLUME_INCREMENT) + volume;
        CoreHelper.writeTraceEntry(TAG, "Setting volume from " + volume + " to " + d);
        onSetVolume(d);
        return true;
    }

    private void onSetVolume(double d) {
        try {
            if (this._CastClient != null) {
                Cast.CastApi.setVolume(this._CastClient, d);
            }
        } catch (IOException | IllegalStateException e) {
            CoreHelper.logException(TAG, "Problem sending Set Volume", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasDeviceConnection() {
        return (this._SelectedDevice == null || this._CastClient == null || !this._CastClient.isConnected() || this._MediaControlChannel == null || this._MediaFeedbackChannel == null) ? false : true;
    }

    public static boolean isConnected() {
        return BeyondPodApplication.getInstance().chromecastDevice().hasDeviceConnection();
    }

    public static void disconnect() {
        if (isConnected()) {
            BeyondPodApplication.getInstance().chromecastDevice().switchToDefaultRoute();
        }
    }

    public int getAvailableDeviceCount() {
        return this._NumAvailableDevices;
    }

    public static boolean hasAvailableDevices() {
        return BeyondPodApplication.getInstance().chromecastDevice().getAvailableDeviceCount() > 0;
    }

    public String connectedDeviceName() {
        return !hasDeviceConnection() ? "" : this._MediaRouter.getSelectedRoute().getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaControlChannel getMediaControlChannel() {
        return this._MediaControlChannel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaFeedbackChannel getMediaFeedbackChannel() {
        return this._MediaFeedbackChannel;
    }

    public boolean connectToDevice(String str) throws IllegalAccessException {
        if (PolicyManager.ifChromecastRestricted()) {
            throw new IllegalAccessException();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectToDeviceInternal(CastDevice castDevice) {
        if (PolicyManager.ifChromecastRestricted()) {
            CoreHelper.writeTraceEntry(TAG, "Found cast device, but we are in Restricted mode. Ignoring...");
            return;
        }
        this._SelectedDevice = castDevice;
        CoreHelper.writeTraceEntry(TAG, "Found cast device: " + this._SelectedDevice);
        CoreHelper.writeTraceEntry(TAG, "Acquiring controller for it...");
        try {
            this._CastClient = new GoogleApiClient.Builder(BeyondPodApplication.getInstance().getApplicationContext()).addApi(Cast.API, Cast.CastOptions.builder(this._SelectedDevice, this._CastDeviceControllerListener).build()).addConnectionCallbacks(this._ConnectionCallbacks).addOnConnectionFailedListener(this._ConnectionFailedListener).build();
            this._CastClient.connect();
        } catch (IllegalStateException e) {
            CoreHelper.writeTraceEntry(TAG, "Error while creating a device controller: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectFromDeviceInternal() {
        boolean z = hasDeviceConnection() || this._CastClient != null;
        CoreHelper.writeTraceEntry(TAG, "Trying to disconnect from Chromecast device... (was connected: " + z + ")");
        try {
            if (this._CastClient != null) {
                if (this._CastClient.isConnected()) {
                    Cast.CastApi.stopApplication(this._CastClient, this._ChromecastSessionID);
                }
                detachMediaChannel();
                detachFeedbackChannel();
                if (this._CastClient != null && this._CastClient.isConnected()) {
                    this._CastClient.disconnect();
                }
            } else {
                CoreHelper.writeTraceEntry(TAG, "device appears to be already disconnected...");
            }
        } catch (Exception e) {
            CoreHelper.writeTraceErrorInDebug(TAG, "failed to disconnect from device! " + e.getMessage());
        }
        this._MediaFeedbackChannel = null;
        this._MediaControlChannel = null;
        this._CastClient = null;
        this._SelectedDevice = null;
        this._AppMetadata = null;
        this._ChromecastSessionID = null;
        if (z) {
            CommandManagerBase.cmdSwitchPlayerForCurrentTrack(false);
        }
    }

    public void switchToDefaultRoute() {
        CoreHelper.writeTraceEntry(TAG, "Switching to default route...");
        this._MediaRouter.getDefaultRoute().select();
        CommandManagerBase.cmdSwitchPlayerForCurrentTrack(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detachMediaChannel() {
        if (this._MediaControlChannel != null) {
            if (this._CastClient != null) {
                try {
                    Cast.CastApi.removeMessageReceivedCallbacks(this._CastClient, this._MediaControlChannel.getNamespace());
                } catch (IOException unused) {
                    CoreHelper.writeTraceEntry(TAG, "Unabe to remove Media Control Channel callbacks");
                }
            }
            this._MediaControlChannel.release();
            this._MediaControlChannel = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detachFeedbackChannel() {
        if (this._MediaFeedbackChannel != null) {
            if (this._CastClient != null) {
                try {
                    Cast.CastApi.removeMessageReceivedCallbacks(this._CastClient, this._MediaFeedbackChannel.getNamespace());
                } catch (IOException unused) {
                    CoreHelper.writeTraceEntry(TAG, "Unabe to remove Media Feedback Channel callbacks");
                }
            }
            this._MediaFeedbackChannel = null;
        }
    }

    /* loaded from: classes.dex */
    private class CastDeviceControllerListener extends Cast.Listener {
        private CastDeviceControllerListener() {
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onVolumeChanged() {
            if (ChromecastDevice.this.hasDeviceConnection()) {
                CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Application Volume Changed");
            }
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onApplicationStatusChanged() {
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Application status Changed");
        }

        @Override // com.google.android.gms.cast.Cast.Listener
        public void onApplicationDisconnected(int i) {
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Application has stopped");
            ChromecastDevice.this._AppMetadata = null;
            ChromecastDevice.this.detachMediaChannel();
            ChromecastDevice.this.detachFeedbackChannel();
            ChromecastDevice.this.switchToDefaultRoute();
            ChromecastDevice.this.removeRemoteControlClient();
            ChromecastDevice.this.setMediaSession(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ConnectionCallbacks implements GoogleApiClient.ConnectionCallbacks {
        private ConnectionCallbacks() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            if (ChromecastDevice.this._CastClient == null) {
                return;
            }
            try {
                try {
                    Cast.CastApi.requestStatus(ChromecastDevice.this._CastClient);
                    String str = Configuration.DBGChromecastEnvironment() == 0 ? ChromecastDevice.APPLICATION_ID_PROD : ChromecastDevice.APPLICATION_ID_DEV;
                    CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "device controller connected! Launching receiver application..." + str);
                    LaunchOptions launchOptions = new LaunchOptions();
                    launchOptions.setRelaunchIfRunning(true);
                    Cast.CastApi.launchApplication(ChromecastDevice.this._CastClient, str, launchOptions).setResultCallback(new ResultCallback<Cast.ApplicationConnectionResult>() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.ConnectionCallbacks.1
                        @Override // com.google.android.gms.common.api.ResultCallback
                        public void onResult(Cast.ApplicationConnectionResult applicationConnectionResult) {
                            if (applicationConnectionResult.getStatus().isSuccess()) {
                                CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Receiver application launched: " + applicationConnectionResult.getApplicationStatus());
                                ChromecastDevice.this.detachMediaChannel();
                                ChromecastDevice.this.detachFeedbackChannel();
                                ChromecastDevice.this._ChromecastSessionID = applicationConnectionResult.getSessionId();
                                try {
                                    ChromecastDevice.this._AppMetadata = applicationConnectionResult.getApplicationMetadata();
                                    ChromecastDevice.this._MediaControlChannel = new MediaControlChannel(ChromecastDevice.this._CastClient);
                                    Cast.CastApi.setMessageReceivedCallbacks(ChromecastDevice.this._CastClient, ChromecastDevice.this._MediaControlChannel.getNamespace(), ChromecastDevice.this._MediaControlChannel);
                                    ChromecastDevice.this._MediaFeedbackChannel = new MediaFeedbackChannel();
                                    Cast.CastApi.setMessageReceivedCallbacks(ChromecastDevice.this._CastClient, ChromecastDevice.this._MediaFeedbackChannel.getNamespace(), ChromecastDevice.this._MediaFeedbackChannel);
                                    ChromecastDevice.this._MediaControlChannel.requestStatus(ChromecastDevice.this._CastClient);
                                    CommandManagerBase.cmdSwitchPlayerForCurrentTrack(false);
                                    return;
                                } catch (IOException e) {
                                    Log.w(ChromecastDevice.TAG, "Unable to request status", e);
                                    return;
                                }
                            }
                            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Receiver application launch failed! " + applicationConnectionResult);
                        }
                    });
                } catch (IllegalStateException e) {
                    if (!ChromecastDevice.isConnected()) {
                        CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "onConnected() called but device not connected.");
                        return;
                    }
                    throw e;
                }
            } catch (Exception e2) {
                CoreHelper.logException(ChromecastDevice.TAG, "Error requesting status!", e2);
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "device controller disconnected!");
            ChromecastDevice.this.detachMediaChannel();
            ChromecastDevice.this.detachFeedbackChannel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ConnectionFailedListener implements GoogleApiClient.OnConnectionFailedListener {
        private ConnectionFailedListener() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Connection failed!");
            ChromecastDevice.this.switchToDefaultRoute();
        }
    }

    /* loaded from: classes.dex */
    private class CastMediaRouterCallback extends MediaRouter.Callback {
        private CastMediaRouterCallback() {
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteSelected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            ChromecastDevice.this.connectToDeviceInternal(CastDevice.getFromBundle(routeInfo.getExtras()));
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            ChromecastDevice.this.disconnectFromDeviceInternal();
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            ChromecastDevice.access$1408(ChromecastDevice.this);
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Chromecast device detected! Devices: " + ChromecastDevice.this._NumAvailableDevices);
        }

        @Override // android.support.v7.media.MediaRouter.Callback
        public void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            ChromecastDevice.access$1410(ChromecastDevice.this);
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Chromecast device disappeared! Devices: " + ChromecastDevice.this._NumAvailableDevices);
        }
    }

    public void addRemoteControlClient(Object obj) {
        this._RemoteControlClient = obj;
        this._MediaRouter.addRemoteControlClient(obj);
    }

    public void removeRemoteControlClient() {
        if (this._RemoteControlClient != null) {
            this._MediaRouter.removeRemoteControlClient(this._RemoteControlClient);
        }
    }

    public void setMediaSession(Object obj) {
        if (this._MediaRouter != null) {
            this._MediaRouter.setMediaSession(obj);
        }
    }

    /* loaded from: classes.dex */
    public static class MediaControlChannel extends RemoteMediaPlayer {
        StreamNotificationListener _NotificationListener;
        private GoogleApiClient mCastClient;
        private Handler mEventHandler;
        RemoteMediaPlayer.OnStatusUpdatedListener _StatusUpdatedListener = new RemoteMediaPlayer.OnStatusUpdatedListener() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.1
            @Override // com.google.android.gms.cast.RemoteMediaPlayer.OnStatusUpdatedListener
            public void onStatusUpdated() {
                if (MediaControlChannel.this.getMediaStatus() == null) {
                    return;
                }
                MediaControlChannel.this.scheduleNextStatusUpdateIfNeeded();
            }
        };
        Runnable _StatusUpdateRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    MediaControlChannel.this.mEventHandler.removeCallbacks(MediaControlChannel.this._StatusUpdateRunnable);
                    MediaControlChannel.this.requestStatus(MediaControlChannel.this.mCastClient);
                } catch (Exception e) {
                    CoreHelper.writeTraceErrorInDebug(ChromecastDevice.TAG, "failed to update status! " + e.getMessage());
                }
            }
        };

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public interface StreamNotificationListener {
            void onLoadCompleted();

            void onLoadFailed();

            void onSeekCompleted();

            void onSeekFailed();

            void onSessionInterrupted(int i, int i2);
        }

        public MediaControlChannel(GoogleApiClient googleApiClient) {
            this.mCastClient = googleApiClient;
            Looper myLooper = Looper.myLooper();
            if (myLooper != null) {
                this.mEventHandler = new Handler(myLooper);
                return;
            }
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new Handler(mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }

        void scheduleNextStatusUpdateIfNeeded() {
            this.mEventHandler.removeCallbacks(this._StatusUpdateRunnable);
            MediaStatus mediaStatus = getMediaStatus();
            if (mediaStatus == null || mediaStatus.getPlayerState() != 2) {
                return;
            }
            this.mEventHandler.postDelayed(this._StatusUpdateRunnable, 1000L);
        }

        public void release() {
            if (this.mEventHandler != null) {
                this.mEventHandler.removeCallbacksAndMessages(null);
            }
        }

        public void onSessionEnded(int i, int i2) {
            if (this._NotificationListener != null) {
                this._NotificationListener.onSessionInterrupted(i, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setNotificationListener(StreamNotificationListener streamNotificationListener) {
            this._NotificationListener = streamNotificationListener;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void load(MediaInfo mediaInfo) {
            if (this.mCastClient == null) {
                CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "failed to load remote contentent - No active session!");
                if (this._NotificationListener != null) {
                    this._NotificationListener.onLoadFailed();
                    return;
                }
                return;
            }
            load(this.mCastClient, mediaInfo, false).setResultCallback(new ResultCallback<RemoteMediaPlayer.MediaChannelResult>() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.3
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(RemoteMediaPlayer.MediaChannelResult mediaChannelResult) {
                    CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####---- On LoadCompleted! status: " + mediaChannelResult);
                    if (mediaChannelResult.getStatus().isSuccess()) {
                        if (MediaControlChannel.this._NotificationListener != null) {
                            MediaControlChannel.this._NotificationListener.onLoadCompleted();
                        }
                    } else if (MediaControlChannel.this._NotificationListener != null) {
                        MediaControlChannel.this._NotificationListener.onLoadFailed();
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void play() throws IllegalStateException {
            play(this.mCastClient);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void pause() {
            pause(this.mCastClient);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void seek(MediaInfo mediaInfo, long j) throws IllegalStateException, IOException {
            if (!hasRemotePlayerLoadedMedia()) {
                seekWithLoad(mediaInfo, j);
                return;
            }
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Seeking to position: " + j + " content: " + mediaInfo.getContentId());
            seek(this.mCastClient, j, 0).setResultCallback(new ResultCallback<RemoteMediaPlayer.MediaChannelResult>() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.4
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(RemoteMediaPlayer.MediaChannelResult mediaChannelResult) {
                    if (mediaChannelResult.getStatus().isSuccess()) {
                        if (MediaControlChannel.this._NotificationListener != null) {
                            MediaControlChannel.this._NotificationListener.onSeekCompleted();
                        }
                    } else if (MediaControlChannel.this._NotificationListener != null) {
                        MediaControlChannel.this._NotificationListener.onSeekFailed();
                    }
                }
            });
        }

        private void seekWithLoad(MediaInfo mediaInfo, long j) {
            if (this.mCastClient == null) {
                CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "failed to load-for-seek remote contentent - No active session!");
                if (this._NotificationListener != null) {
                    this._NotificationListener.onLoadFailed();
                    return;
                }
                return;
            }
            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Seeking (with load) to position: " + j + " content: " + mediaInfo.getContentId());
            load(this.mCastClient, mediaInfo, false, j).setResultCallback(new ResultCallback<RemoteMediaPlayer.MediaChannelResult>() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.MediaControlChannel.5
                @Override // com.google.android.gms.common.api.ResultCallback
                public void onResult(RemoteMediaPlayer.MediaChannelResult mediaChannelResult) {
                    CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####---- On Load-For-Seek Completed! status: " + mediaChannelResult);
                    if (mediaChannelResult.getStatus().isSuccess()) {
                        if (MediaControlChannel.this._NotificationListener != null) {
                            MediaControlChannel.this._NotificationListener.onSeekCompleted();
                        }
                    } else if (MediaControlChannel.this._NotificationListener != null) {
                        MediaControlChannel.this._NotificationListener.onSeekFailed();
                    }
                }
            });
        }

        public boolean hasRemotePlayerLoadedMedia() {
            MediaStatus mediaStatus = getMediaStatus();
            return mediaStatus != null && (mediaStatus.getPlayerState() == 4 || mediaStatus.getPlayerState() == 3 || mediaStatus.getPlayerState() == 2);
        }

        public boolean isRemotePlayerPlaying() {
            MediaStatus mediaStatus = getMediaStatus();
            return mediaStatus != null && mediaStatus.getPlayerState() == 2;
        }
    }

    /* loaded from: classes.dex */
    public static class MediaFeedbackChannel implements Cast.MessageReceivedCallback {
        private static final String BP_FEEDBACK_CHANNEL_NAMESPACE = "urn:x-cast:mobi.beyondpod.feedbackchannel";
        private static final String KEY_CONTENT_ID = "contentId";
        private static final String KEY_EVENT = "event";
        private static final String KEY_MEDIA_END = "mediaEnded";
        private static final String KEY_PLAYBACK_ERROR_ID = "playbackError";
        private static final String KEY_SEEK_COMPLETED = "seekCompleted";
        private static final String KEY_VIDEO_FOCUS_GAIN = "videoFocusGain";
        private static final String KEY_VIDEO_FOCUS_LOST = "videoFocusLost";
        FeedbackNotificationListener _NotificationListener;

        /* loaded from: classes.dex */
        interface FeedbackNotificationListener {
            void onPlaybackComplete(String str);

            void onPlaybackError();

            void onVideoFocusGain();

            void onVideoFocusLost();
        }

        String getNamespace() {
            return BP_FEEDBACK_CHANNEL_NAMESPACE;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setNotificationListener(FeedbackNotificationListener feedbackNotificationListener) {
            this._NotificationListener = feedbackNotificationListener;
        }

        @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
        public void onMessageReceived(CastDevice castDevice, String str, String str2) {
            if (BP_FEEDBACK_CHANNEL_NAMESPACE.equals(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    if (jSONObject.has("event")) {
                        String string = jSONObject.getString("event");
                        if (KEY_SEEK_COMPLETED.equals(string)) {
                            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####FB ---- On Seek Completed!");
                        } else if (KEY_MEDIA_END.equals(string)) {
                            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####FB ---- On Playback Completed!");
                            String string2 = jSONObject.getString(KEY_CONTENT_ID);
                            if (this._NotificationListener != null) {
                                this._NotificationListener.onPlaybackComplete(string2);
                            }
                        } else if (KEY_VIDEO_FOCUS_LOST.equals(string)) {
                            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####FB ---- On Video Focus Lost");
                            if (this._NotificationListener != null) {
                                this._NotificationListener.onVideoFocusLost();
                            }
                        } else if (KEY_VIDEO_FOCUS_GAIN.equals(string)) {
                            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####FB ---- On Video Focus Gain");
                            if (this._NotificationListener != null) {
                                this._NotificationListener.onVideoFocusGain();
                            }
                        } else if (KEY_PLAYBACK_ERROR_ID.equals(string)) {
                            CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "####FB ---- On Playback Error");
                            if (this._NotificationListener != null) {
                                this._NotificationListener.onPlaybackError();
                            }
                        }
                    } else {
                        CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Unknown payload: " + jSONObject);
                    }
                } catch (JSONException e) {
                    CoreHelper.writeTraceEntry(ChromecastDevice.TAG, "Message doesn't contain an expected key:" + e.getMessage() + ", Message: " + str2);
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000d. Please report as an issue. */
    public static boolean checkGooglePlayServices(Activity activity, boolean z) {
        int isGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable != 9) {
            switch (isGooglePlayServicesAvailable) {
                case 0:
                    return true;
                case 1:
                case 2:
                case 3:
                    break;
                default:
                    return false;
            }
        }
        if (z) {
            Dialog errorDialog = GoogleApiAvailability.getInstance().getErrorDialog(activity, isGooglePlayServicesAvailable, 0);
            errorDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: mobi.beyondpod.services.player.impl.ChromecastDevice.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                }
            });
            errorDialog.show();
        }
        return false;
    }
}
