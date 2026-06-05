package mobi.beyondpod.ui.views.player.visualizers;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.FrameLayout;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.views.base.colormatcher.ColorScheme;
import mobi.beyondpod.ui.views.player.visualizers.VisualizerOptions;

/* loaded from: classes.dex */
public class TextAlbumArt extends VisualizerBase {
    VisualizerView _TV1;
    int _hSpacing;
    int _screenHeight;
    int _screenWidth;
    int _textSize;
    int _topMartginStart;
    int _vSpacing;

    public TextAlbumArt(Context context) {
        this(context, null);
    }

    public TextAlbumArt(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextAlbumArt(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void initialize() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        this._textSize = displayMetrics.heightPixels / 7;
        this._topMartginStart = this._textSize / 3;
        this._screenHeight = displayMetrics.heightPixels;
        this._screenWidth = displayMetrics.widthPixels;
        this._vSpacing = displayMetrics.heightPixels / 4;
        this._hSpacing = displayMetrics.widthPixels / 6;
        this._TV1 = new VisualizerView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, 0);
        addView(this._TV1, layoutParams);
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
        if (StringUtils.isNullOrEmpty(str)) {
            str = "N/A";
        } else {
            while (str.length() < 50) {
                str = str + " • " + str;
            }
        }
        this._TV1.setText(str, new VisualizerOptions.Builder().setColor(changeColor(colorScheme.LightVibrantColor, 200, 0.0f)).setTextSize(180).setTypeface(Typeface.SERIF).build());
    }

    private int changeColor(int i, int i2, float f) {
        if (i2 < 0) {
            i2 = Color.alpha(i);
        }
        return Color.argb(i2, f == 0.0f ? Color.red(i) : (int) (Color.red(i) * f), f == 0.0f ? Color.green(i) : (int) (Color.green(i) * f), f == 0.0f ? Color.blue(i) : (int) (Color.blue(i) * f));
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void onDeActivated() {
        pauseVisualizerAnimation();
        super.onDeActivated();
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void startVisualizerAnimation() {
        super.startVisualizerAnimation();
        if (this._TV1 != null) {
            this._TV1.resumeAnimation();
        }
    }

    @Override // mobi.beyondpod.ui.views.player.visualizers.VisualizerBase
    public void pauseVisualizerAnimation() {
        super.pauseVisualizerAnimation();
        if (this._TV1 != null) {
            this._TV1.pauseAnimation();
        }
    }
}
