package mobi.beyondpod.ui.core;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class TouchableFrameLayout extends FrameLayout {
    private Drawable touchFeedbackDrawable;

    public TouchableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TouchableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TouchableFrameLayout(Context context, int i) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.touchFeedbackDrawable = ContextCompat.getDrawable(getContext(), R.drawable.touch_selector);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.touchFeedbackDrawable.setBounds(0, 0, getWidth(), getHeight());
        this.touchFeedbackDrawable.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.touchFeedbackDrawable != null) {
            this.touchFeedbackDrawable.setState(getDrawableState());
            invalidate();
        }
        super.drawableStateChanged();
    }
}
