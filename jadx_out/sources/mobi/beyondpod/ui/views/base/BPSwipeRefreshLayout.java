package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.support.v4.widget.SwipeRefreshLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class BPSwipeRefreshLayout extends SwipeRefreshLayout {
    private static final String TAG = "BPSwipeRefreshLayout";

    public BPSwipeRefreshLayout(Context context) {
        super(context);
    }

    public BPSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to handle dispatchTouchEvent!");
            return false;
        }
    }

    @Override // android.support.v4.widget.SwipeRefreshLayout, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "failed to handle onTouchEvent!");
            return false;
        }
    }
}
