package mobi.beyondpod.services.player;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.net.Uri;
import android.support.v4.app.NotificationCompat;
import android.support.v4.media.app.NotificationCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.ImageUtils;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class MediaAppWidgetProvider extends MediaAppWidgetProviderBase {
    private static final int SIZE_LARGE = 5;
    private static final int SIZE_MED = 3;
    private static final int SIZE_MINI = 1;
    private static final int SIZE_SMALL = 2;
    protected static final int SIZE_XLARGE = 6;
    private static final int SIZE_XMED = 4;
    static String TAG = "MediaAppWidgetProvider";
    public static NotificationState _NotificationState;
    public static Notification _PlayerNotification;
    private static final String STARTING_STREAM_S = CoreHelper.loadResourceString(R.string.widget_provider_starting_stream_s);
    private static final String PLAYBACK_ERROR = CoreHelper.loadResourceString(R.string.widget_provider_playback_error);
    private static final String PLAYBACK_ERROR_STREAMING_DISABLED = CoreHelper.loadResourceString(R.string.player_view_playback_error_streaming_disabled);
    private static final String PLAYLIST_IS_EMPTY = CoreHelper.loadResourceString(R.string.smart_playlist_emptyplaylist);
    private static final String PLAYLIST_IS_EMPTY_START_SMARTPLAY = CoreHelper.loadResourceString(R.string.smart_playlist_emptyplaylist_info);
    static final ComponentName THIS_APPWIDGET = new ComponentName(Configuration.packageName(), "mobi.beyondpod.services.player.MediaAppWidgetProvider");

    @Override // mobi.beyondpod.services.player.MediaAppWidgetProviderBase
    protected void initWidgets(Context context, int[] iArr) {
        if (iArr.length > 0) {
            for (int i : iArr) {
                RemoteViews remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_large);
                remoteViews.setOnClickPendingIntent(R.id.album_art, createOpenMainWindowPendingIntent(BeyondPodApplication.getInstance()));
                remoteViews.setOnClickPendingIntent(R.id.play_pause, createOpenMainWindowPendingIntent(BeyondPodApplication.getInstance()));
                pushUpdate(BeyondPodApplication.getInstance(), i, remoteViews);
            }
        }
    }

    @Override // mobi.beyondpod.services.player.MediaAppWidgetProviderBase
    protected void performWidgetUpdate(Context context, int[] iArr) {
        RemoteViews remoteViews;
        if (FeedRepository.isRepositoryAvailable()) {
            for (int i : iArr) {
                int sizeBucketForWidget = getSizeBucketForWidget(context, i);
                if (sizeBucketForWidget == 1) {
                    remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_mini);
                } else if (sizeBucketForWidget == 2) {
                    remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_small);
                } else if (sizeBucketForWidget == 3) {
                    remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_med);
                } else if (sizeBucketForWidget == 4) {
                    remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_xmed);
                } else if (sizeBucketForWidget == 6) {
                    remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_xlarge);
                } else {
                    remoteViews = new RemoteViews(BeyondPodApplication.getInstance().getPackageName(), R.layout.bp_appwidget_large);
                }
                Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
                wireRemoteViews(context, remoteViews, currentTrack, sizeBucketForWidget);
                wireRemoteNotificationViewButtons(context, remoteViews, currentTrack);
                pushUpdate(context, i, remoteViews);
            }
        }
    }

    private int getSizeBucketForWidget(Context context, int i) {
        Rect widgetSize = getWidgetSize(context, i);
        if (widgetSize.left == 0) {
            return 5;
        }
        if (widgetSize.right >= 230 && widgetSize.bottom >= 165) {
            return 6;
        }
        if (widgetSize.right > 460) {
            return 5;
        }
        if (widgetSize.right > 360) {
            return 3;
        }
        if (widgetSize.right > 240) {
            return 4;
        }
        return widgetSize.right > 165 ? 2 : 1;
    }

    @Override // mobi.beyondpod.services.player.MediaAppWidgetProviderBase
    protected void performNotificationUpdate() {
        Notification createPlayerNotification;
        if (PlayList.isCurrentlyPlaying()) {
            if ((!BeyondPodApplication.getInstance().isMainUIWindowVisible() || Configuration.showPlayerPausedNotication()) && (createPlayerNotification = createPlayerNotification(BeyondPodApplication.getInstance(), BeyondPodApplication.getInstance().playList().currentTrack(), true)) != null) {
                NotificationHelper.getInstance().updateNotification(BeyondPodApplication.getInstance(), 1, createPlayerNotification);
            }
        }
    }

    public static void wireRemoteViews(Context context, RemoteViews remoteViews, Track track, int i) {
        switch (Configuration.widgetBackgroundColor()) {
            case 2:
                remoteViews.setViewVisibility(R.id.widget_bg_image_light, 0);
                remoteViews.setViewVisibility(R.id.widget_bg_image_dark, 8);
                break;
            case 3:
                remoteViews.setViewVisibility(R.id.widget_bg_image_light, 8);
                remoteViews.setViewVisibility(R.id.widget_bg_image_dark, 8);
                break;
            default:
                remoteViews.setViewVisibility(R.id.widget_bg_image_light, 8);
                remoteViews.setViewVisibility(R.id.widget_bg_image_dark, 0);
                break;
        }
        PendingIntent createOpenMainWindowPendingIntent = createOpenMainWindowPendingIntent(context);
        if (SmartPlaylistManager.isConfigured()) {
            remoteViews.setViewVisibility(R.id.control_menu, 0);
            remoteViews.setOnClickPendingIntent(R.id.control_menu, createWidgetActionPickerPendingIntent(context));
            if (i == 6) {
                remoteViews.setOnClickPendingIntent(R.id.album_art, createOpenMainWindowPendingIntent);
                remoteViews.setOnClickPendingIntent(R.id.titleArea, createOpenMainWindowPendingIntent);
            } else {
                remoteViews.setOnClickPendingIntent(R.id.album_art, createOpenMainWindowPendingIntent);
                remoteViews.setOnClickPendingIntent(R.id.titleArea, createWidgetActionPickerPendingIntent(context));
            }
        } else {
            remoteViews.setViewVisibility(R.id.control_menu, 8);
            remoteViews.setOnClickPendingIntent(R.id.album_art, createOpenMainWindowPendingIntent);
            remoteViews.setOnClickPendingIntent(R.id.titleArea, createOpenMainWindowPendingIntent);
        }
        wireRemoteNotificationViews(NotificationState.buildFromTrack(track, i == 6, context), remoteViews);
        wireRemoteNotificationViewImage(remoteViews, track, context, i == 6);
        wireRemoteNotificationViewButtons(context, remoteViews, track);
    }

    private static void wireRemoteNotificationViewButtons(Context context, RemoteViews remoteViews, Track track) {
        wireRemoteNotificationViewButtons(context, remoteViews, true);
        if (track != null || SmartPlaylistManager.isConfigured()) {
            return;
        }
        remoteViews.setOnClickPendingIntent(R.id.play_pause, createOpenMainWindowPendingIntent(context));
    }

    @Override // mobi.beyondpod.services.player.MediaAppWidgetProviderBase
    protected ComponentName thisAppWidget() {
        return THIS_APPWIDGET;
    }

    public static Notification createPlayerNotification(Context context, Track track, boolean z) {
        if (CoreHelper.apiLevel() < 21) {
            return createPlayerNotificationRemoteViews(context, track, z);
        }
        return createPlayerNotificationMediaSession(context, track, z);
    }

    private static Notification createPlayerNotificationRemoteViews(Context context, Track track, boolean z) {
        NotificationState buildFromTrack = NotificationState.buildFromTrack(track, true, context);
        if (z && _NotificationState != null && _NotificationState.equals(buildFromTrack)) {
            return null;
        }
        _NotificationState = buildFromTrack;
        int i = (track == null || track.getCurrentPlayState() != 1) ? 0 : 1;
        Intent intent = new Intent(context, BeyondPodApplication.getInstance().masterViewClass());
        intent.setData(Uri.parse("mobi.beyondpod.services.player.MediaPlaybackService"));
        Intent intent2 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_STOP);
        intent2.setComponent(new ComponentName(context, (Class<?>) MediaPlaybackService.class));
        PendingIntent service = PendingIntent.getService(context, 0, intent2, 0);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.tray_notification_player_port);
        wireRemoteNotificationViews(_NotificationState, remoteViews);
        wireRemoteNotificationViewImage(remoteViews, track, context, false);
        wireRemoteNotificationViewButtons(context, remoteViews, false);
        NotificationCompat.Builder notificationBuilder = NotificationHelper.getInstance().getNotificationBuilder(context);
        notificationBuilder.setSmallIcon(R.drawable.stat_notify_musicplayer_play_pause, i ^ 1).setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728)).setDeleteIntent(service).setContent(remoteViews).setOngoing(false);
        _PlayerNotification = notificationBuilder.build();
        _PlayerNotification.bigContentView = new RemoteViews(context.getPackageName(), R.layout.tray_notification_player_big);
        wireRemoteNotificationViews(_NotificationState, _PlayerNotification.bigContentView);
        wireRemoteNotificationViewImage(_PlayerNotification.bigContentView, track, context, true);
        wireRemoteNotificationViewButtons(context, _PlayerNotification.bigContentView, false);
        return _PlayerNotification;
    }

    @TargetApi(21)
    private static Notification createPlayerNotificationMediaSession(Context context, Track track, boolean z) {
        NotificationState buildFromTrack = NotificationState.buildFromTrack(track, true, context);
        if (z && _NotificationState != null && _NotificationState.equals(buildFromTrack)) {
            return null;
        }
        _NotificationState = buildFromTrack;
        ComponentName componentName = new ComponentName(context, (Class<?>) MediaPlaybackService.class);
        int i = (track == null || track.getCurrentPlayState() != 1) ? 0 : 1;
        Intent intent = new Intent(context, BeyondPodApplication.getInstance().masterViewClass());
        intent.setData(Uri.parse("mobi.beyondpod.services.player.MediaPlaybackService"));
        Intent intent2 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_STOP);
        intent2.setComponent(componentName);
        PendingIntent service = PendingIntent.getService(context, 0, intent2, 0);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.tray_notification_player_port);
        wireRemoteNotificationViews(_NotificationState, remoteViews);
        wireRemoteNotificationViewImage(remoteViews, track, context, false);
        wireRemoteNotificationViewButtons(context, remoteViews, false);
        NotificationCompat.Builder notificationBuilder = NotificationHelper.getInstance().getNotificationBuilder(context);
        notificationBuilder.setSmallIcon(R.drawable.stat_notify_musicplayer_play_pause, i ^ 1).setLargeIcon(NotificationState.getBigBitmapForTrack(context, track)).setContentTitle(_NotificationState.title).setContentText(_NotificationState.artist).setContentInfo(_NotificationState.playlistSize).setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728)).setVisibility(1).setCategory(NotificationCompat.CATEGORY_TRANSPORT).setDeleteIntent(service).setContent(remoteViews);
        Intent intent3 = new Intent(MediaPlaybackService.SERVICE_NOTIFICATION_CMD_PLAY_PAUSE);
        intent3.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDTOGGLEPAUSE);
        intent3.setComponent(componentName);
        notificationBuilder.addAction(buildFromTrack.playPauseResource, context.getString(i != 0 ? R.string.player_transport_pause : R.string.player_transport_play), PendingIntent.getService(context, 0, intent3, 0));
        Intent intent4 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_BACK);
        intent4.setComponent(componentName);
        notificationBuilder.addAction(R.drawable.appwidget_skip_back, context.getString(R.string.player_transport_skip_back), PendingIntent.getService(context, 0, intent4, 0));
        Intent intent5 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_FORWARD);
        intent5.setComponent(componentName);
        notificationBuilder.addAction(R.drawable.appwidget_skip_fwd, context.getString(R.string.player_transport_skip_fwd), PendingIntent.getService(context, 0, intent5, 0));
        Intent intent6 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_NEXT_TRACK);
        intent6.setComponent(componentName);
        notificationBuilder.addAction(R.drawable.appwidget_next, context.getString(R.string.player_transport_next), PendingIntent.getService(context, 0, intent6, 0));
        if (Configuration.skipToEndButtonClickType() < 3) {
            Intent intent7 = new Intent(Configuration.skipToEndButtonClickType() < 3 ? MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_TO_END : MediaPlaybackService.SERVICE_WIDGET_CMD_NEXT_TRACK);
            intent7.setComponent(componentName);
            notificationBuilder.addAction(R.drawable.appwidget_skip_to_end, context.getString(R.string.player_transport_skip_to_end), PendingIntent.getService(context, 0, intent7, 0));
        }
        try {
            _PlayerNotification = notificationBuilder.build();
        } catch (NullPointerException unused) {
            CoreHelper.writeLogEntry(TAG, "ERROR: Internal notification builder failed.");
        }
        if (_PlayerNotification != null) {
            _PlayerNotification.bigContentView = new RemoteViews(context.getPackageName(), R.layout.tray_notification_player_big);
            wireRemoteNotificationViews(_NotificationState, _PlayerNotification.bigContentView);
            wireRemoteNotificationViewImage(_PlayerNotification.bigContentView, track, context, true);
            wireRemoteNotificationViewButtons(context, _PlayerNotification.bigContentView, false);
        }
        return _PlayerNotification;
    }

    @TargetApi(23)
    private static Notification createPlayerNotificationMediaControls(Context context, Track track, boolean z) {
        NotificationState buildFromTrack = NotificationState.buildFromTrack(track, true, context);
        if (z && _NotificationState != null && _NotificationState.equals(buildFromTrack)) {
            return null;
        }
        _NotificationState = buildFromTrack;
        ComponentName componentName = new ComponentName(context, (Class<?>) MediaPlaybackService.class);
        int i = (track == null || track.getCurrentPlayState() != 1) ? 0 : 1;
        Intent intent = new Intent(context, BeyondPodApplication.getInstance().masterViewClass());
        intent.setData(Uri.parse("mobi.beyondpod.services.player.MediaPlaybackService"));
        Intent intent2 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_STOP);
        intent2.setComponent(componentName);
        NotificationCompat.Builder deleteIntent = NotificationHelper.getInstance().getNotificationBuilder(context).setVisibility(1).setSmallIcon(R.drawable.stat_notify_musicplayer_play_pause, i ^ 1).setLargeIcon(NotificationState.getBigBitmapForTrack(context, track)).setStyle(new NotificationCompat.MediaStyle().setMediaSession(MediaSessionCompat.Token.fromToken(TrackMetadataPublisher.getInstance().getMediaSessionToken())).setShowActionsInCompactView(0, 1, 2)).setContentTitle(_NotificationState.title).setContentText(_NotificationState.artist).setShowWhen(false).setContentIntent(PendingIntent.getActivity(context, 0, intent, 134217728)).setDeleteIntent(PendingIntent.getService(context, 0, intent2, 0));
        Intent intent3 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_BACK);
        intent3.setComponent(componentName);
        deleteIntent.addAction(new NotificationCompat.Action.Builder(R.drawable.appwidget_skip_back, context.getString(R.string.player_transport_skip_back), PendingIntent.getService(context, 0, intent3, 0)).build());
        Intent intent4 = new Intent(MediaPlaybackService.SERVICE_NOTIFICATION_CMD_PLAY_PAUSE);
        intent4.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDTOGGLEPAUSE);
        intent4.setComponent(componentName);
        deleteIntent.addAction(new NotificationCompat.Action.Builder(buildFromTrack.playPauseResource, context.getString(i != 0 ? R.string.player_transport_pause : R.string.player_transport_play), PendingIntent.getService(context, 0, intent4, 0)).build());
        Intent intent5 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_FORWARD);
        intent5.setComponent(componentName);
        deleteIntent.addAction(new NotificationCompat.Action.Builder(R.drawable.appwidget_skip_fwd, context.getString(R.string.player_transport_skip_fwd), PendingIntent.getService(context, 0, intent5, 0)).build());
        Intent intent6 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_NEXT_TRACK);
        intent6.setComponent(componentName);
        deleteIntent.addAction(new NotificationCompat.Action.Builder(R.drawable.appwidget_next, context.getString(R.string.player_transport_next), PendingIntent.getService(context, 0, intent6, 0)).build());
        if (Configuration.skipToEndButtonClickType() < 3) {
            Intent intent7 = new Intent(Configuration.skipToEndButtonClickType() < 3 ? MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_TO_END : MediaPlaybackService.SERVICE_WIDGET_CMD_NEXT_TRACK);
            intent7.setComponent(componentName);
            deleteIntent.addAction(new NotificationCompat.Action.Builder(R.drawable.appwidget_skip_to_end, context.getString(R.string.player_transport_skip_to_end), PendingIntent.getService(context, 0, intent7, 0)).build());
        }
        _PlayerNotification = deleteIntent.build();
        return _PlayerNotification;
    }

    public static void wireRemoteNotificationViews(NotificationState notificationState, RemoteViews remoteViews) {
        remoteViews.setImageViewResource(R.id.play_progress, notificationState.progressResource);
        if (notificationState.title == null || notificationState.title.length() == 0) {
            remoteViews.setViewVisibility(R.id.title, 8);
        } else {
            remoteViews.setTextViewText(R.id.title, notificationState.title);
            remoteViews.setViewVisibility(R.id.title, 0);
        }
        if (notificationState.artist == null || notificationState.artist.length() == 0) {
            remoteViews.setViewVisibility(R.id.artist, 8);
        } else {
            remoteViews.setTextViewText(R.id.artist, notificationState.artist);
            remoteViews.setViewVisibility(R.id.artist, 0);
        }
        remoteViews.setTextViewText(R.id.infoMsg, notificationState.infoMessage);
        remoteViews.setTextViewText(R.id.playlist_size, notificationState.playlistSize);
        remoteViews.setImageViewResource(R.id.control_play, notificationState.playPauseResource);
        remoteViews.setViewVisibility(R.id.podcastStreamable, notificationState.streamVisibility);
        remoteViews.setImageViewResource(R.id.control_next, Configuration.skipToEndButtonClickType() < 3 ? R.drawable.appwidget_skip_to_end : R.drawable.appwidget_next);
    }

    private static void wireRemoteNotificationViewImage(RemoteViews remoteViews, Track track, Context context, boolean z) {
        if (track == null) {
            remoteViews.setImageViewResource(R.id.album_art, R.drawable.albumart_mp_unknown_list);
        } else {
            remoteViews.setImageViewBitmap(R.id.album_art, z ? NotificationState.getBigBitmapForTrack(context, track) : NotificationState.getSmallBitmapForTrack(context, track));
        }
        remoteViews.setViewVisibility(R.id.album_art, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void wireRemoteNotificationViewButtons(Context context, RemoteViews remoteViews, boolean z) {
        ComponentName componentName = new ComponentName(context, (Class<?>) MediaPlaybackService.class);
        Intent intent = new Intent(z ? MediaPlaybackService.SERVICE_WIDGET_CMD_PLAY_PAUSE : MediaPlaybackService.SERVICE_NOTIFICATION_CMD_PLAY_PAUSE);
        intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDTOGGLEPAUSE);
        intent.setComponent(componentName);
        remoteViews.setOnClickPendingIntent(R.id.play_pause, PendingIntent.getService(context, 0, intent, 0));
        Intent intent2 = new Intent(Configuration.skipToEndButtonClickType() < 3 ? MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_TO_END : MediaPlaybackService.SERVICE_WIDGET_CMD_NEXT_TRACK);
        intent2.setComponent(componentName);
        remoteViews.setOnClickPendingIntent(R.id.control_next, PendingIntent.getService(context, 0, intent2, 0));
        Intent intent3 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_FORWARD);
        intent3.setComponent(componentName);
        remoteViews.setOnClickPendingIntent(R.id.control_skip_fwd, PendingIntent.getService(context, 0, intent3, 0));
        Intent intent4 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_SKIP_BACK);
        intent4.setComponent(componentName);
        remoteViews.setOnClickPendingIntent(R.id.control_skip_back, PendingIntent.getService(context, 0, intent4, 0));
        Intent intent5 = new Intent(MediaPlaybackService.SERVICE_WIDGET_CMD_STOP);
        intent5.setComponent(componentName);
        remoteViews.setOnClickPendingIntent(R.id.control_close, PendingIntent.getService(context, 0, intent5, 0));
        if (CoreHelper.apiLevel() >= 21) {
            remoteViews.setViewVisibility(R.id.control_close, 4);
        }
        if (PlayList.isEmpty()) {
            return;
        }
        remoteViews.setOnClickPendingIntent(R.id.playlist_size, createOpenPlaylistEditorPendingIntent(context));
    }

    /* loaded from: classes.dex */
    public static class NotificationState {
        private static Bitmap _AlbumArt;
        private static Bitmap _AlbumArtBig;
        private static Bitmap _AlbumArtXBig;
        private static int _trackBigHash;
        private static int _trackHash;
        private static int _trackXBigHash;
        public CharSequence artist;
        public CharSequence infoMessage;
        public int nextVisibility;
        public int playPauseResource;
        public CharSequence playlistSize;
        public int progressResource;
        public int streamVisibility;
        public CharSequence title;

        public static NotificationState buildFromTrack(Track track, boolean z, Context context) {
            String str;
            String sb;
            NotificationState notificationState = new NotificationState();
            int i = 8;
            if (track != null) {
                Feed parentFeed = track.getParentFeed();
                String displayName = track.displayName();
                if (parentFeed.getLeftTruncateLongTrackNames()) {
                    int i2 = context.getResources().getConfiguration().orientation == 2 ? 31 : 20;
                    if (displayName.length() > i2) {
                        displayName = "..." + displayName.substring(displayName.length() - i2);
                    }
                }
                if (track.getCurrentPlayState() == 3 && track.hasUrl() && track.getBufferedPercent() < 100) {
                    sb = String.format(MediaAppWidgetProvider.STARTING_STREAM_S, Integer.valueOf(track.getBufferedPercent()));
                } else if (track.getCurrentPlayState() == 7) {
                    sb = MediaAppWidgetProvider.PLAYBACK_ERROR;
                } else if (track.getCurrentPlayState() == 8) {
                    sb = MediaAppWidgetProvider.PLAYBACK_ERROR_STREAMING_DISABLED;
                } else {
                    if (!z) {
                        sb = parentFeed.getName();
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(!parentFeed.hasUrl() ? parentFeed.getName() : DateTime.formatDateTimeToday(track.getLastModifiedDate()));
                        if (track.getTotalTime() > 0) {
                            str = " • " + UIUtils.formatEpisodeTimeAsRemaining(context, track);
                        } else {
                            str = "";
                        }
                        sb2.append(str);
                        sb = sb2.toString();
                    }
                    if (ChromecastDevice.isConnected()) {
                        sb = ChromecastUtils.buildCastingToTitle(null);
                    }
                }
                notificationState.progressResource = MediaAppWidgetProviderBase.getProgressResource(track.playedAsFraction());
                notificationState.title = displayName;
                notificationState.artist = sb;
                int playlistSize = BeyondPodApplication.getInstance().playList().playlistSize() - BeyondPodApplication.getInstance().playList().getCurrentPlayingTrackPosition();
                notificationState.playlistSize = playlistSize > 0 ? Integer.toString(playlistSize) : "";
            } else {
                notificationState.progressResource = R.drawable.appwidget_play_progress_0;
                notificationState.infoMessage = "";
                notificationState.playlistSize = "";
                notificationState.artist = SmartPlaylistManager.isConfigured() ? MediaAppWidgetProvider.PLAYLIST_IS_EMPTY_START_SMARTPLAY : "";
                notificationState.title = MediaAppWidgetProvider.PLAYLIST_IS_EMPTY;
            }
            if (track != null && track.getCurrentPlayState() == 1) {
                notificationState.playPauseResource = R.drawable.appwidget_pause;
            } else {
                notificationState.playPauseResource = R.drawable.appwidget_play;
            }
            if (track != null && !track.hasDownloadStarted()) {
                i = 0;
            }
            notificationState.streamVisibility = i;
            return notificationState;
        }

        public int hashCode() {
            return (31 * ((((((((((((((this.artist == null ? 0 : this.artist.hashCode()) + 31) * 31) + (this.infoMessage == null ? 0 : this.infoMessage.hashCode())) * 31) + this.nextVisibility) * 31) + this.playPauseResource) * 31) + (this.playlistSize == null ? 0 : this.playlistSize.hashCode())) * 31) + this.progressResource) * 31) + this.streamVisibility)) + (this.title != null ? this.title.hashCode() : 0);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof NotificationState)) {
                return false;
            }
            NotificationState notificationState = (NotificationState) obj;
            if (this.artist == null) {
                if (notificationState.artist != null) {
                    return false;
                }
            } else if (!this.artist.equals(notificationState.artist)) {
                return false;
            }
            if (this.infoMessage == null) {
                if (notificationState.infoMessage != null) {
                    return false;
                }
            } else if (!this.infoMessage.equals(notificationState.infoMessage)) {
                return false;
            }
            if (this.nextVisibility != notificationState.nextVisibility || this.playPauseResource != notificationState.playPauseResource) {
                return false;
            }
            if (this.playlistSize == null) {
                if (notificationState.playlistSize != null) {
                    return false;
                }
            } else if (!this.playlistSize.equals(notificationState.playlistSize)) {
                return false;
            }
            if (this.progressResource != notificationState.progressResource || this.streamVisibility != notificationState.streamVisibility) {
                return false;
            }
            if (this.title == null) {
                if (notificationState.title != null) {
                    return false;
                }
            } else if (!this.title.equals(notificationState.title)) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap getSmallBitmapForTrack(Context context, Track track) {
            if (_trackHash != track.hashCode()) {
                _trackHash = track.hashCode();
                int dimension = (int) context.getResources().getDimension(android.R.dimen.notification_large_icon_width);
                int dimension2 = (int) context.getResources().getDimension(android.R.dimen.notification_large_icon_height);
                _AlbumArt = null;
                _AlbumArt = ImageUtils.loadEpisodeImage(track, dimension, dimension2);
                if (_AlbumArt == null) {
                    _AlbumArt = FeedImageCache.getSizedFeedImageFor(track.getParentFeed(), dimension, dimension2);
                }
                if (_AlbumArt == null) {
                    _AlbumArt = BitmapFactory.decodeResource(context.getResources(), R.drawable.albumart_mp_unknown_list);
                }
            }
            return _AlbumArt;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap getBigBitmapForTrack(Context context, Track track) {
            if (_trackBigHash != track.hashCode()) {
                _trackBigHash = track.hashCode();
                int dimension = (int) context.getResources().getDimension(R.dimen.XLargeWidgetIcon_width);
                int dimension2 = (int) context.getResources().getDimension(R.dimen.XLargeWidgetIcon_height);
                _AlbumArtBig = null;
                _AlbumArtBig = ImageUtils.loadEpisodeImage(track, dimension, dimension2);
                if (_AlbumArtBig == null) {
                    _AlbumArtBig = FeedImageCache.getSizedFeedImageFor(track.getParentFeed(), dimension, dimension2);
                }
                if (_AlbumArtBig == null) {
                    _AlbumArtBig = BitmapFactory.decodeResource(context.getResources(), R.drawable.albumart_mp_unknown_list);
                }
            }
            return _AlbumArtBig;
        }

        private static Bitmap getXBigBitmapForTrack(Context context, Track track) {
            if (_trackXBigHash != track.hashCode()) {
                _trackXBigHash = track.hashCode();
                int dimension = (int) context.getResources().getDimension(R.dimen.XLargeNotificationIcon_width);
                int dimension2 = (int) context.getResources().getDimension(R.dimen.XLargeNotificationIcon_height);
                _AlbumArtXBig = null;
                _AlbumArtXBig = ImageUtils.loadEpisodeImage(track, dimension, dimension2);
                if (_AlbumArtXBig == null) {
                    _AlbumArtXBig = FeedImageCache.getSizedFeedImageFor(track.getParentFeed(), dimension, dimension2);
                }
                if (_AlbumArtXBig == null) {
                    _AlbumArtXBig = BitmapFactory.decodeResource(context.getResources(), R.drawable.albumart_mp_unknown_list);
                }
            }
            return _AlbumArtXBig;
        }
    }
}
