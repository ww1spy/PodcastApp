package mobi.beyondpod.services.player;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.RemoteViews;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.Constants;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.ui.dialogs.WidgetActionPicker;

/* loaded from: classes.dex */
public abstract class MediaAppWidgetProviderBase extends AppWidgetProvider implements PlayListEvents.PlayListEventListener, RepositoryEvents.RepositoryEventListener {
    static String TAG = MediaAppWidgetProvider.class.getSimpleName();
    Handler _handler = new Handler(Looper.getMainLooper());

    public static int getProgressResource(float f) {
        double d = f;
        return d < 0.05d ? R.drawable.appwidget_play_progress_0 : (d < 0.05d || d >= 0.2d) ? (d < 0.2d || d >= 0.3d) ? (d < 0.3d || d >= 0.4d) ? (d < 0.4d || d >= 0.5d) ? (d < 0.5d || d >= 0.6d) ? (d < 0.6d || d >= 0.7d) ? (d < 0.7d || d >= 0.8d) ? (d < 0.8d || d >= 0.9d) ? (d < 0.9d || d >= 0.95d) ? (d < 0.95d || d >= 0.97d) ? R.drawable.appwidget_play_progress_11 : R.drawable.appwidget_play_progress_10 : R.drawable.appwidget_play_progress_9 : R.drawable.appwidget_play_progress_8 : R.drawable.appwidget_play_progress_7 : R.drawable.appwidget_play_progress_6 : R.drawable.appwidget_play_progress_5 : R.drawable.appwidget_play_progress_4 : R.drawable.appwidget_play_progress_3 : R.drawable.appwidget_play_progress_2 : R.drawable.appwidget_play_progress_1;
    }

    protected void initWidgets(Context context, int[] iArr) {
    }

    protected abstract void performNotificationUpdate();

    protected abstract void performWidgetUpdate(Context context, int[] iArr);

    protected abstract ComponentName thisAppWidget();

    public void initialize() {
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
        CoreHelper.writeTraceEntry(TAG, "WidgetProvider initialized");
    }

    public void refreshViews() {
        this._handler.post(new Runnable() { // from class: mobi.beyondpod.services.player.MediaAppWidgetProviderBase.1
            @Override // java.lang.Runnable
            public void run() {
                MediaAppWidgetProviderBase.this.refreshViewsInternal();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshViewsInternal() {
        int[] ids = getIds();
        if (ids.length > 0) {
            performWidgetUpdate(BeyondPodApplication.getInstance(), ids);
        }
        performNotificationUpdate();
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        performWidgetUpdate(context, iArr);
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onEnabled(Context context) {
        CoreHelper.writeTraceEntry(TAG, "Widgets enabled! Initializing...");
        initWidgets(context, getIds());
        if (FeedRepository.isRepositoryAvailable()) {
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Found that the repository is not loaded when enabling widgets! Loading now...");
        FeedRepository.initializeAndLoadRepository();
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        onUpdate(context, appWidgetManager, new int[]{i});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void pushUpdate(Context context, int i, RemoteViews remoteViews) {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        if (appWidgetManager != null) {
            try {
                appWidgetManager.updateAppWidget(i, remoteViews);
            } catch (Throwable unused) {
                CoreHelper.writeTraceEntry(TAG, "failed to publish widget update");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Rect getWidgetSize(Context context, int i) {
        Bundle appWidgetOptions = AppWidgetManager.getInstance(context).getAppWidgetOptions(i);
        return new Rect(appWidgetOptions.getInt("appWidgetMinWidth", 0), appWidgetOptions.getInt("appWidgetMinHeight", 0), appWidgetOptions.getInt("appWidgetMaxWidth", 0), appWidgetOptions.getInt("appWidgetMaxHeight", 0));
    }

    private int[] getIds() {
        return AppWidgetManager.getInstance(BeyondPodApplication.getInstance()).getAppWidgetIds(thisAppWidget());
    }

    public boolean hasInstances() {
        return getIds().length > 0;
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        refreshViews();
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 11) {
            Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
            if (repositoryEvent.Track != null && repositoryEvent.Track == currentTrack) {
                refreshViews();
            }
        }
        if (repositoryEvent.Type == 0 || repositoryEvent.Type == 1 || repositoryEvent.Type == 2) {
            refreshViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PendingIntent createOpenPlaylistEditorPendingIntent(Context context) {
        Intent intent = new Intent(context, BeyondPodApplication.getInstance().masterViewClass());
        intent.setFlags(536870912);
        intent.setData(Uri.parse(Constants.INTENT_ACTION_OPEN_PLAYLIST));
        return PendingIntent.getActivity(context, 0, intent, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PendingIntent createOpenMainWindowPendingIntent(Context context) {
        Intent intent = new Intent(context, BeyondPodApplication.getInstance().masterViewClass());
        intent.setFlags(536870912);
        intent.setData(Uri.parse(Constants.INTENT_ACTION_WIDGET));
        return PendingIntent.getActivity(context, 0, intent, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PendingIntent createWidgetActionPickerPendingIntent(Context context) {
        return PendingIntent.getActivity(context, 0, new Intent(context, (Class<?>) WidgetActionPicker.class), 0);
    }
}
