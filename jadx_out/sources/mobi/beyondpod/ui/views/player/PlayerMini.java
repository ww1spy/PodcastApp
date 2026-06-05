package mobi.beyondpod.ui.views.player;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.ConfigurationHD;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.services.player.ChromecastUtils;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.SwipeDismissTouchListener;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class PlayerMini extends FrameLayout {
    private ProgressImageView _AlbumArt1;
    private IMiniPlayerOwner _Owner;
    private ImageButton _PlayPause;
    private ProgressBar _PrepareProgress;
    private TextView _SubTitle;
    private Rect _TDR;
    private TextView _Title;
    private int mPreviousHeight;
    private int mPreviousWidth;
    private static final String PLAYBACK_ERROR = CoreHelper.loadResourceString(R.string.player_view_playback_error);
    private static final String PREPARING_STREAM_S = CoreHelper.loadResourceString(R.string.player_view_preparing_stream_s);
    private static final String PLAYBACK_ERROR_STREAMING_DISABLED = CoreHelper.loadResourceString(R.string.player_view_playback_error_streaming_disabled);
    private static final String PLAYBACK_ERROR_CANT_CAST = CoreHelper.loadResourceString(R.string.player_view_playback_error_cant_cast);

    /* loaded from: classes.dex */
    public interface IMiniPlayerOwner {
        void dismissPlayer();

        void expandPlayer();

        ImageLoader getImageLoader();

        void togglePlayPause();
    }

    public void doCleanup() {
    }

    public void onActivated() {
    }

    public void onDeActivated() {
    }

    public void updateCurrentPosition(int i, String str, String str2) {
        updateTrackInfo(BeyondPodApplication.getInstance().playList().currentTrack());
        this._AlbumArt1.setProgress(i);
    }

    public PlayerMini(Context context) {
        this(context, null);
    }

    public PlayerMini(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerMini(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setPlayerOwner(IMiniPlayerOwner iMiniPlayerOwner) {
        this._Owner = iMiniPlayerOwner;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this._PlayPause = (ImageButton) findViewById(R.id.playpause);
        this._PlayPause.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerMini.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerMini.this._Owner.togglePlayPause();
            }
        });
        this._Title = (TextView) findViewById(R.id.title);
        this._SubTitle = (TextView) findViewById(R.id.source);
        this._AlbumArt1 = (ProgressImageView) findViewById(R.id.miniAlbumArt1);
        this._AlbumArt1.setMax(1000);
        this._AlbumArt1.setProgress(0);
        this._AlbumArt1.setFadeInImage(true);
        this._AlbumArt1.setMaxImageSize(getContext().getResources().getDimensionPixelSize(R.dimen.mini_player_image_width), getContext().getResources().getDimensionPixelSize(R.dimen.mini_player_image_height));
        this._AlbumArt1.setErrorImageResId(FadingNetworkImageViewTrack.getDefaultImage(1));
        this._AlbumArt1.setImageDrawable(null);
        this._AlbumArt1.setDefaultImageResId(R.drawable.image_loading_bg);
        this._PrepareProgress = (ProgressBar) findViewById(R.id.prepareProgress);
        setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerMini.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PlayerMini.this._Owner != null) {
                    PlayerMini.this._Owner.expandPlayer();
                }
            }
        });
        setOnTouchListener(new SwipeDismissTouchListener(this, null, new SwipeDismissTouchListener.DismissCallbacks() { // from class: mobi.beyondpod.ui.views.player.PlayerMini.3
            @Override // mobi.beyondpod.ui.views.base.SwipeDismissTouchListener.DismissCallbacks
            public boolean canDismiss(Object obj) {
                return true;
            }

            @Override // mobi.beyondpod.ui.views.base.SwipeDismissTouchListener.DismissCallbacks
            public void onDismiss(View view, Object obj) {
                if (PlayerMini.this._Owner != null) {
                    ConfigurationHD.setPlayerDismissedByUser(true);
                    PlayerMini.this._Owner.dismissPlayer();
                }
            }
        }));
        super.onFinishInflate();
    }

    public void setPlayPauseButtonImage(boolean z) {
        this._PlayPause.setImageResource(z ? R.drawable.appwidget_pause : R.drawable.appwidget_play);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 == this.mPreviousWidth && i6 == this.mPreviousHeight) {
            return;
        }
        this.mPreviousWidth = i5;
        this.mPreviousHeight = i6;
        this._TDR = new Rect(getWidth() - getHeight(), 0, getWidth(), getHeight());
        setTouchDelegate(new TouchDelegate(this._TDR, this._PlayPause));
    }

    public void updateTrackInfo(Track track) {
        int i;
        String str;
        String sb;
        if (track != null) {
            this._AlbumArt1.setVisibility(0);
            if (track.isFullyDownloaded()) {
                this._AlbumArt1.setTrack(track, this._Owner.getImageLoader());
            } else {
                this._AlbumArt1.setFeed(track.getParentFeed(), this._Owner.getImageLoader());
            }
            i = track.hasDownloadStarted() ? 0 : R.drawable.appwidget_streaming;
            boolean z = true;
            if (track.getCurrentPlayState() == 3 && track.hasUrl()) {
                this._Title.setText(String.format(PREPARING_STREAM_S, Integer.valueOf(track.getBufferedPercent())));
                this._PrepareProgress.setVisibility(0);
            } else {
                this._PrepareProgress.setVisibility(8);
                this._Title.setText(track.displayName());
                if (track.getCurrentPlayState() == 7) {
                    sb = PLAYBACK_ERROR;
                } else if (track.getCurrentPlayState() == 8) {
                    sb = PLAYBACK_ERROR_STREAMING_DISABLED;
                } else if (track.getCurrentPlayState() == 9) {
                    sb = PLAYBACK_ERROR_CANT_CAST;
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(DateTime.formatDateTimeToday(track.getLastModifiedDate()));
                    if (track.getTotalTime() > 0) {
                        str = " • " + UIUtils.formatEpisodeTimeAsRemaining(getContext(), track);
                    } else {
                        str = "";
                    }
                    sb2.append(str);
                    sb = sb2.toString();
                    if (ChromecastDevice.isConnected()) {
                        sb = ChromecastUtils.buildCastingToTitle(sb);
                    } else if (getResources().getInteger(R.integer.mini_player_style) <= 1) {
                        z = false;
                    }
                }
                this._SubTitle.setText(sb);
                this._SubTitle.setVisibility(z ? 0 : 8);
                this._AlbumArt1.setProgress((int) (1000.0f * track.playedAsFraction()));
            }
        } else {
            this._AlbumArt1.setVisibility(8);
            i = 0;
        }
        this._Title.setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
    }
}
