package mobi.beyondpod.services.player.remotecontrol;

import android.app.PendingIntent;
import android.media.AudioManager;
import android.media.session.MediaSession;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.remotecontrol.RemoteControlJB;
import mobi.beyondpod.services.player.remotecontrol.RemoteControlLP;

/* loaded from: classes.dex */
public abstract class RemoteControlClientHelper2 {
    protected boolean _EnablePlaylistPublishing = false;

    public abstract Object getClient();

    public abstract MediaSession.Token getMediaSessionToken();

    public void notifyPlaylistChanged() {
    }

    public abstract void publishTrackInformation(Track track, long j, boolean z);

    public abstract void registerRemoteControlClient(AudioManager audioManager);

    public abstract void release();

    abstract void unregisterRemoteControlClient(AudioManager audioManager);

    public void enablePublishOfCurrentPlaylist(boolean z) {
        this._EnablePlaylistPublishing = z;
    }

    public static RemoteControlClientHelper2 getInstance(PendingIntent pendingIntent) {
        if (CoreHelper.apiLevel() < 21) {
            return RemoteControlJB.Holder.getInstance(pendingIntent);
        }
        return RemoteControlLP.Holder.getInstance(pendingIntent);
    }
}
