package mobi.beyondpod.ui.core.mediarouter;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.MediaRouteChooserDialog;
import android.support.v7.app.MediaRouteChooserDialogFragment;

/* loaded from: classes.dex */
public class BPMediaRouteChooserDialogFragment extends MediaRouteChooserDialogFragment {
    private static final String TAG = "BPMediaRouteChooserDialogFragment";
    private MediaRouteChooserDialog mChooserDialog;

    @Override // android.support.v7.app.MediaRouteChooserDialogFragment
    public MediaRouteChooserDialog onCreateChooserDialog(Context context, Bundle bundle) {
        this.mChooserDialog = new BPMediaRouteChooserDialog(context);
        return this.mChooserDialog;
    }
}
