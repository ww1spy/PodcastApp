package mobi.beyondpod.ui.dialogs;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.MediaController;
import android.widget.VideoView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.views.base.AlbumView;
import mobi.beyondpod.ui.views.player.PlayerPanel;

/* loaded from: classes.dex */
public class PreviewPlayerControl implements MediaPlayer.OnErrorListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener {
    private static final int ALBUM_ART_DECODED = 3;
    private static final String CMDNAME = "command";
    private static final String CMDPAUSE = "pause";
    private static final int GET_ALBUM_ART = 2;
    private static final String SERVICECMD = "com.android.music.musicservicecommand";
    private AlbumView _Album;
    private AlbumArtHandler _AlbumArtHandler;
    private PlayerPanel.Worker _AlbumArtWorker;
    private Context _Context;
    private Feed _CurrentFeed;
    private boolean _IsAudio;
    private MediaController mMediaController;
    private final View mProgressView;
    private final Uri mUri;
    private final VideoView mVideoView;
    private int mPositionWhenPaused = -1;
    private boolean mWasPlayingWhenPaused = false;
    private final Handler _Handler = new Handler() { // from class: mobi.beyondpod.ui.dialogs.PreviewPlayerControl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 3) {
                PreviewPlayerControl.this._Album.setArtwork((Bitmap) message.obj);
                PreviewPlayerControl.this._Album.invalidate();
            }
        }
    };
    private Runnable mPlayingChecker = new Runnable() { // from class: mobi.beyondpod.ui.dialogs.PreviewPlayerControl.2
        @Override // java.lang.Runnable
        public void run() {
            if (PreviewPlayerControl.this.mVideoView.isPlaying()) {
                PreviewPlayerControl.this.mProgressView.setVisibility(8);
            } else {
                PreviewPlayerControl.this._Handler.postDelayed(PreviewPlayerControl.this.mPlayingChecker, 250L);
            }
        }
    };

    public void onCompletion() {
    }

    public PreviewPlayerControl(View view, Context context, Uri uri, Feed feed, int i) {
        this._IsAudio = false;
        this._Context = context;
        ((Activity) context).setVolumeControlStream(3);
        this._AlbumArtWorker = new PlayerPanel.Worker("preview album art worker");
        this._AlbumArtHandler = new AlbumArtHandler(this._AlbumArtWorker.getLooper());
        this.mVideoView = (VideoView) view.findViewById(R.id.surface_view);
        this.mProgressView = view.findViewById(R.id.progress_indicator);
        this.mUri = uri;
        this._Handler.postDelayed(this.mPlayingChecker, 250L);
        this.mVideoView.setOnErrorListener(this);
        this.mVideoView.setOnCompletionListener(this);
        this.mVideoView.setVideoURI(this.mUri);
        this.mVideoView.setOnPreparedListener(this);
        this.mMediaController = new MediaController(context);
        this.mVideoView.setMediaController(this.mMediaController);
        this.mVideoView.requestFocus();
        Intent intent = new Intent(SERVICECMD);
        intent.putExtra("command", "pause");
        context.sendBroadcast(intent);
        this.mVideoView.start();
        this._Album = (AlbumView) view.findViewById(R.id.podcastAlbum);
        this._IsAudio = i == 1;
        this._CurrentFeed = feed;
        BitmapDrawable bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(context, R.drawable.player_preview_background);
        if (bitmapDrawable != null) {
            bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
        }
        if (this._IsAudio) {
            View findViewById = view.findViewById(R.id.audioPlayer);
            findViewById.setVisibility(0);
            findViewById.setBackground(bitmapDrawable);
            return;
        }
        view.setBackground(bitmapDrawable);
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        if (this._IsAudio) {
            this.mMediaController.show();
            this._AlbumArtHandler.sendSetCurrentArtMessage();
        }
    }

    public void onPause() {
        this._Handler.removeCallbacksAndMessages(null);
        this.mPositionWhenPaused = this.mVideoView.getCurrentPosition();
        this.mWasPlayingWhenPaused = this.mVideoView.isPlaying();
        this.mVideoView.stopPlayback();
    }

    public void onResume() {
        if (this.mPositionWhenPaused >= 0) {
            this.mVideoView.setVideoURI(this.mUri);
            this.mVideoView.seekTo(this.mPositionWhenPaused);
            this.mPositionWhenPaused = -1;
            if (this.mWasPlayingWhenPaused) {
                this.mMediaController.show(0);
            }
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this._Handler.removeCallbacksAndMessages(null);
        this.mProgressView.setVisibility(8);
        return false;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        onCompletion();
    }

    /* loaded from: classes.dex */
    private class AlbumArtHandler extends Handler {
        public AlbumArtHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Bitmap sizedFeedImageFor;
            if (message.what == 2) {
                if (PreviewPlayerControl.this._Album.getWidth() != 0 && PreviewPlayerControl.this._Album.getHeight() != 0) {
                    Message obtainMessage = PreviewPlayerControl.this._Handler.obtainMessage(3, null);
                    PreviewPlayerControl.this._Handler.removeMessages(3);
                    PreviewPlayerControl.this._Handler.sendMessageDelayed(obtainMessage, 300L);
                    if (PreviewPlayerControl.this._CurrentFeed == null || (sizedFeedImageFor = FeedImageCache.getSizedFeedImageFor(PreviewPlayerControl.this._CurrentFeed, PreviewPlayerControl.this._Album.getWidth(), PreviewPlayerControl.this._Album.getHeight())) == null) {
                        return;
                    }
                    Message obtainMessage2 = PreviewPlayerControl.this._Handler.obtainMessage(3, sizedFeedImageFor);
                    PreviewPlayerControl.this._Handler.removeMessages(3);
                    PreviewPlayerControl.this._Handler.sendMessage(obtainMessage2);
                    return;
                }
                removeMessages(2);
                sendMessageDelayed(obtainMessage(2), 500L);
            }
        }

        public void sendSetCurrentArtMessage() {
            removeMessages(2);
            obtainMessage(2).sendToTarget();
        }
    }

    public void onDestroy() {
        this._AlbumArtWorker.quit();
    }
}
