package mobi.beyondpod.ui.core;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewParent;
import android.widget.TimePicker;

/* loaded from: classes.dex */
public class ScrollableTimePicker extends TimePicker {
    public ScrollableTimePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public ScrollableTimePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScrollableTimePicker(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (motionEvent.getAction() != 0 || (parent = getParent()) == null) {
            return false;
        }
        parent.requestDisallowInterceptTouchEvent(true);
        return false;
    }
}
