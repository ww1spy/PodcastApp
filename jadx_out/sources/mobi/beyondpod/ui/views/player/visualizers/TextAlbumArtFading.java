package mobi.beyondpod.ui.views.player.visualizers;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Random;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.views.base.BPMediaController;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;

/* loaded from: classes.dex */
public class TextAlbumArtFading extends VisualizerBase {
    int _DefaultBGColor;
    int _DefaultC1Color;
    int _DefaultC2Color;
    String _LastTitle;
    float _MinAlpha;
    TextView _TV1;
    TextView _TV2;
    ViewPropertyAnimator _Vc1;
    ViewPropertyAnimator _Vc2;
    int _hSpacing;
    Random _random;
    int _screenHeight;
    int _screenWidth;
    int _textSize;
    int _topMartginStart;
    int _vSpacing;

    public TextAlbumArtFading(Context context) {
        this(context, null);
    }

    public TextAlbumArtFading(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextAlbumArtFading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._random = new Random();
        this._DefaultBGColor = Color.rgb(20, 80, 10);
        this._DefaultC1Color = Color.argb(115, 255, 255, 255);
        this._DefaultC2Color = Color.argb(IHttpClient.SC_RESET_CONTENT, 255, 255, 255);
        this._MinAlpha = 0.0f;
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void initialize() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        this._textSize = getResources().getDimensionPixelSize(R.dimen.player_visualizer_textArt_font_size);
        this._topMartginStart = this._textSize / 3;
        this._screenHeight = displayMetrics.heightPixels;
        this._screenWidth = displayMetrics.widthPixels;
        this._vSpacing = displayMetrics.heightPixels / 4;
        this._hSpacing = displayMetrics.widthPixels / 6;
        this._TV1 = new TextView(getContext());
        this._TV1.setTypeface(Typeface.SERIF);
        this._TV1.setTextSize(this._textSize);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(displayMetrics.widthPixels, -2);
        this._TV1.setTextColor(this._DefaultC1Color);
        layoutParams.topMargin = this._topMartginStart;
        layoutParams.leftMargin = this._hSpacing;
        this._TV1.setSingleLine();
        this._TV1.setGravity(3);
        addView(this._TV1, layoutParams);
        this._TV2 = new TextView(getContext());
        this._TV2.setTypeface(Typeface.SERIF);
        this._TV2.setTextSize(this._textSize);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(displayMetrics.widthPixels, -2);
        this._TV2.setTextColor(this._DefaultC2Color);
        layoutParams2.topMargin = (this._vSpacing * 2) - this._topMartginStart;
        layoutParams2.leftMargin = 2 * this._hSpacing;
        this._TV2.setSingleLine();
        this._TV2.setGravity(3);
        addView(this._TV2, layoutParams2);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initialize();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    protected void buildVisualisation(Track track, Bitmap bitmap, ColorScheme colorScheme) {
        buildTextFor(track.displayName(), colorScheme);
    }

    private void buildTextFor(String str, ColorScheme colorScheme) {
        setBackgroundColor(ColorScheme.normalizeColor(colorScheme.PrimaryVibrantColor, 80, 200));
        String str2 = "";
        String str3 = "";
        for (String str4 : str.split("\\s+")) {
            if (str2.length() < 6) {
                str2 = str2 + str4 + " ";
            } else if (str3.length() < 6) {
                str3 = str3 + str4 + " ";
            }
        }
        if (StringUtils.isNullOrEmpty(str3)) {
            str3 = str2;
        }
        this._TV1.setTranslationX(0.0f);
        this._TV1.setTranslationY(0.0f);
        this._TV1.setAlpha(1.0f);
        this._TV2.setTranslationX(0.0f);
        this._TV2.setTranslationY(0.0f);
        this._TV2.setAlpha(1.0f);
        this._TV1.setText(str2);
        this._TV1.setTextColor(changeColor(colorScheme.LightVibrantColor, 200, 0.0f));
        this._TV2.setText(str3);
        this._TV2.setTextColor(changeColor(colorScheme.DarkMutedColor, 200, 0.0f));
    }

    private int changeColor(int i, int i2, float f) {
        if (i2 < 0) {
            i2 = Color.alpha(i);
        }
        return Color.argb(i2, f == 0.0f ? Color.red(i) : (int) (Color.red(i) * f), f == 0.0f ? Color.green(i) : (int) (Color.green(i) * f), f == 0.0f ? Color.blue(i) : (int) (Color.blue(i) * f));
    }

    private void startBackgroundAnimationFade(final int i, final int i2) {
        final int i3 = this._textSize;
        final int i4 = i - (this._textSize / 2);
        final int i5 = i2 - this._textSize;
        if (this._Vc1 != null) {
            this._Vc1.cancel();
        }
        if (this._Vc2 != null) {
            this._Vc2.cancel();
        }
        this._Vc1 = this._TV1.animate().alpha(this._MinAlpha).setDuration(6000L).setStartDelay(BPMediaController.TOOLBAR_TIMEOUT_SHORT).setInterpolator(new LinearInterpolator()).setListener(new Animator.AnimatorListener() { // from class: mobi.beyondpod.ui.views.player.visualizers.TextAlbumArtFading.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TextAlbumArtFading.this._TV1.getAlpha() == TextAlbumArtFading.this._MinAlpha) {
                    int nextInt = TextAlbumArtFading.this._random.nextInt(i5);
                    if (nextInt % 2 == 0) {
                        nextInt *= -1;
                    }
                    int nextInt2 = TextAlbumArtFading.this._random.nextInt(i4) + i3;
                    if (nextInt2 % 2 == 0) {
                        nextInt2 *= -1;
                    }
                    TextAlbumArtFading.this._TV1.setTranslationX(nextInt);
                    TextAlbumArtFading.this._TV1.setTranslationY(nextInt2);
                }
                TextAlbumArtFading.this._Vc1.alpha(TextAlbumArtFading.this._TV1.getAlpha() == TextAlbumArtFading.this._MinAlpha ? 1.0f : TextAlbumArtFading.this._MinAlpha);
            }
        });
        this._Vc2 = this._TV2.animate().alpha(this._MinAlpha).setDuration(6000L).setInterpolator(new LinearInterpolator()).setListener(new Animator.AnimatorListener() { // from class: mobi.beyondpod.ui.views.player.visualizers.TextAlbumArtFading.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TextAlbumArtFading.this._TV2.getAlpha() == TextAlbumArtFading.this._MinAlpha) {
                    int nextInt = TextAlbumArtFading.this._random.nextInt(i2);
                    if (nextInt % 2 == 0) {
                        nextInt *= -1;
                    }
                    int nextInt2 = TextAlbumArtFading.this._random.nextInt(i);
                    if (nextInt2 % 2 == 0) {
                        nextInt2 *= -1;
                    }
                    TextAlbumArtFading.this._TV2.setTranslationX(nextInt);
                    TextAlbumArtFading.this._TV2.setTranslationY(nextInt2);
                }
                TextAlbumArtFading.this._Vc2.alpha(TextAlbumArtFading.this._TV2.getAlpha() == TextAlbumArtFading.this._MinAlpha ? 1.0f : TextAlbumArtFading.this._MinAlpha);
            }
        });
        this._Vc1.start();
        this._Vc2.start();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void onDeActivated() {
        pauseVisualizerAnimation();
        super.onDeActivated();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void startVisualizerAnimation() {
        if (this._Vc1 == null || this._Vc2 == null) {
            super.startVisualizerAnimation();
            startBackgroundAnimationFade(this._vSpacing, this._hSpacing);
        }
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void pauseVisualizerAnimation() {
        if (this._Vc1 == null || this._Vc2 == null) {
            return;
        }
        super.pauseVisualizerAnimation();
        this._Vc1.cancel();
        this._Vc2.cancel();
        this._Vc1 = null;
        this._Vc2 = null;
    }
}
