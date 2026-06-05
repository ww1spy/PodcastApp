package mobi.beyondpod.ui.views.player;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.volley.ImageLoader;

/* loaded from: classes.dex */
public class PlaylistPager extends ViewPager implements RepositoryEvents.RepositoryEventListener, PlayListEvents.PlayListEventListener {
    Track _CurrentlyPlayingEpisode;
    long _LastTouchTime;
    IPlayerPlaylistOwner _Owner;
    PlaylistPagerAdapter _PagerAdapter;

    /* loaded from: classes.dex */
    public interface IPlayerPlaylistOwner {
        ImageLoader getImageLoader();

        void runOnUiThread(Runnable runnable);

        void togglePlaylistPager(boolean z);
    }

    public PlaylistPager(Context context) {
        super(context, null);
    }

    public PlaylistPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setPlayerOwner(IPlayerPlaylistOwner iPlayerPlaylistOwner) {
        this._Owner = iPlayerPlaylistOwner;
    }

    public ImageLoader getImageLoader() {
        return this._Owner.getImageLoader();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this._PagerAdapter = new PlaylistPagerAdapter(this);
        setClipToPadding(false);
        setPadding((int) getResources().getDimension(R.dimen.playlist_pager_left_padding), 0, (int) getResources().getDimension(R.dimen.playlist_pager_right_padding), 0);
        setAdapter(this._PagerAdapter);
    }

    public void refreshList() {
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlaylistPager.1
            @Override // java.lang.Runnable
            public void run() {
                PlaylistPager.this._PagerAdapter.notifyDataSetChanged();
                boolean z = false;
                for (int i = 0; i != PlaylistPager.this.getChildCount(); i++) {
                    Track track = (Track) PlaylistPager.this.getChildAt(i).getTag(R.id.card_episode);
                    if (track != null) {
                        PlaylistPager.this._PagerAdapter.loadItemData(PlaylistPager.this.getChildAt(i), track);
                    }
                }
                Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
                if (currentTrack != null && (PlaylistPager.this._CurrentlyPlayingEpisode == null || !PlaylistPager.this._CurrentlyPlayingEpisode.equals(currentTrack))) {
                    z = true;
                }
                PlaylistPager.this._CurrentlyPlayingEpisode = currentTrack;
                PlaylistPager.this.selectCurrentEpisode(z);
            }
        });
    }

    public void reloadList() {
        this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlaylistPager.2
            @Override // java.lang.Runnable
            public void run() {
                PlaylistPager.this.setAdapter(null);
                PlaylistPager.this._PagerAdapter.reloadTracks();
                PlaylistPager.this.setAdapter(PlaylistPager.this._PagerAdapter);
                PlaylistPager.this.selectCurrentEpisode(false);
            }
        });
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this._LastTouchTime = System.currentTimeMillis();
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectCurrentEpisode(boolean z) {
        long currentTimeMillis = System.currentTimeMillis() - this._LastTouchTime;
        if (z || (this._LastTouchTime > 0 && currentTimeMillis > 45000)) {
            this._LastTouchTime = 0L;
            this._Owner.runOnUiThread(new Runnable() { // from class: mobi.beyondpod.ui.views.player.PlaylistPager.3
                @Override // java.lang.Runnable
                public void run() {
                    int currentPlayingTrackPosition = BeyondPodApplication.getInstance().playList().getCurrentPlayingTrackPosition();
                    if (currentPlayingTrackPosition >= 0) {
                        PlaylistPager.this.setCurrentItem(currentPlayingTrackPosition, Math.abs(PlaylistPager.this.getCurrentItem() - currentPlayingTrackPosition) < 5);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void episodePlayPause(Track track) {
        if (track != null) {
            if (track.getCurrentPlayState() == 0) {
                CommandManager.cmdResumePlayback();
            } else if (track.getCurrentPlayState() != 1) {
                CommandManager.cmdPlayPosition(BeyondPodApplication.getInstance().playList().getTrackPosition(track));
            }
            this._Owner.togglePlaylistPager(false);
        }
    }

    public void show() {
        setVisibility(0);
        onActivated();
    }

    public void hide() {
        setVisibility(8);
        onDeActivated();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivated() {
        CoreHelper.writeTraceEntry("WSX", "----PlaylistPager Activated");
        BeyondPodApplication.messageBus.subscribe(this, RepositoryEvents.RepositoryEvent.class);
        BeyondPodApplication.messageBus.subscribe(this, PlayListEvents.PlayListEvent.class);
        this._LastTouchTime = 1L;
        reloadList();
    }

    public void onDeActivated() {
        CoreHelper.writeTraceEntry("WSX", "----PlaylistPager DeActivated");
        BeyondPodApplication.messageBus.unsubscribe(this, PlayListEvents.PlayListEvent.class);
        BeyondPodApplication.messageBus.unsubscribe(this, RepositoryEvents.RepositoryEvent.class);
        setAdapter(null);
    }

    public void onPlayerSlide(float f) {
        if (f > 0.95f) {
            setAdapter(null);
        } else if (getAdapter() == null) {
            reloadList();
        }
    }

    public void doCleanup() {
        CoreHelper.writeTraceEntry("WSX", "....PlaylistPager doCleanup");
    }

    @Override // mobi.beyondpod.rsscore.repository.RepositoryEvents.RepositoryEventListener
    public void onRepositoryEvent(RepositoryEvents.RepositoryEvent repositoryEvent) {
        if (repositoryEvent.Type == 11 && repositoryEvent.Track != null) {
            refreshList();
        }
        if (repositoryEvent.Type == 8 || repositoryEvent.Type == 10) {
            reloadList();
        }
    }

    @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
    public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
        if (playListEvent.Type == 0) {
            reloadList();
        }
    }
}
