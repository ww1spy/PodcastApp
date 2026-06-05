package mobi.beyondpod.services.player;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class PlayList implements RepositoryEvents.RepositoryEventListener {
    public static final int MOVE_BOTTOM = 2;
    public static final int MOVE_TOP = 1;
    public static final int PLAYLIST_END_ACTION_Clear_Playlist = 1;
    public static final int PLAYLIST_END_ACTION_Do_Nothing = 0;
    public static final int PLAYLIST_END_ACTION_StartSmartPlay = 2;
    public static final int PLAYLIST_SLEEP_TO_END_OF_TRACK_VALUE = Integer.MIN_VALUE;
    public static final String TAG = "PlayList";
    private static final Object _syncObj = new Object();
    private Track _CurrentTrack;
    private Track _TrackToDelete;
    public final List<Track> _PlayList = Collections.synchronizedList(new ArrayList());
    private boolean _IsManuallyModified = false;
    private Runnable _PlaylistSaveRunnable = new Runnable() { // from class: mobi.beyondpod.services.player.PlayList.1
        @Override // java.lang.Runnable
        public void run() {
            PlayList.this.saveToFileInternal();
        }
    };
    private boolean _PlaylistIsSaving = false;

    public PlayList() {
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
    }

    public void clearCurrentTrack() {
        setCurrentTrack((Track) null);
    }

    public Track setCurrentTrack(int i) {
        Track trackAtPosition = getTrackAtPosition(i);
        if (trackAtPosition != null) {
            setCurrentTrack(trackAtPosition);
        }
        return this._CurrentTrack;
    }

    public void onTrackPlaybackComplete(boolean z) {
        if (this._CurrentTrack == null) {
            return;
        }
        ItemStateHistory.markTracksItemAsRead(this._CurrentTrack);
        int playlistEndAction = Configuration.playlistEndAction();
        if (z) {
            playlistEndAction = 0;
        }
        if (Configuration.getMediaEndAction() == 2) {
            executeActionDoNothing();
            return;
        }
        if (Configuration.getMediaEndAction() == 0) {
            executeActionPlayNextPosition(playlistEndAction);
            return;
        }
        if (Configuration.getMediaEndAction() == 1) {
            executeActionDeleteCurrentTrackIfAllowed();
            executeActionPlayNextPosition(playlistEndAction);
        } else if (Configuration.getMediaEndAction() == 3) {
            executeActionDeleteCurrentTrackIfAllowed();
            executeActionDoNothing();
        }
    }

    private void clearPlayedIfNeeded() {
        if (Configuration.removePlayedFromPlaylist()) {
            ArrayList arrayList = new ArrayList();
            synchronized (this._PlayList) {
                for (Track track : this._PlayList) {
                    if (track.isPlayed()) {
                        arrayList.add(track);
                    }
                }
            }
            if (arrayList.size() > 0) {
                removeTracks(arrayList);
                CoreHelper.writeTraceEntry(TAG, "Removed " + arrayList.size() + " played episodes.");
            }
        }
    }

    public void executeActionDoNothing() {
        clearCurrentTrack();
        clearPlayedIfNeeded();
        BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(this, 3));
    }

    public void executeActionPlayNextPosition(int i) {
        if (Configuration.defferAutoSyncSmartPlay()) {
            clearCurrentTrack();
            CoreHelper.writeTraceEntry(TAG, "SmartPlay sync - Detected pending deferred rebuild at the end of playback. SmartPlay will be restarted.");
            Configuration.setDefferAutoSyncSmartPlay(false);
            rebuildSmartPlay(false, true, true);
            return;
        }
        int currentPlayingTrackPosition = getCurrentPlayingTrackPosition();
        int prepareNextPosition = prepareNextPosition(Configuration.removePlayedFromPlaylist());
        if (prepareNextPosition >= 0) {
            CommandManagerBase.cmdPlayPosition(prepareNextPosition);
            CoreHelper.writeTraceEntry(TAG, "Starting playback of the next track:" + currentPlayingTrackPosition + " -> " + prepareNextPosition);
            return;
        }
        if (i == 1) {
            CoreHelper.writeTraceEntry(TAG, "Playlist ended and will be cleared!");
            loadTracks(null, false);
            BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(this, 3));
        } else {
            if (i == 2) {
                clearCurrentTrack();
                CoreHelper.writeTraceEntry(TAG, "Playlist ended and SmartPlay will be restarted!");
                rebuildSmartPlay(false, true, false);
                return;
            }
            clearPlayedIfNeeded();
        }
    }

    private int prepareNextPosition(boolean z) {
        int currentPlayingTrackPosition = getCurrentPlayingTrackPosition();
        if (currentPlayingTrackPosition >= 0 && currentPlayingTrackPosition < playlistSize() - 1) {
            if (!z) {
                return currentPlayingTrackPosition + 1;
            }
            Track nextPlayableTrack = getNextPlayableTrack();
            if (nextPlayableTrack != null) {
                if (nextPlayableTrack.isPlayed()) {
                    nextPlayableTrack.clearPlayed();
                }
                if (Configuration.removePlayedFromPlaylist()) {
                    this._CurrentTrack = nextPlayableTrack;
                }
                clearPlayedIfNeeded();
                int trackPosition = getTrackPosition(nextPlayableTrack);
                CoreHelper.writeTraceEntry(TAG, "Found next playable episode: " + nextPlayableTrack.displayName() + " at position: " + trackPosition);
                return trackPosition;
            }
        }
        return -1;
    }

    private Track getNextPlayableTrack() {
        synchronized (this._PlayList) {
            for (int currentPlayingTrackPosition = getCurrentPlayingTrackPosition() + 1; currentPlayingTrackPosition < playlistSize(); currentPlayingTrackPosition++) {
                Track track = this._PlayList.get(currentPlayingTrackPosition);
                if (!track.isPlayed()) {
                    return track;
                }
            }
            return null;
        }
    }

    public void rebuildSmartPlay(boolean z, boolean z2, boolean z3) {
        SmartPlaylist primarySmartPlay = z3 ? SmartPlaylistManager.primarySmartPlay() : SmartPlaylistManager.lastUsedSmartplay();
        if (primarySmartPlay == null) {
            CoreHelper.writeTraceEntry(TAG, "Trying to restart SmartPlay but SmartPlay is not configured! Ignoring...");
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Trying to restart " + primarySmartPlay.name() + " SmartPlay...");
        List<Track> generatePlaylist = primarySmartPlay.generatePlaylist();
        if (z) {
            Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
            if (currentTrack != null && currentTrack.isPartialyPlayed()) {
                generatePlaylist.add(0, currentTrack);
                CoreHelper.writeTraceEntry(TAG, "Restarting SmartPlay and keeping the current playing track '" + currentTrack.getName() + "' at the top.");
            }
        } else {
            clear();
        }
        if (generatePlaylist.size() > 0) {
            if (isCurrentlyPlaying()) {
                CommandManagerBase.cmdStopPlayback();
            }
            loadTracks(generatePlaylist, false);
            setCurrentTrack(0);
            SmartPlaylistManager.setLastUsedSmartPlay(primarySmartPlay);
            CoreHelper.writeTraceEntry(TAG, "SmartPlaylist replaced! New Playlist size: " + generatePlaylist.size());
            if (z2) {
                CoreHelper.writeTraceEntry(TAG, "Starting automatic playback of the first track");
                CommandManagerBase.cmdPlayPosition(0);
                return;
            } else {
                CoreHelper.writeTraceEntry(TAG, "Loading the first track from the new playlist into the player");
                CommandManagerBase.cmdLoadCurrentTrack();
                return;
            }
        }
        CoreHelper.writeTraceEntry(TAG, "SmartPlaylist is empty! Clearing the playlist...");
        clear();
    }

    private void executeActionDeleteCurrentTrackIfAllowed() {
        if (this._CurrentTrack.allowAutoDelete()) {
            this._TrackToDelete = this._CurrentTrack;
        }
    }

    public void loadTracks(Collection<Track> collection, boolean z) {
        CommandManagerBase.cmdStopPlayback();
        this._PlayList.clear();
        if (collection != null) {
            try {
                for (Track track : collection) {
                    if (canAddToPlaylist(track)) {
                        this._PlayList.add(track);
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                CoreHelper.logException(TAG, "failed to append to playlist!", e);
            }
        }
        setCurrentTrack((Track) null);
        this._IsManuallyModified = z;
        notifyPlaylistChanged();
        saveToFileAsync();
    }

    public boolean canAddToPlaylist(Track track) {
        return canAddToPlaylist(track, this._PlayList);
    }

    public static boolean canAddToPlaylist(Track track, List<Track> list) {
        if (track == null || list.contains(track) || !canPlayStreamableTrack(track)) {
            return false;
        }
        return (track.hasDownloadStarted() && !track.isFullyDownloaded() && isEmpty()) ? false : true;
    }

    public static boolean allowStreaming(Track track) {
        if (!track.exists()) {
            if (Configuration.allowEpisodeStreaming() == 2) {
                return false;
            }
            if (Configuration.allowEpisodeStreaming() == 1 && !CoreHelper.isWiFiConnected()) {
                return false;
            }
        }
        return true;
    }

    public void addTrack(Track track) {
        addTrackInternal(track);
        this._IsManuallyModified = true;
        notifyPlaylistChanged();
        saveToFileAsync();
    }

    public void addTracks(List<Track> list) {
        Iterator<Track> it = list.iterator();
        while (it.hasNext()) {
            addTrackInternal(it.next());
        }
        this._IsManuallyModified = true;
        notifyPlaylistChanged();
        saveToFileAsync();
    }

    private void addTrackInternal(Track track) {
        if (track == null || hasTrack(track) || !canPlayStreamableTrack(track)) {
            return;
        }
        try {
            this._PlayList.add(track);
            if (this._CurrentTrack == null) {
                this._CurrentTrack = track;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            CoreHelper.logException(TAG, "failed to append to playlist!", e);
        }
    }

    public static boolean canPlayStreamableTrack(Track track) {
        return Configuration.allowEpisodeStreaming() != 2 || track.exists();
    }

    public boolean hasTrack(Track track) {
        return this._PlayList.contains(track);
    }

    public int playlistSize() {
        return this._PlayList.size();
    }

    public CoreHelper.TrackSizeInfo playlistTotalTime() {
        CoreHelper.TrackSizeInfo trackSizeInfo = new CoreHelper.TrackSizeInfo();
        synchronized (this._PlayList) {
            for (Track track : this._PlayList) {
                trackSizeInfo.sizeOnDisk += track.getSizeOnDisk();
                trackSizeInfo.totalTime += track.getTotalTime();
                if (track.getTotalTime() == 0) {
                    trackSizeInfo.totalTimeIsApproximate = true;
                }
            }
        }
        return trackSizeInfo;
    }

    public Track currentTrack() {
        Track track;
        synchronized (_syncObj) {
            track = this._CurrentTrack;
        }
        return track;
    }

    public int getTrackPosition(Track track) {
        return this._PlayList.indexOf(track);
    }

    public int getCurrentPlayingTrackPosition() {
        if (this._CurrentTrack != null) {
            return getTrackPosition(this._CurrentTrack);
        }
        return -1;
    }

    public int getNextTrackPosition() {
        int currentPlayingTrackPosition = getCurrentPlayingTrackPosition();
        return (currentPlayingTrackPosition < 0 || currentPlayingTrackPosition >= playlistSize() + (-1)) ? this._PlayList.size() > 0 ? 0 : -1 : currentPlayingTrackPosition + 1;
    }

    public Track getNextVideoTrack(Track track) {
        int trackPosition = getTrackPosition(track);
        int i = trackPosition < 0 ? 0 : trackPosition + 1;
        if (i < 0 || i > playlistSize() - 1) {
            return null;
        }
        synchronized (this._PlayList) {
            while (i < playlistSize()) {
                Track track2 = this._PlayList.get(i);
                if (track2.contentType() == 2) {
                    return track2;
                }
                i++;
            }
            return null;
        }
    }

    public Track getPreviousVideoTrack(Track track) {
        int trackPosition = getTrackPosition(track);
        int playlistSize = trackPosition < 0 ? playlistSize() - 1 : trackPosition - 1;
        if (playlistSize < 0 || playlistSize > playlistSize() - 1) {
            return null;
        }
        synchronized (this._PlayList) {
            while (playlistSize >= 0) {
                try {
                    Track track2 = this._PlayList.get(playlistSize);
                    if (track2.contentType() == 2) {
                        return track2;
                    }
                    playlistSize--;
                } finally {
                }
            }
            return null;
        }
    }

    public int getPreviousTrackPosition() {
        int currentPlayingTrackPosition = getCurrentPlayingTrackPosition();
        return currentPlayingTrackPosition > 0 ? currentPlayingTrackPosition - 1 : this._PlayList.size() > 0 ? 0 : -1;
    }

    public Track getTrackAtPosition(int i) {
        if (i < 0 || i >= playlistSize()) {
            return null;
        }
        return this._PlayList.get(i);
    }

    public List<Track> getTracks() {
        ArrayList arrayList;
        synchronized (this._PlayList) {
            arrayList = new ArrayList(this._PlayList);
        }
        return arrayList;
    }

    private void setCurrentTrack(Track track) {
        if (this._CurrentTrack != null) {
            this._CurrentTrack.setCurrentPlayState(-1);
        }
        this._CurrentTrack = track;
        BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(this, 1));
        if (this._TrackToDelete != null) {
            FeedRepository.deleteTrackAsync(this._TrackToDelete);
            this._TrackToDelete = null;
        }
        saveIndexOfCurrentPlaylistTrackInPlaylist();
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 10) {
            boolean z = this._IsManuallyModified;
            removeTrack(repositoryEvent.Track);
            this._IsManuallyModified = z;
        }
    }

    public void removeTrack(Track track) {
        if (removeTrackInternal(track)) {
            notifyPlaylistChanged();
            saveToFileAsync();
        }
    }

    public void removeTracks(List<Track> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (Track track : list) {
            if (track == this._CurrentTrack) {
                CommandManagerBase.cmdStopPlayback();
            }
            if (this._PlayList.contains(track)) {
                this._PlayList.remove(track);
            }
        }
        if (this._PlayList.size() == 0) {
            clearCurrentTrack();
        } else if (getTrackPosition(this._CurrentTrack) < 0) {
            setCurrentTrack(0);
            CommandManagerBase.cmdLoadCurrentTrack();
        }
        notifyPlaylistChanged();
        saveToFileAsync();
    }

    private boolean removeTrackInternal(Track track) {
        if (track == null || !this._PlayList.contains(track)) {
            return false;
        }
        if (track == this._CurrentTrack) {
            CommandManagerBase.cmdStopPlayback();
            int nextTrackPosition = getNextTrackPosition();
            if (nextTrackPosition >= 0) {
                setCurrentTrack(nextTrackPosition);
                CommandManagerBase.cmdLoadCurrentTrack();
            }
        }
        this._PlayList.remove(track);
        if (this._PlayList.size() == 0) {
            clearCurrentTrack();
        }
        this._IsManuallyModified = true;
        return true;
    }

    public void clear() {
        loadTracks(null, false);
    }

    private void saveIndexOfCurrentPlaylistTrackInPlaylist() {
        int currentPlayingTrackPosition = getCurrentPlayingTrackPosition();
        if (currentPlayingTrackPosition != Configuration.indexOfCurrentPlaylistTrackInPlaylist()) {
            Configuration.setIndexOfCurrentPlaylistTrackInPlaylist(currentPlayingTrackPosition);
            CoreHelper.writeTraceEntry(TAG, "Saved index of current Playlist track in Playlist: " + currentPlayingTrackPosition);
        }
    }

    private void saveToFileAsync() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(this._PlaylistSaveRunnable);
        RepositoryPersistence.repositoryHandler().post(this._PlaylistSaveRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveToFileInternal() {
        synchronized (this._PlayList) {
            if (this._PlaylistIsSaving) {
                return;
            }
            String playlistFilePath = Configuration.playlistFilePath();
            Configuration.setIsCurrentPlaylistManuallyModified(this._IsManuallyModified);
            Configuration.setPlaylistSizeOnSave(this._PlayList.size());
            DataOutputStream dataOutputStream = null;
            try {
                try {
                    this._PlaylistIsSaving = true;
                } catch (Exception e) {
                    e = e;
                }
                if (this._PlayList.size() == 0) {
                    File file = new File(Configuration.playlistFilePath());
                    if (file.exists()) {
                        file.delete();
                    }
                    CoreHelper.writeTraceEntry(TAG, "Deleted empty playlist file");
                    this._PlaylistIsSaving = false;
                    return;
                }
                CoreHelper.writeTraceEntry(TAG, "Saving " + this._PlayList.size() + " playlist entries...");
                FileOutputStream fileOutputStream = new FileOutputStream(playlistFilePath);
                DataOutputStream dataOutputStream2 = new DataOutputStream(fileOutputStream);
                for (int i = 0; i != this._PlayList.size(); i++) {
                    try {
                        dataOutputStream2.writeUTF(this._PlayList.get(i).trackPath());
                    } catch (Exception e2) {
                        dataOutputStream = dataOutputStream2;
                        e = e2;
                        CoreHelper.logException(TAG, "Unable to save Playlist file", e);
                        if (dataOutputStream != null) {
                            try {
                                dataOutputStream.close();
                            } catch (Exception e3) {
                                CoreHelper.logException(TAG, "Unable to save Playlist file", e3);
                            }
                        }
                        this._PlaylistIsSaving = false;
                    } catch (Throwable th) {
                        dataOutputStream = dataOutputStream2;
                        th = th;
                        if (dataOutputStream != null) {
                            try {
                                dataOutputStream.close();
                            } catch (Exception e4) {
                                CoreHelper.logException(TAG, "Unable to save Playlist file", e4);
                            }
                        }
                        this._PlaylistIsSaving = false;
                        throw th;
                    }
                }
                CoreHelper.sync(fileOutputStream);
                dataOutputStream2.close();
                if (dataOutputStream2 != null) {
                    try {
                        dataOutputStream2.close();
                    } catch (Exception e5) {
                        CoreHelper.logException(TAG, "Unable to save Playlist file", e5);
                    }
                }
                this._PlaylistIsSaving = false;
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromFile() {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.services.player.PlayList.loadFromFile():void");
    }

    private void notifyPlaylistChanged() {
        saveIndexOfCurrentPlaylistTrackInPlaylist();
        BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(this, 0));
    }

    public static boolean isCurrentlyPlaying() {
        Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
        return currentTrack != null && currentTrack.getCurrentPlayState() == 1;
    }

    public static boolean isEmpty() {
        return BeyondPodApplication.getInstance().playList().playlistSize() == 0;
    }

    public static boolean isManuallyModified() {
        return BeyondPodApplication.getInstance().playList()._IsManuallyModified;
    }

    public boolean hasEpisodesToDownload() {
        synchronized (this._PlayList) {
            Iterator<Track> it = this._PlayList.iterator();
            while (it.hasNext()) {
                if (!it.next().isFullyDownloaded()) {
                    return true;
                }
            }
            return false;
        }
    }

    public void moveTrack(int i, int i2) {
        Track trackAtPosition;
        if (i != i2 && (trackAtPosition = getTrackAtPosition(i)) != null && i2 >= 0 && i2 < playlistSize()) {
            this._PlayList.remove(trackAtPosition);
            this._PlayList.add(i2, trackAtPosition);
            this._IsManuallyModified = true;
            notifyPlaylistChanged();
            saveToFileAsync();
        }
    }

    public void moveTracks(List<Track> list, int i) {
        if (list.size() < 1 || this._PlayList.size() < 2) {
            return;
        }
        this._PlayList.removeAll(list);
        this._PlayList.addAll(i == 1 ? 0 : this._PlayList.size(), list);
        this._IsManuallyModified = true;
        notifyPlaylistChanged();
        saveToFileAsync();
    }

    public void onTrackPlayStateChanged(Track track) {
        BeyondPodApplication.messageBus.publishEvent(new PlayListEvents.PlayListEvent(this, 2));
    }

    public TrackList getAllPlayed() {
        TrackList trackList = new TrackList();
        synchronized (this._PlayList) {
            for (Track track : this._PlayList) {
                if (track.isPlayed()) {
                    trackList.add(track);
                }
            }
        }
        return trackList;
    }

    public boolean hasPlayed() {
        synchronized (this._PlayList) {
            Iterator<Track> it = this._PlayList.iterator();
            while (it.hasNext()) {
                if (it.next().isPlayed()) {
                    return true;
                }
            }
            return false;
        }
    }
}
