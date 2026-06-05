package mobi.beyondpod.ui.core.mediarouter;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.MediaRouteControllerDialog;
import android.support.v7.app.MediaRouteControllerDialogFragment;

/* loaded from: classes.dex */
public class BPMediaRouteControllerDialogFragment extends MediaRouteControllerDialogFragment {
    private static final String TAG = "BPMediaRouteControllerDialogFragment";
    private MediaRouteControllerDialog mControllerDialog;

    @Override // android.support.v7.app.MediaRouteControllerDialogFragment
    public MediaRouteControllerDialog onCreateControllerDialog(Context context, Bundle bundle) {
        this.mControllerDialog = new BPMediaRouteControllerDialog(context);
        return this.mControllerDialog;
    }
}
