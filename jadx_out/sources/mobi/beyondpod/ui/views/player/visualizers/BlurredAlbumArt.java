package mobi.beyondpod.ui.views.player.visualizers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.os.AsyncTask;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.views.base.ImageBlur;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;

/* loaded from: classes.dex */
public class BlurredAlbumArt extends VisualizerBase {
    public static final float MAX_TRANSPARENCY = 1.0f;
    ImageView _AlbumArtBG1;
    ImageView _AlbumArtBG2;
    ImageView _AlbumArtFG;
    private int _DarkBackground;
    private boolean _FirstLoad;
    private int _ShortAnimationDuration;

    public BlurredAlbumArt(Context context) {
        this(context, null);
    }

    public BlurredAlbumArt(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BlurredAlbumArt(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._FirstLoad = true;
        this._DarkBackground = ContextCompat.getColor(getContext(), R.color.player_shaded_area_bg);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initialize();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void initialize() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int round = Math.round(getResources().getDimensionPixelSize(R.dimen.player_transport_controls_height) * 2.8f);
        int round2 = Math.round(Math.min(displayMetrics.heightPixels - round, displayMetrics.widthPixels) * 0.8f);
        int i = ((displayMetrics.heightPixels - round) - round2) / 2;
        setBackgroundColor(this._DarkBackground);
        setImageSize(round2, round2);
        setParseImageColors(false);
        this._AlbumArtBG1 = new ImageView(getContext());
        this._AlbumArtBG1.setScaleType(ImageView.ScaleType.CENTER_CROP);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this._AlbumArtBG1.setColorFilter(Color.rgb(150, 150, 150), PorterDuff.Mode.MULTIPLY);
        addView(this._AlbumArtBG1, layoutParams);
        this._AlbumArtBG2 = new ImageView(getContext());
        this._AlbumArtBG2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this._AlbumArtBG2.setColorFilter(Color.rgb(150, 150, 150), PorterDuff.Mode.MULTIPLY);
        addView(this._AlbumArtBG2, layoutParams);
        this._AlbumArtBG2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = i;
        this._AlbumArtFG = new ImageView(getContext());
        addView(this._AlbumArtFG, layoutParams2);
        this._ShortAnimationDuration = 1000;
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void loadEpisodeAlbumArt(Track track, ImageLoaderTrack imageLoaderTrack) {
        super.loadEpisodeAlbumArt(track, imageLoaderTrack);
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    protected void buildVisualisation(Track track, Bitmap bitmap, ColorScheme colorScheme) {
        setImage(this._AlbumArtFG, bitmap);
        new ImageBlurrer().execute(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground(Bitmap bitmap) {
        if (this._FirstLoad) {
            this._AlbumArtBG1.setAlpha(1.0f);
            setImage(this._AlbumArtBG1, bitmap);
            this._FirstLoad = false;
            setBackgroundColor(0);
            return;
        }
        if (this._AlbumArtBG2.getVisibility() == 8) {
            setImage(this._AlbumArtBG2, bitmap);
            crossfade(this._AlbumArtBG1, this._AlbumArtBG2);
        } else {
            setImage(this._AlbumArtBG1, bitmap);
            crossfade(this._AlbumArtBG2, this._AlbumArtBG1);
        }
    }

    private void setImage(ImageView imageView, Bitmap bitmap) {
        if (bitmap == null) {
            imageView.setImageResource(R.drawable.podcast_list_audio_bg);
        } else {
            imageView.setImageBitmap(bitmap);
        }
    }

    private void crossfade(final ImageView imageView, ImageView imageView2) {
        imageView2.setAlpha(0.0f);
        imageView2.setVisibility(0);
        setBackgroundColor(this._DarkBackground);
        imageView2.animate().alpha(1.0f).setDuration(this._ShortAnimationDuration).setListener(null).start();
        imageView.animate().alpha(0.0f).setDuration(this._ShortAnimationDuration).setListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.player.visualizers.BlurredAlbumArt.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                imageView.setVisibility(8);
                imageView.setImageBitmap(null);
                BlurredAlbumArt.this.setBackgroundColor(0);
            }
        }).start();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void onDeActivated() {
        pauseVisualizerAnimation();
        super.onDeActivated();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void pauseVisualizerAnimation() {
        super.pauseVisualizerAnimation();
    }

    /* loaded from: classes.dex */
    private class ImageBlurrer extends AsyncTask<Bitmap, Integer, Bitmap> {
        private ImageBlurrer() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Bitmap... bitmapArr) {
            try {
                return ImageBlur.fastblur(BlurredAlbumArt.this.getContext(), bitmapArr[0], 100);
            } catch (Exception unused) {
                return null;
            } catch (OutOfMemoryError unused2) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            BlurredAlbumArt.this.updateBackground(bitmap);
        }
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void duck(boolean z) {
        this._AlbumArtFG.setVisibility(z ? 8 : 0);
    }
}
