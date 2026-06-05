package mobi.beyondpod.ui.core;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class CheckedRelativeLayout extends CheckableRelativeLayout implements Checkable {
    public CheckedRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CheckedRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // mobi.beyondpod.ui.core.CheckableRelativeLayout, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        setBackgroundResource(isChecked() ? R.drawable.checked_selector : 0);
    }
}
