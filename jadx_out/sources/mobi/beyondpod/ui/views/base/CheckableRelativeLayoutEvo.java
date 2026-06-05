package mobi.beyondpod.ui.views.base;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class CheckableRelativeLayoutEvo extends RelativeLayout implements Checkable {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private boolean _isChecked;
    protected Drawable touchFeedbackDrawable;

    public CheckableRelativeLayoutEvo(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CheckableRelativeLayoutEvo(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckableRelativeLayoutEvo(Context context, int i) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.touchFeedbackDrawable = ContextCompat.getDrawable(getContext(), mobi.beyondpod.R.drawable.touch_selector);
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

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this._isChecked == z) {
            return;
        }
        this._isChecked = z;
        refreshDrawableState();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this._isChecked;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this._isChecked = !this._isChecked;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }
}
