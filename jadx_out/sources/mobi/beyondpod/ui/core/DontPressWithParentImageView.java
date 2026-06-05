package mobi.beyondpod.ui.core;

import android.content.Context;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class DontPressWithParentImageView extends AppCompatImageView {
    public DontPressWithParentImageView(Context context) {
        super(context);
    }

    public DontPressWithParentImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DontPressWithParentImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (z && ((View) getParent()).isPressed()) {
            return;
        }
        super.setPressed(z);
    }
}
