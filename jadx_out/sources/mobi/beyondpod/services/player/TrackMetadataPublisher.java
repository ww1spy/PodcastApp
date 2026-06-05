package mobi.beyondpod.services.player;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2;

/* loaded from: classes.dex */
public class TrackMetadataPublisher {
    private static final String TAG = "TrackMetadataPublisher";
    private static TrackMetadataPublisher _Instance;
    static PendingIntent _MediaButtonReceiverIntent;
    private RemoteControlClientHelper2 _RemoteControlClientHelper;

    static {
        Context applicationContext = BeyondPodApplication.getInstance().getApplicationContext();
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(new ComponentName(applicationContext, (Class<?>) MediaButtonIntentReceiver.class));
        _MediaButtonReceiverIntent = PendingIntent.getBroadcast(applicationContext, 0, intent, 0);
    }

    private RemoteControlClientHelper2 getRemoteControlHelper() {
        if (this._RemoteControlClientHelper == null) {
            this._RemoteControlClientHelper = RemoteControlClientHelper2.getInstance(_MediaButtonReceiverIntent);
        }
        return this._RemoteControlClientHelper;
    }

    public static TrackMetadataPublisher getInstance() {
        if (_Instance == null) {
            _Instance = new TrackMetadataPublisher();
        }
        return _Instance;
    }

    public void enablePublishOfCurrentPlaylist(boolean z) {
        getRemoteControlHelper().enablePublishOfCurrentPlaylist(z);
    }

    public void notifyPlaylistChanged() {
        getRemoteControlHelper().notifyPlaylistChanged();
    }

    public MediaSession.Token getMediaSessionToken() {
        return getRemoteControlHelper().getMediaSessionToken();
    }

    public void publishPlayPositionChanged(Track track) {
        publishTrackInformation(track, -1L, false);
    }

    public void publishTrackInformation(Track track, boolean z) {
        publishTrackInformation(track, -1L, z);
    }

    public void publishTrackInformation(Track track, long j, boolean z) {
        Object client;
        try {
            if (track == BeyondPodApplication.getInstance().playList().currentTrack() && track != null) {
                getRemoteControlHelper().registerRemoteControlClient((AudioManager) BeyondPodApplication.getInstance().getApplicationContext().getSystemService("audio"));
                if (ChromecastDevice.isConnected() && (client = getRemoteControlHelper().getClient()) != null) {
                    if (client instanceof RemoteControlClient) {
                        BeyondPodApplication.getInstance().chromecastDevice().addRemoteControlClient(client);
                    } else {
                        BeyondPodApplication.getInstance().chromecastDevice().setMediaSession(client);
                    }
                }
                scrobbleTrack(track, z);
                if (BeyondPodApplication.getInstance().isLockScreenWidgetInstalled()) {
                    return;
                }
                getRemoteControlHelper().publishTrackInformation(track, j, z);
                return;
            }
            CoreHelper.writeTraceEntry(TAG, "Trying to publish metadata for incorrect track! Ignoring...");
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "failed to publish track metadata for: " + track + ", Error: " + e.getClass().getName() + ", Msg: " + e.getMessage());
        }
    }

    public void release() {
        if (this._RemoteControlClientHelper != null) {
            this._RemoteControlClientHelper.release();
        }
    }

    private static void scrobbleTrack(Track track, boolean z) {
        String str;
        if (Configuration.scrobbleEnabled()) {
            Intent intent = new Intent(z ? "com.android.music.metachanged" : "com.android.music.playstatechanged");
            intent.putExtra("artist", track.getParentFeed().getName());
            if (!track.getParentFeed().hasUrl()) {
                intent.putExtra("album", track.getParentFeed().getName());
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(DateTime.formatDateTimeToday(track.getLastModifiedDate()));
                if (track.getTotalTime() > 0) {
                    str = " - " + track.totalTimeAsMinuteString();
                } else {
                    str = "";
                }
                sb.append(str);
                intent.putExtra("album", sb.toString());
            }
            intent.putExtra("track", track.displayName());
            BeyondPodApplication.getInstance().sendBroadcast(intent);
            CoreHelper.writeTraceEntry(TAG, "Published Google Music 'metachanged' broadcast for track: " + track.displayName());
            intent.setAction("net.jjc1138.android.scrobbler.action.MUSIC_STATUS");
            intent.putExtra("album", track.getParentFeed().getName());
            intent.putExtra("playing", track.getCurrentPlayState() == 1);
            intent.putExtra("secs", (int) track.getTotalTime());
            intent.putExtra("source", "P");
            BeyondPodApplication.getInstance().sendBroadcast(intent);
        }
        Intent intent2 = new Intent("mobi.beyondpod.action.PLAYBACK_STATUS");
        intent2.putExtra("artist", track.getParentFeed().getName());
        intent2.putExtra("album", track.getParentFeed().getName());
        intent2.putExtra("track", track.displayName());
        intent2.putExtra("playing", track.getCurrentPlayState() == 1);
        intent2.putExtra("feed-name", track.getParentFeed().getName());
        intent2.putExtra("feed-url", track.getParentFeed().getFeedUrl());
        intent2.putExtra("episode-name", track.displayName());
        intent2.putExtra("episode-url", track.getUrl());
        intent2.putExtra("episode-file", track.exists() ? track.trackPath() : null);
        intent2.putExtra("episode-post-url", track.trackPostUrl());
        intent2.putExtra("episode-mime", track.contentMimeType());
        intent2.putExtra("episode-summary", track.trackDescription());
        intent2.putExtra("episode-duration", track.getTotalTime());
        intent2.putExtra("episode-position", track.getPlayedTime());
        BeyondPodApplication.getInstance().sendBroadcast(intent2);
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Scrobbling track: ");
        sb2.append(track.displayName());
        sb2.append(track.getCurrentPlayState() == 1 ? " playing " : " paused ");
        sb2.append("(");
        sb2.append(track.getPlayedTime());
        sb2.append("/");
        sb2.append(track.getTotalTime());
        sb2.append(")");
        CoreHelper.writeTraceEntry(str2, sb2.toString());
    }
}
