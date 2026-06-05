package mobi.beyondpod.ui.views.player.visualizers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;

/* loaded from: classes.dex */
public class FullScreenAlbumArt extends VisualizerBase {
    public static final float MAX_TRANSPARENCY = 1.0f;
    ImageView _AlbumArt;
    ImageView _AlbumArt1;
    private boolean _FirstLoad;
    private int _ShortAnimationDuration;

    public FullScreenAlbumArt(Context context) {
        this(context, null);
    }

    public FullScreenAlbumArt(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FullScreenAlbumArt(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._FirstLoad = true;
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
        int min = Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels);
        setImageSize(min, min);
        setParseImageColors(false);
        this._AlbumArt = new ImageView(getContext());
        this._AlbumArt.setScaleType(ImageView.ScaleType.CENTER_CROP);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this._AlbumArt.setColorFilter(Color.rgb(123, 123, 123), PorterDuff.Mode.MULTIPLY);
        addView(this._AlbumArt, layoutParams);
        this._AlbumArt1 = new ImageView(getContext());
        this._AlbumArt1.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this._AlbumArt1.setColorFilter(Color.rgb(123, 123, 123), PorterDuff.Mode.MULTIPLY);
        addView(this._AlbumArt1, layoutParams);
        this._AlbumArt1.setVisibility(8);
        this._ShortAnimationDuration = 1000;
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    protected void buildVisualisation(Track track, Bitmap bitmap, ColorScheme colorScheme) {
        if (this._FirstLoad) {
            this._AlbumArt.setAlpha(1.0f);
            setImage(this._AlbumArt, bitmap);
            this._FirstLoad = false;
        } else if (this._AlbumArt1.getVisibility() == 8) {
            setImage(this._AlbumArt1, bitmap);
            crossfade(this._AlbumArt, this._AlbumArt1);
        } else {
            setImage(this._AlbumArt, bitmap);
            crossfade(this._AlbumArt1, this._AlbumArt);
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
        imageView2.animate().alpha(1.0f).setDuration(this._ShortAnimationDuration).setListener(null).start();
        imageView.animate().alpha(0.0f).setDuration(this._ShortAnimationDuration).setListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.player.visualizers.FullScreenAlbumArt.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                imageView.setVisibility(8);
                imageView.setImageBitmap(null);
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
}
