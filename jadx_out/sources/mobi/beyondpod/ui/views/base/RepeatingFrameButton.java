package mobi.beyondpod.ui.views.base;

import android.R;
import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class RepeatingFrameButton extends FrameLayout {
    private long mInterval;
    private RepeatListener mListener;
    private int mRepeatCount;
    private Runnable mRepeater;
    private long mStartTime;

    /* loaded from: classes.dex */
    public interface RepeatListener {
        void onRepeat(View view, long j, int i);
    }

    public RepeatingFrameButton(Context context) {
        this(context, null);
    }

    public RepeatingFrameButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public RepeatingFrameButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInterval = 500L;
        this.mRepeater = new Runnable() { // from class: mobi.beyondpod.ui.views.base.RepeatingFrameButton.1
            @Override // java.lang.Runnable
            public void run() {
                RepeatingFrameButton.this.doRepeat(false);
                if (RepeatingFrameButton.this.isPressed()) {
                    RepeatingFrameButton.this.postDelayed(this, RepeatingFrameButton.this.mInterval);
                }
            }
        };
        setFocusable(true);
        setLongClickable(true);
    }

    public void setRepeatListener(RepeatListener repeatListener, long j) {
        this.mListener = repeatListener;
        this.mInterval = j;
    }

    @Override // android.view.View
    public boolean performLongClick() {
        this.mStartTime = SystemClock.elapsedRealtime();
        this.mRepeatCount = 0;
        post(this.mRepeater);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            removeCallbacks(this.mRepeater);
            if (this.mStartTime != 0) {
                doRepeat(true);
                this.mStartTime = 0L;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 23 || i == 66) {
            removeCallbacks(this.mRepeater);
            if (this.mStartTime != 0) {
                doRepeat(true);
                this.mStartTime = 0L;
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doRepeat(boolean z) {
        int i;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.mListener != null) {
            RepeatListener repeatListener = this.mListener;
            long j = elapsedRealtime - this.mStartTime;
            if (z) {
                i = -1;
            } else {
                i = this.mRepeatCount;
                this.mRepeatCount = i + 1;
            }
            repeatListener.onRepeat(this, j, i);
        }
    }
}
