package mobi.beyondpod.services.player;

import android.content.ComponentName;
import android.content.Context;
import android.widget.RemoteViews;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class MediaAppWidgetProviderLockscreen extends MediaAppWidgetProvider {
    static final ComponentName THIS_APPWIDGET = new ComponentName(Configuration.packageName(), "mobi.beyondpod.services.player.MediaAppWidgetProviderLockscreen");

    @Override // mobi.beyondpod.services.player.MediaAppWidgetProvider, mobi.beyondpod.services.player.MediaAppWidgetProviderBase
    protected void performWidgetUpdate(Context context, int[] iArr) {
        for (int i : iArr) {
            RemoteViews remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_lockscreen);
            wireRemoteViews(context, remoteViews, BeyondPodApplication.getInstance().playList().currentTrack(), 6);
            wireRemoteNotificationViewButtons(context, remoteViews, true);
            pushUpdate(context, i, remoteViews);
        }
    }

    @Override // mobi.beyondpod.services.player.MediaAppWidgetProvider, mobi.beyondpod.services.player.MediaAppWidgetProviderBase
    protected ComponentName thisAppWidget() {
        return THIS_APPWIDGET;
    }
}
