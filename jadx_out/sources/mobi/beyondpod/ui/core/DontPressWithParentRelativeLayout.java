package mobi.beyondpod.ui.core;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class DontPressWithParentRelativeLayout extends RelativeLayout {
    public DontPressWithParentRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (z && ((View) getParent()).isPressed()) {
            return;
        }
        super.setPressed(z);
    }
}
