package mobi.beyondpod.ui.views;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.VideoView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.TrackMetadataPublisher;
import mobi.beyondpod.ui.views.base.BPMediaController;

/* loaded from: classes.dex */
public class MovieViewControl implements MediaPlayer.OnErrorListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener {
    private static final String CMDNAME = "command";
    private static final String CMDPAUSE = "pause";
    private static final String SERVICECMD = "com.android.music.musicservicecommand";
    private static final String TAG = "MovieViewControl";
    protected Context _Context;
    protected Track _CurrentTrack;
    private BPMediaController _MediaController;
    private final View _ProgressView;
    private View _SeekGroup;
    private ImageView _StreamableImage;
    private TextView _TrackName;
    private View _TransportControls;
    private final VideoView _VideoView;
    private static final String PREPARING_STREAM = CoreHelper.loadResourceString(R.string.movie_view_preparing_stream);
    private static final String PLAYBACK_ERROR = CoreHelper.loadResourceString(R.string.player_view_playback_error);
    private static final String CONNECTING_TO_S = CoreHelper.loadResourceString(R.string.player_view_connecting_to_s);
    private int _PositionWhenPaused = -1;
    private boolean _WasPlayingWhenPaused = false;
    private boolean _IsPrepared = false;
    private boolean _PlaybackFailed = false;
    private boolean _StartAfterSeek = false;
    private Handler _Handler = new Handler();
    private Runnable mPlayingChecker = new Runnable() { // from class: mobi.beyondpod.ui.views.MovieViewControl.1
        @Override // java.lang.Runnable
        public void run() {
            if (MovieViewControl.this._IsPrepared) {
                MovieViewControl.this._CurrentTrack.setPlayedTime(MovieViewControl.this._VideoView.getCurrentPosition() / 1000);
                MovieViewControl.this._Handler.postDelayed(MovieViewControl.this.mPlayingChecker, 5000L);
                MovieViewControl.this._TrackName.setText("");
                MovieViewControl.this._ProgressView.setVisibility(8);
                MovieViewControl.this._TransportControls.setVisibility(0);
                MovieViewControl.this._SeekGroup.setVisibility(0);
                if (MovieViewControl.this._MediaController.isVisible()) {
                    MovieViewControl.this._MediaController.hideNavigationDelayed(BPMediaController.TOOLBAR_TIMEOUT_SHORT);
                }
            } else {
                MovieViewControl.this._Handler.postDelayed(MovieViewControl.this.mPlayingChecker, 250L);
                if (MovieViewControl.this._CurrentTrack.getUrl() == null || MovieViewControl.this._CurrentTrack.exists()) {
                    MovieViewControl.this._TrackName.setText(MovieViewControl.PREPARING_STREAM);
                } else {
                    MovieViewControl.this._TrackName.setText(String.format(MovieViewControl.CONNECTING_TO_S, MovieViewControl.this._CurrentTrack.getUri().getHost()));
                }
                MovieViewControl.this._MediaController.show(3600000L);
            }
            MovieViewControl.this._MediaController.updateTimeAndPosition();
        }
    };
    private TrackMetadataPublisher _MetadataPublisher = TrackMetadataPublisher.getInstance();

    public void onCompletion(boolean z) {
    }

    public MovieViewControl(BPMediaController bPMediaController, Context context) {
        this._Context = context;
        this._MediaController = bPMediaController;
        this._VideoView = (VideoView) bPMediaController.findViewById(R.id.surface_view);
        this._ProgressView = bPMediaController.findViewById(R.id.prepare_progress);
        this._VideoView.setOnErrorListener(this);
        this._VideoView.setOnCompletionListener(this);
        this._VideoView.setOnPreparedListener(this);
        this._TrackName = (TextView) bPMediaController.findViewById(R.id.currentTrack);
        this._StreamableImage = (ImageView) bPMediaController.findViewById(R.id.podcastStreamable);
        this._TransportControls = bPMediaController.findViewById(R.id.videoTransportControls);
        this._SeekGroup = bPMediaController.findViewById(R.id.seekGroup);
    }

    public void playTrack(Track track) {
        this._VideoView.requestFocus();
        Intent intent = new Intent(SERVICECMD);
        intent.putExtra("command", "pause");
        this._Context.sendBroadcast(intent);
        this._VideoView.stopPlayback();
        this._PositionWhenPaused = -1;
        this._CurrentTrack = track;
        prepareAndStartPlayback(true);
        this._MediaController.show(3600000L);
    }

    private void prepareAndStartPlayback(boolean z) {
        if (this._CurrentTrack == null) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Preparing video track '" + this._CurrentTrack.getName() + "', url: " + this._CurrentTrack.getUrl() + ", exists: " + this._CurrentTrack.exists());
        this._IsPrepared = false;
        this._VideoView.stopPlayback();
        if (this._CurrentTrack.isPlayed()) {
            this._CurrentTrack.clearPlayed();
        }
        this._StartAfterSeek = z;
        this._CurrentTrack.setCurrentPlayState(3);
        this._MetadataPublisher.publishTrackInformation(this._CurrentTrack, true);
        if (this._CurrentTrack.exists()) {
            this._StreamableImage.setVisibility(8);
            this._ProgressView.setVisibility(8);
            this._TransportControls.setVisibility(0);
            this._SeekGroup.setVisibility(0);
            this._VideoView.setVideoPath(this._CurrentTrack.trackPath());
        } else if (this._CurrentTrack.getUrl() != null) {
            this._ProgressView.setVisibility(0);
            this._TransportControls.setVisibility(8);
            this._SeekGroup.setVisibility(8);
            this._StreamableImage.setVisibility(0);
            this._VideoView.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.MovieViewControl.2
                @Override // java.lang.Runnable
                public void run() {
                    MovieViewControl.this._VideoView.setVideoURI(Uri.parse(MovieViewControl.this._CurrentTrack.getUrl()));
                }
            }, 500L);
        }
        this._Handler.removeCallbacksAndMessages(null);
        this._Handler.postDelayed(this.mPlayingChecker, 250L);
    }

    public void onPause() {
        this._Handler.removeCallbacksAndMessages(null);
        saveCurrentTrackPosition();
        this._PositionWhenPaused = this._VideoView.getCurrentPosition();
        this._WasPlayingWhenPaused = this._VideoView.isPlaying();
    }

    public void onVideoWindowHidden(boolean z) {
        if (z) {
            pause();
        }
    }

    public void onResume(boolean z) {
        if (z) {
            this._PositionWhenPaused = -1;
            this._WasPlayingWhenPaused = false;
        } else if (this._PositionWhenPaused >= 0) {
            if (!this._VideoView.isPlaying()) {
                prepareAndStartPlayback(false);
            }
            this._PositionWhenPaused = -1;
            if (this._WasPlayingWhenPaused) {
                this._MediaController.show(3600000L);
            }
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        CoreHelper.writeTraceEntry(TAG, "Playback Error! Code1:" + i + ",  Code2:" + i2);
        this._PlaybackFailed = true;
        this._TrackName.setText(PLAYBACK_ERROR);
        this._Handler.removeCallbacksAndMessages(null);
        this._ProgressView.setVisibility(8);
        this._TransportControls.setVisibility(0);
        this._SeekGroup.setVisibility(0);
        return false;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        onCompletion(this._IsPrepared);
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        if (this._CurrentTrack != null) {
            this._CurrentTrack.setCurrentPlayState(4);
            this._MetadataPublisher.publishTrackInformation(this._CurrentTrack, false);
            this._IsPrepared = true;
            this._CurrentTrack.setTotalTime(mediaPlayer.getDuration() / 1000);
            if (this._CurrentTrack.isPartialyPlayed()) {
                this._VideoView.seekTo((int) (this._CurrentTrack.getPlayedTime() * 1000));
                if (this._StartAfterSeek) {
                    play();
                }
            } else if (this._StartAfterSeek) {
                play();
            }
            this._StartAfterSeek = false;
            this._Handler.removeCallbacks(this.mPlayingChecker);
            this._Handler.postDelayed(this.mPlayingChecker, 500L);
        }
    }

    public boolean playbackFailed() {
        return this._PlaybackFailed;
    }

    public void skipToEnd() {
        stop();
        this._IsPrepared = false;
        this._PositionWhenPaused = -1;
        this._CurrentTrack.markPlayed();
    }

    public void play() {
        CoreHelper.writeTraceEntry(TAG, "Starting playback of '" + this._CurrentTrack.getName() + "' <= " + this._CurrentTrack.getPlayedTime());
        this._CurrentTrack.setCurrentPlayState(1);
        this._MetadataPublisher.publishTrackInformation(this._CurrentTrack, false);
        this._VideoView.start();
    }

    public void pause() {
        saveCurrentTrackPosition();
        this._CurrentTrack.setCurrentPlayState(0);
        this._MetadataPublisher.publishTrackInformation(this._CurrentTrack, false);
        if (Configuration.showPlayerPausedNotication()) {
            BeyondPodApplication.getInstance().setPlayerPauseNotification(BeyondPodApplication.getInstance().getApplicationContext(), this._CurrentTrack);
        }
        this._VideoView.pause();
        ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(15, TimeSpan.fromSeconds(1.0d), false);
    }

    private void saveCurrentTrackPosition() {
        int currentPosition = this._VideoView.getCurrentPosition();
        if (!this._IsPrepared || this._CurrentTrack == null || currentPosition <= 0 || this._CurrentTrack.isPlayed()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Saving current position of '");
        sb.append(this._CurrentTrack.getName());
        sb.append("' => ");
        int i = currentPosition / 1000;
        sb.append(i);
        CoreHelper.writeTraceEntry(TAG, sb.toString());
        this._CurrentTrack.setPlayedTime(i);
        FeedRepository.saveRepositoryAsync();
    }

    public void stop() {
        saveCurrentTrackPosition();
        this._CurrentTrack.setCurrentPlayState(2);
        this._MetadataPublisher.publishTrackInformation(this._CurrentTrack, false);
        this._VideoView.stopPlayback();
        ScheduledTasksManager.scheduleSyncTaskIfSyncIsEnabled(15, TimeSpan.fromSeconds(1.0d), false);
    }

    public boolean isPlaying() {
        return this._VideoView != null && this._VideoView.isPlaying();
    }
}
