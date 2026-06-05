package mobi.beyondpod.services.player.remotecontrol;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.player.ChromecastUtils;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.ImageUtils;

/* loaded from: classes.dex */
class RemoteControlICS extends RemoteControlClientHelper2 {
    private static String TAG = "RemoteControlICS";
    protected RemoteControlClient _Client;

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public MediaSession.Token getMediaSessionToken() {
        return null;
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void release() {
    }

    /* loaded from: classes.dex */
    static class Holder {
        Holder() {
        }

        static final RemoteControlICS getInstance(PendingIntent pendingIntent) {
            return new RemoteControlICS(pendingIntent);
        }
    }

    public RemoteControlICS(PendingIntent pendingIntent) {
        this._Client = new RemoteControlClient(pendingIntent);
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    void unregisterRemoteControlClient(AudioManager audioManager) {
        audioManager.unregisterRemoteControlClient(this._Client);
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public Object getClient() {
        return this._Client;
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void publishTrackInformation(Track track, long j, boolean z) {
        int i;
        int i2;
        try {
            switch (track.getCurrentPlayState()) {
                case 0:
                case 2:
                case 4:
                case 5:
                default:
                    i = 2;
                    break;
                case 1:
                    i = 3;
                    break;
                case 3:
                    i2 = 8;
                    i = i2;
                    break;
                case 6:
                    i2 = 6;
                    i = i2;
                    break;
                case 7:
                case 8:
                    i2 = 9;
                    i = i2;
                    break;
            }
            if (z) {
                setTransportControlFlags(223);
                Bitmap loadEpisodeImage = ImageUtils.loadEpisodeImage(track, 600, 600);
                if (loadEpisodeImage == null) {
                    loadEpisodeImage = FeedImageCache.getSizedFeedImageFor(track.getParentFeed(), 200, 200);
                }
                editMetadata(track, loadEpisodeImage);
            }
            if (!z || track.getCurrentPlayState() == 3) {
                if (j < 0) {
                    j = track.getPlayedTime() * 1000;
                }
                setPlaybackState(i, j, track.getCurrentPlaybackSpeed(), track.exists());
            }
        } catch (OutOfMemoryError unused) {
            CoreHelper.writeLogEntry(TAG, "Out of memory error while publishing track metadata for: " + track);
        }
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void registerRemoteControlClient(AudioManager audioManager) {
        audioManager.registerRemoteControlClient(this._Client);
    }

    protected void setPlaybackState(int i, long j, float f, boolean z) {
        this._Client.setPlaybackState(i);
    }

    protected void setTransportControlFlags(int i) {
        this._Client.setTransportControlFlags(i);
    }

    protected void editMetadata(Track track, Bitmap bitmap) {
        String str;
        String sb;
        String formatDateTimeToday = DateTime.formatDateTimeToday(track.getLastModifiedDate());
        if (track.getParentFeed().hasUrl()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(formatDateTimeToday);
            if (track.getTotalTime() > 0) {
                str = " - " + track.totalTimeAsMinuteString();
            } else {
                str = "";
            }
            sb2.append(str);
            sb = sb2.toString();
        } else {
            sb = track.getParentFeed().getName();
        }
        String name = track.getParentFeed().getName();
        if (ChromecastDevice.isConnected()) {
            sb = ChromecastUtils.buildCastingToTitle(null);
            name = null;
        }
        RemoteControlClient.MetadataEditor putLong = this._Client.editMetadata(true).putString(13, sb).putString(2, sb).putString(7, track.displayName()).putString(5, formatDateTimeToday).putLong(9, track.getTotalTime() * 1000);
        if (bitmap != null) {
            putLong.putBitmap(100, bitmap);
        }
        if (!StringUtils.isNullOrEmpty(name)) {
            putLong.putString(1, name);
        }
        putLong.apply();
    }
}
