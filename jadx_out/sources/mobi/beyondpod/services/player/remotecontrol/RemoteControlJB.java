package mobi.beyondpod.services.player.remotecontrol;

import android.app.PendingIntent;
import android.content.Intent;
import android.media.RemoteControlClient;
import android.support.v4.content.ContextCompat;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.MediaPlaybackService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RemoteControlJB extends RemoteControlICS {
    private static String TAG = "RemoteControlJB";
    private RemoteControlClient.OnGetPlaybackPositionListener getPositionListener;
    private RemoteControlClient.OnPlaybackPositionUpdateListener seekToListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Holder {
        Holder() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static RemoteControlJB getInstance(PendingIntent pendingIntent) {
            return new RemoteControlJB(pendingIntent);
        }
    }

    public RemoteControlJB(PendingIntent pendingIntent) {
        super(pendingIntent);
        this.seekToListener = new RemoteControlClient.OnPlaybackPositionUpdateListener() { // from class: mobi.beyondpod.services.player.remotecontrol.RemoteControlJB.1
            @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
            public void onPlaybackPositionUpdate(long j) {
                CoreHelper.writeTraceEntry(RemoteControlJB.TAG, "***========> Remote Control received seek command to " + j);
                Intent intent = new Intent(BeyondPodApplication.getInstance().getApplicationContext(), (Class<?>) MediaPlaybackService.class);
                intent.setAction(MediaPlaybackService.SERVICECMD);
                intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_SEEK_TO_LOCATION);
                intent.putExtra(MediaPlaybackService.CMD_SEEK_TO_LOCATION, j);
                if (BeyondPodApplication.getInstance().sendCommandToVideoPlayer(intent)) {
                    return;
                }
                if (CoreHelper.isOreoCompatible()) {
                    ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
                } else {
                    BeyondPodApplication.getInstance().startService(intent);
                }
            }
        };
        this.getPositionListener = new RemoteControlClient.OnGetPlaybackPositionListener() { // from class: mobi.beyondpod.services.player.remotecontrol.RemoteControlJB.2
            @Override // android.media.RemoteControlClient.OnGetPlaybackPositionListener
            public long onGetPlaybackPosition() {
                Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
                if (currentTrack != null) {
                    return currentTrack.getPlayedTime() * 1000;
                }
                return -1L;
            }
        };
        this._Client.setPlaybackPositionUpdateListener(this.seekToListener);
        this._Client.setOnGetPlaybackPositionListener(this.getPositionListener);
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlICS
    protected void setTransportControlFlags(int i) {
        this._Client.setTransportControlFlags(i | 256);
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlICS
    protected void setPlaybackState(int i, long j, float f, boolean z) {
        this._Client.setPlaybackState(i, j, f);
    }
}
