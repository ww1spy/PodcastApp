package mobi.beyondpod.ui.views.player.visualizers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;
import mobi.beyondpod.ui.views.base.colormatcher.DominantColorCalculator;

/* loaded from: classes.dex */
public abstract class VisualizerBase extends FrameLayout {
    private static final int REFRESH = 1;
    private static ColorScheme _DefaultColors = new ColorScheme(Color.rgb(20, 80, 10), Color.rgb(20, 80, 10), Color.argb(115, 255, 255, 255), Color.argb(200, 255, 255, 255), Color.rgb(180, 180, 180), Color.rgb(90, 90, 90), Color.rgb(20, 80, 10), Color.rgb(20, 80, 10), Color.rgb(20, 80, 10));
    private final Handler _Handler;
    private int _ImageHeight;
    private int _ImageWidth;
    String _LastEpisode;
    private boolean _ParseImageColors;

    protected abstract void buildVisualisation(Track track, Bitmap bitmap, ColorScheme colorScheme);

    public void duck(boolean z) {
    }

    public abstract void initialize();

    public void pauseVisualizerAnimation() {
    }

    public void startVisualizerAnimation() {
    }

    public VisualizerBase(Context context) {
        this(context, null);
    }

    public VisualizerBase(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisualizerBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._ImageWidth = -1;
        this._ImageHeight = -1;
        this._ParseImageColors = false;
        this._Handler = new Handler() { // from class: mobi.beyondpod.ui.views.player.visualizers.VisualizerBase.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    if (PlayList.isCurrentlyPlaying()) {
                        VisualizerBase.this.startVisualizerAnimation();
                    } else {
                        VisualizerBase.this.pauseVisualizerAnimation();
                    }
                    VisualizerBase.this.scheduleRefreshIn(1000L);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setImageSize(int i, int i2) {
        this._ImageWidth = i;
        this._ImageHeight = i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setParseImageColors(boolean z) {
        this._ParseImageColors = z;
    }

    public void loadEpisodeAlbumArt(final Track track, ImageLoaderTrack imageLoaderTrack) {
        String generateFeedImageUrl;
        if (track == null) {
            return;
        }
        if (this._ImageHeight == -1) {
            this._ImageHeight = getResources().getDimensionPixelSize(R.dimen.mini_player_image_height);
            this._ImageWidth = getResources().getDimensionPixelSize(R.dimen.mini_player_image_width);
        }
        if (track.isFullyDownloaded()) {
            generateFeedImageUrl = FadingNetworkImageViewTrack.getEpisodeImageUrl(track);
        } else {
            generateFeedImageUrl = FadingNetworkImageViewTrack.generateFeedImageUrl(track.getParentFeed());
        }
        String str = generateFeedImageUrl;
        if (StringUtils.isNullOrEmpty(str)) {
            buildVisualisation(track, null, _DefaultColors);
        } else {
            if (StringUtils.equalsIgnoreCase(str, this._LastEpisode)) {
                return;
            }
            this._LastEpisode = str;
            imageLoaderTrack.get(str, track.isFullyDownloaded() ? track : null, track.getParentFeed(), new ImageLoader.ImageListener() { // from class: mobi.beyondpod.ui.views.player.visualizers.VisualizerBase.1
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    VisualizerBase.this.buildVisualisation(track, null, VisualizerBase._DefaultColors);
                }

                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    Bitmap bitmap = imageContainer.getBitmap();
                    if (bitmap != null) {
                        if (!VisualizerBase.this._ParseImageColors) {
                            VisualizerBase.this.buildVisualisation(track, bitmap, VisualizerBase._DefaultColors);
                            return;
                        }
                        try {
                            VisualizerBase.this.buildVisualisation(track, bitmap, DominantColorCalculator.getColorScheme(bitmap));
                        } catch (Exception unused) {
                            VisualizerBase.this.buildVisualisation(track, bitmap, VisualizerBase._DefaultColors);
                        }
                    }
                }
            }, this._ImageWidth, this._ImageHeight);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRefreshIn(long j) {
        Message obtainMessage = this._Handler.obtainMessage(1);
        this._Handler.removeMessages(1);
        this._Handler.sendMessageDelayed(obtainMessage, j);
    }

    public void onActivated() {
        scheduleRefreshIn(200L);
    }

    public void onDeActivated() {
        this._Handler.removeMessages(1);
    }

    public void doCleanup() {
        this._Handler.removeMessages(1);
        pauseVisualizerAnimation();
    }

    public void show() {
        setVisibility(0);
        onActivated();
    }

    public void hide() {
        setVisibility(8);
        onDeActivated();
    }
}
