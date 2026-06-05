package mobi.beyondpod.ui.core;

import android.content.Context;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class DontPressWithParentTextView extends AppCompatTextView {
    public DontPressWithParentTextView(Context context, AttributeSet attributeSet) {
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
