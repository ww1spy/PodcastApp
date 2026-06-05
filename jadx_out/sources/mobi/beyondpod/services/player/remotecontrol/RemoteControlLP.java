package mobi.beyondpod.services.player.remotecontrol;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.media.MediaMetadataCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.services.player.ChromecastUtils;
import mobi.beyondpod.services.player.MediaButtonIntentReceiver;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.impl.MediaPlayerFactory;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.ImageUtils;
import mobi.beyondpod.ui.views.base.UIUtils;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(21)
/* loaded from: classes.dex */
public class RemoteControlLP extends RemoteControlClientHelper2 {
    public static final int ALBUM_ART_IMAGE_SIZE = 600;
    public static final int ALBUM_ICON_IMAGE_SIZE = 128;
    private static final String CUSTOM_ACTION_PLAYBACK_SPEED = "mobi.beyondpod.auto.PLAYBACKSPEED";
    private static final String CUSTOM_ACTION_SEEK_BACKWARD = "mobi.beyondpod.auto.SEEK_BACKWARD";
    private static final String CUSTOM_ACTION_SEEK_FORWARD = "mobi.beyondpod.auto.SEEK_FORWARD";
    private static final String CUSTOM_ACTION_SKIP_TO_END = "mobi.beyondpod.auto.SKIP_TO_END";
    public static final int FEED_IMAGE_SIZE = 200;
    private static String TAG = "RemoteControlLP";
    private PendingIntent _MediaButtonReceiver;
    private MediaSession _Session;
    private boolean _PersistentSession = false;
    private MediaSession.Callback _MediaSessionCallback = new MediaSession.Callback() { // from class: mobi.beyondpod.services.player.remotecontrol.RemoteControlLP.1
        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command Play");
            callServiceFor(MediaPlaybackService.CMDRESUME, -1L);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            Feed feedById;
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession  PlayFromMediaId: " + str);
            super.onPlayFromMediaId(str, bundle);
            int i = 0;
            if (str.startsWith(MediaIdHelper.AUTO_MEDIA_ID_SMARTPLAYS)) {
                int parseInt = Integer.parseInt(MediaIdHelper.getSmartplayIdFromMediaId(str));
                String smartplayTrackPathFromMediaId = MediaIdHelper.getSmartplayTrackPathFromMediaId(str);
                if (parseInt > 0) {
                    List<Track> generatePlaylist = SmartPlaylistManager.getSmartPlaylist(parseInt).generatePlaylist();
                    PlayList playList = BeyondPodApplication.getInstance().playList();
                    playList.loadTracks(generatePlaylist, false);
                    Track trackByPath = StringUtils.isNullOrEmpty(smartplayTrackPathFromMediaId) ? null : FeedRepository.getTrackByPath(smartplayTrackPathFromMediaId);
                    if (trackByPath != null) {
                        if (playList.hasTrack(trackByPath)) {
                            i = playList.getTrackPosition(trackByPath);
                        } else {
                            playList.addTrack(trackByPath);
                            playList.moveTrack(playList.getTrackPosition(trackByPath), 0);
                        }
                    }
                    if (PlayList.isEmpty()) {
                        return;
                    }
                    CommandManagerBase.cmdPlayPosition(i);
                    return;
                }
                return;
            }
            if (str.startsWith(MediaIdHelper.AUTO_MEDIA_ID_FEEDS)) {
                UUID feedIdFromMediaId = MediaIdHelper.getFeedIdFromMediaId(str);
                String feedTrackPathFromMediaId = MediaIdHelper.getFeedTrackPathFromMediaId(str);
                if (!StringUtils.isNullOrEmpty(feedTrackPathFromMediaId) && feedIdFromMediaId != null) {
                    Track trackByPath2 = FeedRepository.getTrackByPath(feedTrackPathFromMediaId);
                    if (trackByPath2 != null) {
                        CommandManagerBase.cmdLoadPlaylistAndPlayTrack(FeedRepository.getFeedById(feedIdFromMediaId).tracksAndSubTracks(), trackByPath2, false);
                        return;
                    }
                    return;
                }
                UUID feedUIDFromMediaId = MediaIdHelper.getFeedUIDFromMediaId(str);
                if (feedUIDFromMediaId == null || (feedById = FeedRepository.getFeedById(feedUIDFromMediaId)) == null) {
                    return;
                }
                TrackList tracksAndSubTracks = feedById.tracksAndSubTracks();
                if (tracksAndSubTracks.size() > 0) {
                    TrackSorter trackSorter = new TrackSorter();
                    trackSorter.SortOrder = feedById.getLocalOrInheritedTrackSortOrder();
                    Collections.sort(tracksAndSubTracks, trackSorter);
                    CommandManagerBase.cmdLoadPlaylistAndPlayTrack(tracksAndSubTracks, tracksAndSubTracks.get(0), false);
                    return;
                }
                return;
            }
            if (str.startsWith(MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES)) {
                ArrayList arrayList = new ArrayList();
                String categoryIdFromMediaId = MediaIdHelper.getCategoryIdFromMediaId(str);
                String categoryTrackPathFromMediaId = MediaIdHelper.getCategoryTrackPathFromMediaId(str);
                if (!StringUtils.isNullOrEmpty(categoryTrackPathFromMediaId) && !StringUtils.isNullOrEmpty(categoryIdFromMediaId)) {
                    Iterator<Feed> it = FeedRepository.getFeedsInCategory(CategoryManager.getCategoryByValue(categoryIdFromMediaId)).iterator();
                    while (it.hasNext()) {
                        arrayList.addAll(it.next().tracksAndSubTracks());
                    }
                    Track trackByPath3 = FeedRepository.getTrackByPath(categoryTrackPathFromMediaId);
                    if (trackByPath3 != null) {
                        CommandManagerBase.cmdLoadPlaylistAndPlayTrack(arrayList, trackByPath3, false);
                        return;
                    }
                    return;
                }
                String categoryNameFromMediaId = MediaIdHelper.getCategoryNameFromMediaId(str);
                if (StringUtils.isNullOrEmpty(categoryNameFromMediaId)) {
                    return;
                }
                Iterator<Feed> it2 = FeedRepository.getFeedsInCategory(CategoryManager.getCategoryByValue(categoryNameFromMediaId)).iterator();
                while (it2.hasNext()) {
                    arrayList.addAll(it2.next().tracksAndSubTracks());
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList, new TrackSorter(Configuration.getPodcastsSortOrder()));
                    CommandManagerBase.cmdLoadPlaylistAndPlayTrack(arrayList, (Track) arrayList.get(0), false);
                }
            }
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession  PlayFromSearch: " + str);
            BeyondPodApplication.getInstance().playFromQuery(str);
            super.onPlayFromSearch(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToQueueItem(long j) {
            PlayList playList = BeyondPodApplication.getInstance().playList();
            for (int i = 0; i != playList.playlistSize(); i++) {
                Track trackAtPosition = playList.getTrackAtPosition(i);
                if (trackAtPosition != null && trackAtPosition.hashCode() == j) {
                    CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession Queue track selected: " + trackAtPosition.displayName());
                    CommandManagerBase.cmdPlayPosition(i);
                    return;
                }
            }
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession  SkipToQueueItem is unable to find track for id " + j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command Pause");
            callServiceFor(MediaPlaybackService.CMDPAUSE, -1L);
            super.onPause();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command SkipToNext");
            callServiceFor(MediaButtonIntentReceiver.translateCommand(Configuration.BTNextButtonAction()), -1L);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command SkipToPrevious");
            callServiceFor(MediaButtonIntentReceiver.translateCommand(Configuration.BTPreviousButtonAction()), -1L);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command FastForward");
            callServiceFor(Configuration.BTNextButtonAction() == 2 ? MediaPlaybackService.CMD_SKIP_BACKWARD : MediaPlaybackService.CMD_SKIP_FORWARD, -1L);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command Rewind");
            callServiceFor(Configuration.BTPreviousButtonAction() == 1 ? MediaPlaybackService.CMD_SKIP_FORWARD : MediaPlaybackService.CMD_SKIP_BACKWARD, -1L);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command stop");
            callServiceFor(MediaPlaybackService.CMDPAUSE, -1L);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSeekTo(long j) {
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command SeekTo: " + j);
            callServiceFor(MediaPlaybackService.CMD_SEEK_TO_LOCATION, j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCustomAction(String str, Bundle bundle) {
            char c;
            CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "*** BPMediaSession command CustomAction: " + str);
            super.onCustomAction(str, bundle);
            int hashCode = str.hashCode();
            if (hashCode == -1680534368) {
                if (str.equals(RemoteControlLP.CUSTOM_ACTION_SEEK_FORWARD)) {
                    c = 2;
                }
                c = 65535;
            } else if (hashCode == -142839190) {
                if (str.equals(RemoteControlLP.CUSTOM_ACTION_PLAYBACK_SPEED)) {
                    c = 3;
                }
                c = 65535;
            } else if (hashCode != 929215157) {
                if (hashCode == 1081705800 && str.equals(RemoteControlLP.CUSTOM_ACTION_SEEK_BACKWARD)) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals(RemoteControlLP.CUSTOM_ACTION_SKIP_TO_END)) {
                    c = 0;
                }
                c = 65535;
            }
            switch (c) {
                case 0:
                    callServiceFor(MediaPlaybackService.CMD_SKIP_TO_END, 0L);
                    return;
                case 1:
                    callServiceFor(MediaPlaybackService.CMD_SKIP_BACKWARD, 0L);
                    return;
                case 2:
                    callServiceFor(MediaPlaybackService.CMD_SKIP_FORWARD, 0L);
                    return;
                case 3:
                    cyclePlaybackSpeed();
                    return;
                default:
                    return;
            }
        }

        private void callServiceFor(String str, long j) {
            Intent intent = new Intent(BeyondPodApplication.getInstance().getApplicationContext(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, str);
            if (MediaPlaybackService.CMD_SEEK_TO_LOCATION.equals(str)) {
                intent.putExtra(MediaPlaybackService.CMD_SEEK_TO_LOCATION, j);
            }
            if (BeyondPodApplication.getInstance().sendCommandToVideoPlayer(intent)) {
                return;
            }
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }

        private void cyclePlaybackSpeed() {
            float playbackSpeedNormal = Configuration.playbackSpeedNormal();
            String str = MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_NORMAL;
            if (Configuration.defaultPlaybackSpeed() == Configuration.playbackSpeedNormal()) {
                playbackSpeedNormal = Configuration.playbackSpeed1();
                str = MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_1;
            } else if (Configuration.defaultPlaybackSpeed() == Configuration.playbackSpeed1()) {
                playbackSpeedNormal = Configuration.playbackSpeed2();
                str = MediaPlaybackService.CMD_SET_PLAYBACK_SPEED_2;
            }
            Configuration.setDefaultPlaybackSpeed(playbackSpeedNormal);
            callServiceFor(str, 0L);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface AlbumArtLoadedListener {
        void onAlbumArtLoaded(Bitmap bitmap, Bitmap bitmap2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Holder {
        Holder() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static final RemoteControlLP getInstance(PendingIntent pendingIntent) {
            return new RemoteControlLP(pendingIntent);
        }
    }

    public RemoteControlLP(PendingIntent pendingIntent) {
        this._MediaButtonReceiver = pendingIntent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaSession getSession() {
        if (this._Session == null) {
            this._PersistentSession = false;
            this._Session = new MediaSession(BeyondPodApplication.getInstance(), "BeyondPod");
            this._Session.setMediaButtonReceiver(this._MediaButtonReceiver);
            this._Session.setCallback(this._MediaSessionCallback);
            this._Session.setFlags(3);
            Bundle bundle = new Bundle();
            bundle.putBoolean("com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_QUEUE", true);
            this._Session.setExtras(bundle);
            this._Session.setActive(true);
            CoreHelper.writeTraceEntry(TAG, "BPMediaSession created...");
        }
        return this._Session;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void editMetadata(Track track, Bitmap bitmap, Bitmap bitmap2) {
        String str;
        String sb;
        String formatDateTimeToday = DateTime.formatDateTimeToday(track.getLastModifiedDate());
        if (track.getParentFeed().hasUrl()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(formatDateTimeToday);
            if (track.getTotalTime() > 0) {
                str = " - " + track.totalTimeAsMinuteString();
            } else {
                str = "";
            }
            sb2.append(str);
            sb = sb2.toString();
        } else {
            sb = track.getParentFeed().getName();
        }
        String name = track.getParentFeed().getName();
        if (ChromecastDevice.isConnected()) {
            sb = ChromecastUtils.buildCastingToTitle(null);
            name = null;
        }
        MediaMetadata.Builder putLong = new MediaMetadata.Builder().putString("android.media.metadata.ARTIST", sb).putString("android.media.metadata.TITLE", track.displayName()).putString(MediaMetadataCompat.METADATA_KEY_DATE, formatDateTimeToday).putLong("android.media.metadata.DURATION", track.getTotalTime() * 1000);
        if (bitmap != null) {
            putLong.putBitmap(MediaMetadataCompat.METADATA_KEY_ALBUM_ART, bitmap);
        }
        if (bitmap2 != null) {
            putLong.putBitmap(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, bitmap2);
        }
        if (!StringUtils.isNullOrEmpty(name)) {
            putLong.putString(MediaMetadataCompat.METADATA_KEY_ALBUM, name);
        }
        getSession().setMetadata(putLong.build());
        notifyPlaylistChanged();
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void notifyPlaylistChanged() {
        updateSessionQueue();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [mobi.beyondpod.services.player.remotecontrol.RemoteControlLP$2] */
    private void updateSessionQueue() {
        if (this._EnablePlaylistPublishing) {
            getSession();
            new AsyncTask<Object, Void, Object>() { // from class: mobi.beyondpod.services.player.remotecontrol.RemoteControlLP.2
                @Override // android.os.AsyncTask
                protected Object doInBackground(Object[] objArr) {
                    try {
                        RemoteControlLP.this.getSession().setQueue(RemoteControlLP.this.getQueueFromCurrentPlaylist());
                        RemoteControlLP.this.getSession().setQueueTitle(BeyondPodApplication.getInstance().getString(R.string.auto_playlist));
                        return null;
                    } catch (Exception unused) {
                        CoreHelper.writeTraceEntry(RemoteControlLP.TAG, "failed to set the session queue");
                        return null;
                    }
                }
            }.execute(new Object[0]);
        }
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void registerRemoteControlClient(AudioManager audioManager) {
        getSession().setActive(true);
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    void unregisterRemoteControlClient(AudioManager audioManager) {
        getSession().setActive(false);
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public Object getClient() {
        return getSession();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaSession.QueueItem> getQueueFromCurrentPlaylist() {
        int min;
        int min2;
        ArrayList arrayList = new ArrayList();
        PlayList playList = BeyondPodApplication.getInstance().playList();
        List<Track> tracks = playList.getTracks();
        int currentPlayingTrackPosition = playList.getCurrentPlayingTrackPosition();
        if (currentPlayingTrackPosition > -1) {
            if (playList.playlistSize() <= MediaIdHelper.MAX_QUEUE_WINDOW) {
                min2 = playList.playlistSize() - 1;
                min = 0;
            } else {
                min = Math.min(playList.playlistSize() - MediaIdHelper.MAX_QUEUE_WINDOW, Math.max(currentPlayingTrackPosition - 2, 0));
                min2 = Math.min(tracks.size() - 1, MediaIdHelper.MAX_QUEUE_WINDOW + min);
            }
            while (min <= min2) {
                arrayList.add(new MediaSession.QueueItem(mediaDescriptionFromTrack(tracks.get(min), min == currentPlayingTrackPosition, min), r5.hashCode()));
                min++;
            }
        }
        return arrayList;
    }

    private MediaDescription mediaDescriptionFromTrack(Track track, boolean z, int i) {
        return new MediaDescription.Builder().setMediaId(Integer.toString(i)).setTitle(track.displayName()).setSubtitle(z ? BeyondPodApplication.getInstance().getResources().getString(R.string.auto_now_playing) : UIUtils.buildTrackSubtitle(BeyondPodApplication.getInstance(), track)).setDescription(track.trackDescription()).setIconBitmap(UIUtils.getMediaBrowserEpisodeAlbumArt(track)).build();
    }

    private void setPlaybackState(int i, long j, float f, boolean z, int i2) {
        PlaybackState.Builder state = new PlaybackState.Builder().setState(i, j, f);
        state.setActions(2943L);
        setCustomActions(state, f, z);
        state.setActiveQueueItemId(i2);
        getSession().setPlaybackState(state.build());
    }

    private void setCustomActions(PlaybackState.Builder builder, float f, boolean z) {
        Resources resources = BeyondPodApplication.getInstance().getResources();
        Bundle bundle = new Bundle();
        builder.addCustomAction(new PlaybackState.CustomAction.Builder(CUSTOM_ACTION_SEEK_BACKWARD, resources.getString(R.string.player_transport_skip_back), R.drawable.ic_auto_player_rew).setExtras(bundle).build());
        if (MediaPlayerFactory.isSpeedAlterationPlayerInstalled(BeyondPodApplication.getInstance()) && z) {
            int i = R.drawable.ic_auto_player_playback_speed;
            if (f == 1.0f) {
                i = R.drawable.ic_auto_player_playback_speed_0;
            } else if (f == Configuration.playbackSpeed1()) {
                i = R.drawable.ic_auto_player_playback_speed_1;
            } else if (f == Configuration.playbackSpeed2()) {
                i = R.drawable.ic_auto_player_playback_speed_2;
            }
            builder.addCustomAction(new PlaybackState.CustomAction.Builder(CUSTOM_ACTION_PLAYBACK_SPEED, resources.getString(R.string.player_transport_playback_speed), i).setExtras(bundle).build());
        }
        builder.addCustomAction(new PlaybackState.CustomAction.Builder(CUSTOM_ACTION_SEEK_FORWARD, resources.getString(R.string.player_transport_skip_fwd), R.drawable.ic_auto_player_forw).setExtras(bundle).build());
        if (Configuration.skipToEndButtonClickType() < 3) {
            builder.addCustomAction(new PlaybackState.CustomAction.Builder(CUSTOM_ACTION_SKIP_TO_END, resources.getString(R.string.player_transport_skip_to_end), R.drawable.ic_auto_player_skip_to_end).setExtras(bundle).build());
        }
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void release() {
        if (this._Session != null) {
            this._Session.release();
        }
        this._Session = null;
        this._PersistentSession = false;
        CoreHelper.writeTraceEntry(TAG, "BPMediaSession was released...");
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public MediaSession.Token getMediaSessionToken() {
        return getSession().getSessionToken();
    }

    @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlClientHelper2
    public void publishTrackInformation(final Track track, long j, boolean z) {
        int i;
        int i2;
        switch (track.getCurrentPlayState()) {
            case 0:
            case 2:
            case 4:
            case 5:
            default:
                i = 2;
                break;
            case 1:
                i = 3;
                break;
            case 3:
                i2 = 6;
                i = i2;
                break;
            case 6:
                i2 = 10;
                i = i2;
                break;
            case 7:
            case 8:
                i2 = 7;
                i = i2;
                break;
        }
        if (z) {
            loadAlbumArtFor(track, new AlbumArtLoadedListener() { // from class: mobi.beyondpod.services.player.remotecontrol.RemoteControlLP.3
                @Override // mobi.beyondpod.services.player.remotecontrol.RemoteControlLP.AlbumArtLoadedListener
                public void onAlbumArtLoaded(Bitmap bitmap, Bitmap bitmap2) {
                    RemoteControlLP.this.editMetadata(track, bitmap, bitmap2);
                }
            });
        }
        if (!z || track.getCurrentPlayState() == 3) {
            if (j < 0) {
                j = track.getPlayedTime() * 1000;
            }
            setPlaybackState(i, j, track.getCurrentPlaybackSpeed(), track.exists(), track.hashCode());
        }
    }

    private void loadAlbumArtFor(Track track, AlbumArtLoadedListener albumArtLoadedListener) {
        Bitmap bitmap;
        try {
            bitmap = ImageUtils.loadEpisodeImage(track, 600, 600);
            if (bitmap == null) {
                try {
                    bitmap = FeedImageCache.getSizedFeedImageFor(track.getParentFeed(), 200, 200);
                } catch (Exception unused) {
                    CoreHelper.writeTraceEntry(TAG, "failed to load image for track metadata for: " + track);
                    albumArtLoadedListener.onAlbumArtLoaded(bitmap, null);
                } catch (OutOfMemoryError unused2) {
                    CoreHelper.writeTraceEntry(TAG, "Out of memory error while publishing track metadata for: " + track);
                    albumArtLoadedListener.onAlbumArtLoaded(bitmap, null);
                }
            }
        } catch (Exception unused3) {
            bitmap = null;
        } catch (OutOfMemoryError unused4) {
            bitmap = null;
        }
        albumArtLoadedListener.onAlbumArtLoaded(bitmap, null);
    }
}
