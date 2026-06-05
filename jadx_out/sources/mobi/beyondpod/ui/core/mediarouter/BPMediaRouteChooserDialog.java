package mobi.beyondpod.ui.core.mediarouter;

import android.content.Context;
import android.support.v7.app.MediaRouteChooserDialog;
import mobi.beyondpod.R;
import mobi.beyondpod.services.player.PlayList;

/* loaded from: classes.dex */
public class BPMediaRouteChooserDialog extends MediaRouteChooserDialog {
    private static final String TAG = "MediaRouteChooserDialog";

    public BPMediaRouteChooserDialog(Context context) {
        super(context);
    }

    public BPMediaRouteChooserDialog(Context context, int i) {
        super(context, i);
    }

    @Override // android.support.v7.app.MediaRouteChooserDialog, android.support.v7.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        if (PlayList.isCurrentlyPlaying()) {
            super.setTitle(getContext().getResources().getString(R.string.cc_cast_to));
        } else {
            super.setTitle(charSequence);
        }
    }
}
