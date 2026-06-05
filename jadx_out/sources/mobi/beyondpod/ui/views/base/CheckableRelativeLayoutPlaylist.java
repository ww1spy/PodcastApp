package mobi.beyondpod.ui.views.base;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class CheckableRelativeLayoutPlaylist extends CheckableRelativeLayoutEvo {
    public CheckableRelativeLayoutPlaylist(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CheckableRelativeLayoutPlaylist(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.ui.views.base.CheckableRelativeLayoutEvo, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.touchFeedbackDrawable = ContextCompat.getDrawable(getContext(), R.drawable.playlist_item_selector);
    }
}
