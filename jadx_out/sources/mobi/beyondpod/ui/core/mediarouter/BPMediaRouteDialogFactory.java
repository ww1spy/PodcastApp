package mobi.beyondpod.ui.core.mediarouter;

import android.support.annotation.NonNull;
import android.support.v7.app.MediaRouteChooserDialogFragment;
import android.support.v7.app.MediaRouteDialogFactory;

/* loaded from: classes.dex */
public class BPMediaRouteDialogFactory extends MediaRouteDialogFactory {
    private static final String TAG = "BPMediaRouteDialogFactory";

    @Override // android.support.v7.app.MediaRouteDialogFactory
    @NonNull
    public MediaRouteChooserDialogFragment onCreateChooserDialogFragment() {
        return new BPMediaRouteChooserDialogFragment();
    }

    @Override // android.support.v7.app.MediaRouteDialogFactory
    @NonNull
    public BPMediaRouteControllerDialogFragment onCreateControllerDialogFragment() {
        return new BPMediaRouteControllerDialogFragment();
    }
}
