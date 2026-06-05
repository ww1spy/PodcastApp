package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class EpisodeCardLayout extends CheckableRelativeLayoutEvo {
    View _PlayButton;
    private int _PlayTouchArea;
    Rect _TDR;
    private int mPreviousHeight;
    private int mPreviousWidth;

    public EpisodeCardLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public EpisodeCardLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EpisodeCardLayout(Context context, int i) {
        super(context, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this._PlayButton = findViewById(R.id.tb_playpause);
        this._PlayTouchArea = getContext().getResources().getDimensionPixelSize(R.dimen.card_play_btn_touch_area);
        super.onFinishInflate();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this._PlayButton == null) {
            return;
        }
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 == this.mPreviousWidth && i6 == this.mPreviousHeight) {
            return;
        }
        this.mPreviousWidth = i5;
        this.mPreviousHeight = i6;
        this._TDR = new Rect(0, getHeight() - this._PlayTouchArea, this._PlayTouchArea, getHeight());
        setTouchDelegate(new TouchDelegate(this._TDR, this._PlayButton));
    }
}
