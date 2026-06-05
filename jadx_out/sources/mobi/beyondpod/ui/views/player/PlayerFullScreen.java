package mobi.beyondpod.ui.views.player;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.player.ChromecastUtils;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.mediarouter.BPMediaRouteDialogFactory;
import mobi.beyondpod.ui.core.mediarouter.MediaRouteButton;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderTrack;
import mobi.beyondpod.ui.views.base.RepeatingFrameButton;
import mobi.beyondpod.ui.views.player.PlaylistPager;
import mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp;
import mobi.beyondpod.ui.views.player.charms.CharmSleepTimerPopUp;
import mobi.beyondpod.ui.views.player.visualizers.VisualizerBase;

/* loaded from: classes.dex */
public class PlayerFullScreen extends RelativeLayout implements CharmSleepTimerPopUp.SleepTimeSelectedListener, PlaylistPager.IPlayerPlaylistOwner, CharmPlaybackSpeedPopUp.PlaybackSpeedSelectedListener {
    private static final int MENU_OPEN_FEED = 3;
    private static final int MENU_PLAY_VIDEO_AS_AUDIO = 4;
    private static final int MENU_SET_AS_FAVORITE = 2;
    private static final int MENU_SHARE_PODCAST_URL = 1;
    private int _AnimationTime;
    private ImageButton _CharmCarMode;
    private TextView _CharmSleep;
    private TextView _CharmSpeed;
    private View _CharmsGroup;
    private View _EpisodeNameGroup;
    private ImageView _LargePlayPause;
    private float _LastTouchY;
    private MediaRouteButton _MediaRouteButton;
    private FadingNetworkImageViewTrack _MiniAlbumArt;
    private ImageButton _NextEpisode;
    private ImageButton _Overflow;
    private IFullScreenPlayerOwner _Owner;
    private int _PlayIconOpticalPadding;
    private ImageButton _PlayPause;
    private View.OnClickListener _PlayPauseListener;
    private View _PlayerControls;
    private TextView _PlaylistCount;
    private PlaylistPager _PlaylistPager;
    private ProgressBar _PrepareProgress;
    private ImageButton _PrevEpisode;
    private SeekBar _Scrubber;
    private View _SeekGroup;
    private boolean _ShowingCarMode;
    private RepeatingFrameButton _SkipBack;
    private View.OnClickListener _SkipBackClickListener;
    private TextView _SkipBackDuration;
    private RepeatingFrameButton.RepeatListener _SkipBackLongClickListener;
    private RepeatingFrameButton _SkipForward;
    private View.OnClickListener _SkipForwardClickListener;
    private TextView _SkipForwardDuration;
    private RepeatingFrameButton.RepeatListener _SkipForwardLongClickListener;
    private View.OnClickListener _SkipNextClickListener;
    private View.OnClickListener _SkipPreviousClickListener;
    private ImageButton _SkipToEnd;
    private View.OnClickListener _SkipToEndClickListener;
    private View.OnLongClickListener _SkipToEndLongClickListener;
    private View _TogglePlaylist;
    private TextView _TrackDuration;
    private TextView _TrackName;
    private TextView _TrackPos;
    private FrameLayout _TransportControlsHolder;
    private VisualizerBase _Visualizer;
    private View.OnLongClickListener _VisualizerLongClickListener;
    private View.OnClickListener _VisualizerPauseListener;
    private static final String PLAYBACK_ERROR = CoreHelper.loadResourceString(R.string.player_view_playback_error);
    private static final String PREPARING_STREAM_S = CoreHelper.loadResourceString(R.string.player_view_preparing_stream_s);
    private static final String PLAYBACK_ERROR_STREAMING_DISABLED = CoreHelper.loadResourceString(R.string.player_view_playback_error_streaming_disabled);
    private static final String PLAYBACK_ERROR_CANT_CAST = CoreHelper.loadResourceString(R.string.player_view_playback_error_cant_cast);

    /* loaded from: classes.dex */
    public interface IFullScreenPlayerOwner {
        void collapsePlayer();

        void doSkipBack();

        void doSkipForward();

        void driveViewVisibilityChanged(boolean z);

        ImageLoaderTrack getImageLoader();

        SeekBar.OnSeekBarChangeListener getSeekListener();

        int getTimeToSleep();

        boolean isPlayerExpanded();

        void onCyclePlaybackSpeed();

        void onSelectPlaybackSpeed();

        void openTrackFeed(Track track);

        void openTrackPropertiesDialog(Track track, TrackList trackList);

        void runOnUiThread(Runnable runnable);

        void scanBackward(int i, long j);

        void scanForward(int i, long j);

        void setPlaybackSpeed(float f, float f2);

        void setSleepTo(int i);

        void skipToEnd();

        void togglePlayPause();

        void togglePlaylistDrawer();
    }

    public PlayerFullScreen(Context context) {
        this(context, null);
    }

    public PlayerFullScreen(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerFullScreen(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._ShowingCarMode = false;
        this._SkipToEndClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Configuration.skipToEndButtonClickType() == 1) {
                    PlayerFullScreen.this._Owner.skipToEnd();
                }
            }
        };
        this._SkipToEndLongClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (Configuration.skipToEndButtonClickType() != 2) {
                    return true;
                }
                PlayerFullScreen.this._Owner.skipToEnd();
                return true;
            }
        };
        this._SkipBackClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerFullScreen.this._Owner.doSkipBack();
            }
        };
        this._SkipBackLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.4
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                PlayerFullScreen.this._Owner.scanBackward(i2, j);
            }
        };
        this._SkipForwardClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerFullScreen.this._Owner.doSkipForward();
            }
        };
        this._SkipForwardLongClickListener = new RepeatingFrameButton.RepeatListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.6
            @Override // mobi.beyondpod.ui.views.base.RepeatingFrameButton.RepeatListener
            public void onRepeat(View view, long j, int i2) {
                PlayerFullScreen.this._Owner.scanForward(i2, j);
            }
        };
        this._SkipPreviousClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BeyondPodApplication.getInstance().playList().getCurrentPlayingTrackPosition() > 0) {
                    CommandManager.cmdPlayPreviousTrack();
                } else {
                    CoreHelper.vibrate(CoreHelper.VIBRATE_SHORT);
                }
            }
        };
        this._SkipNextClickListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BeyondPodApplication.getInstance().playList().getCurrentPlayingTrackPosition() < BeyondPodApplication.getInstance().playList().playlistSize() - 1) {
                    CommandManager.cmdPlayNextTrack();
                } else {
                    CoreHelper.vibrate(CoreHelper.VIBRATE_SHORT);
                }
            }
        };
        this._PlayPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerFullScreen.this._Owner.togglePlayPause();
            }
        };
        this._VisualizerPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!PlayerFullScreen.this.isPagerVisible()) {
                    PlayerFullScreen.this._LargePlayPause.setTranslationY(PlayerFullScreen.this._LastTouchY - (PlayerFullScreen.this.getHeight() / 2));
                    PlayerFullScreen.this._LargePlayPause.animate().alpha(0.0f).setDuration(300L).scaleX(0.6f).scaleY(0.6f).setListener(new Animator.AnimatorListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.10.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            if (PlayList.isCurrentlyPlaying()) {
                                PlayerFullScreen.this._LargePlayPause.setImageResource(R.drawable.ic_player_pause);
                            } else {
                                PlayerFullScreen.this._LargePlayPause.setImageResource(R.drawable.ic_player_play);
                            }
                            PlayerFullScreen.this._LargePlayPause.setVisibility(0);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            PlayerFullScreen.this._LargePlayPause.setVisibility(8);
                            PlayerFullScreen.this._LargePlayPause.setAlpha(1.0f);
                            PlayerFullScreen.this._LargePlayPause.setScaleX(1.0f);
                            PlayerFullScreen.this._LargePlayPause.setScaleY(1.0f);
                            PlayerFullScreen.this._Owner.togglePlayPause();
                        }
                    }).start();
                } else {
                    PlayerFullScreen.this.togglePlaylistPager(false);
                }
            }
        };
        this._VisualizerLongClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.11
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                PlayerFullScreen.this.togglePlaylistPager(!PlayerFullScreen.this.isPagerVisible());
                return true;
            }
        };
    }

    public void setPlayerOwner(IFullScreenPlayerOwner iFullScreenPlayerOwner) {
        this._Owner = iFullScreenPlayerOwner;
        this._Scrubber.setOnSeekBarChangeListener(this._Owner.getSeekListener());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this._PlayerControls = findViewById(R.id.controlsArea);
        this._Visualizer = (VisualizerBase) findViewById(R.id.playerAlbumArt);
        this._Visualizer.setOnClickListener(this._VisualizerPauseListener);
        this._Visualizer.setOnLongClickListener(this._VisualizerLongClickListener);
        this._Visualizer.setOnTouchListener(new View.OnTouchListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.12
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                PlayerFullScreen.this._LastTouchY = motionEvent.getY();
                return false;
            }
        });
        this._MiniAlbumArt = (FadingNetworkImageViewTrack) findViewById(R.id.miniAlbumArt);
        this._MiniAlbumArt.setVisibility(8);
        this._TrackName = (TextView) findViewById(R.id.episodeName);
        this._TrackPos = (TextView) findViewById(R.id.currenttime);
        this._TrackDuration = (TextView) findViewById(R.id.totaltime);
        this._PlaylistPager = (PlaylistPager) findViewById(R.id.playerPlaylist);
        this._PlaylistPager.setPlayerOwner(this);
        this._CharmsGroup = findViewById(R.id.charmsGroup);
        this._EpisodeNameGroup = findViewById(R.id.episodeNameGroup);
        this._SeekGroup = findViewById(R.id.seekGroup);
        this._LargePlayPause = (ImageView) findViewById(R.id.largePlaypause);
        this._TrackName.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
                if (currentTrack != null) {
                    PlayerFullScreen.this.openTrackPropertiesDialog(currentTrack, null);
                }
            }
        });
        this._Scrubber = (SeekBar) findViewById(R.id.seek);
        this._Scrubber.setMax(1000);
        loadCharms();
        loadActionBar();
        this._PlayIconOpticalPadding = getResources().getDimensionPixelSize(R.dimen.video_player_play_button_optical_padding);
        this._TransportControlsHolder = (FrameLayout) findViewById(R.id.transportControlsHolder);
        loadTransportControls();
        super.onFinishInflate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleCarMode(boolean z) {
        if (z) {
            AnalyticsTracker.onViewDisplayed(8);
        }
        Configuration.setPlayerCarModeVisible(z);
        loadTransportControls();
    }

    private void loadTransportControls() {
        boolean z = getResources().getBoolean(R.bool.support_car_mode);
        int i = (!isPagerVisible() && z && Configuration.playerCarModeVisible()) ? R.layout.player_transport_controls_car_mode : R.layout.player_transport_controls;
        this._ShowingCarMode = i == R.layout.player_transport_controls_car_mode;
        this._TransportControlsHolder.removeAllViews();
        View inflate = LayoutInflater.from(getContext()).inflate(i, this._TransportControlsHolder);
        this._PrepareProgress = (ProgressBar) findViewById(R.id.prepareProgress);
        this._SkipBack = (RepeatingFrameButton) inflate.findViewById(R.id.skip_back);
        this._SkipBack.setOnClickListener(this._SkipBackClickListener);
        this._SkipBack.setRepeatListener(this._SkipBackLongClickListener, 260L);
        this._SkipBackDuration = (TextView) inflate.findViewById(R.id.skip_back_text);
        this._SkipForward = (RepeatingFrameButton) inflate.findViewById(R.id.skip_forward);
        this._SkipForward.setOnClickListener(this._SkipForwardClickListener);
        this._SkipForward.setRepeatListener(this._SkipForwardLongClickListener, 260L);
        this._SkipForwardDuration = (TextView) inflate.findViewById(R.id.skip_forward_text);
        this._PrevEpisode = (ImageButton) inflate.findViewById(R.id.prev);
        if (this._PrevEpisode != null) {
            this._PrevEpisode.setOnClickListener(this._SkipPreviousClickListener);
        }
        this._SkipToEnd = (ImageButton) inflate.findViewById(R.id.skipToEnd);
        if (this._SkipToEnd != null) {
            this._SkipToEnd.setOnClickListener(this._SkipToEndClickListener);
            this._SkipToEnd.setOnLongClickListener(this._SkipToEndLongClickListener);
            if (Configuration.skipToEndButtonClickType() == 3) {
                this._SkipToEnd.setVisibility(4);
            }
        }
        this._NextEpisode = (ImageButton) inflate.findViewById(R.id.next);
        if (this._NextEpisode != null) {
            this._NextEpisode.setOnClickListener(this._SkipNextClickListener);
        }
        this._PlayPause = (ImageButton) inflate.findViewById(R.id.playpause);
        this._PlayPause.setOnClickListener(this._PlayPauseListener);
        updateSkipIntervalLabels();
        this._PlayPause.setImageResource(R.drawable.ic_player_pause);
        setPlayPauseButtonImage(PlayList.isCurrentlyPlaying());
        this._CharmCarMode.setVisibility(z ? 0 : 8);
        this._CharmCarMode.setImageResource(R.drawable.ic_charm_car);
        this._TrackName.setTextSize(1, getResources().getInteger((z && Configuration.playerCarModeVisible()) ? R.integer.player_title_font_size_car_mode : R.integer.player_title_font_size));
        float integer = getResources().getInteger((z && Configuration.playerCarModeVisible()) ? R.integer.player_time_font_size_car_mode : R.integer.player_time_font_size);
        this._TrackPos.setTextSize(1, integer);
        this._TrackDuration.setTextSize(1, integer);
        this._Scrubber.setAlpha(Configuration.playerCarModeVisible() ? 0.7f : 1.0f);
    }

    private void loadActionBar() {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.actionBar);
        if (linearLayout != null) {
            linearLayout.setBackgroundColor(-12303292);
        }
        this._Overflow = (ImageButton) findViewById(R.id.ab_overflow);
        this._Overflow.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PopupMenu popupMenu = new PopupMenu(PlayerFullScreen.this.getContext(), view);
                final Track currentTrack = BeyondPodApplication.getInstance().playList().currentTrack();
                if (currentTrack != null) {
                    popupMenu.getMenu().add(1, 1, 0, R.string.MENU_browser_share_podcast);
                    popupMenu.getMenu().add(0, 2, 1, currentTrack.canSetAsFavorite() ? R.string.MENU_lock_episode : R.string.MENU_unlock_episode);
                    popupMenu.getMenu().add(1, 3, 2, R.string.MENU_open_episode_feed);
                }
                popupMenu.getMenu().add(1, 4, 3, R.string.MENU_video_as_audio).setCheckable(true).setChecked(true ^ Configuration.allowVideosInPlaylist());
                popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.14.1
                    @Override // android.widget.PopupMenu.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        switch (menuItem.getItemId()) {
                            case 1:
                                CommandManager.cmdSharePodcast(PlayerFullScreen.this.getContext(), BeyondPodApplication.getInstance().playList().currentTrack());
                                return true;
                            case 2:
                                TrackList trackList = new TrackList();
                                trackList.add(currentTrack);
                                if (trackList.hasUnLocked()) {
                                    CommandManager.cmdLockTracks(PlayerFullScreen.this.getContext(), trackList);
                                } else {
                                    CommandManager.cmdUnlockTracks(PlayerFullScreen.this.getContext(), trackList);
                                }
                                return false;
                            case 3:
                                PlayerFullScreen.this._Owner.openTrackFeed(currentTrack);
                                return false;
                            case 4:
                                Configuration.setAllowVideosInPlaylist(!Configuration.allowVideosInPlaylist());
                                CommandManager.cmdLoadCurrentTrack();
                                return true;
                            default:
                                return true;
                        }
                    }
                });
                popupMenu.show();
            }
        });
        this._Overflow.setVisibility(0);
        this._TogglePlaylist = findViewById(R.id.ab_toggle_playlist);
        this._TogglePlaylist.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerFullScreen.this._Owner.togglePlaylistDrawer();
            }
        });
        this._PlaylistCount = (TextView) findViewById(R.id.playlistCount);
        this._MediaRouteButton = (MediaRouteButton) findViewById(R.id.media_route_button);
        this._MediaRouteButton.setRouteSelector(BeyondPodApplication.getInstance().chromecastDevice().getRouteSelector());
        this._MediaRouteButton.setDialogFactory(new BPMediaRouteDialogFactory());
        ((ImageView) findViewById(R.id.ab_collapse)).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PlayerFullScreen.this._Owner != null) {
                    PlayerFullScreen.this._Owner.collapsePlayer();
                }
            }
        });
    }

    private void loadCharms() {
        this._AnimationTime = getContext().getResources().getInteger(android.R.integer.config_shortAnimTime);
        this._CharmCarMode = (ImageButton) findViewById(R.id.charmCarMode);
        this._CharmCarMode.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayerFullScreen.this.toggleCarMode(!Configuration.playerCarModeVisible());
            }
        });
        this._CharmSleep = (TextView) findViewById(R.id.charmSleep);
        this._CharmSleep.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsTracker.onCharmSleepSelected(false);
                int playerSleepTimeout = Configuration.playerSleepTimeout();
                if (playerSleepTimeout == 9999) {
                    playerSleepTimeout = Integer.MIN_VALUE;
                }
                if (playerSleepTimeout != 0 && PlayerFullScreen.this._Owner.getTimeToSleep() == 0) {
                    PlayerFullScreen.this._Owner.setSleepTo(playerSleepTimeout);
                } else {
                    new CharmSleepTimerPopUp(PlayerFullScreen.this.getContext(), PlayerFullScreen.this, PlayerFullScreen.this._Owner.getTimeToSleep()).show(view);
                }
            }
        });
        this._CharmSleep.setOnLongClickListener(new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.19
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AnalyticsTracker.onCharmSleepSelected(true);
                PlayerFullScreen.this._Owner.setSleepTo(PlayerFullScreen.this._Owner.getTimeToSleep() == Integer.MIN_VALUE ? 0 : Integer.MIN_VALUE);
                return true;
            }
        });
        this._CharmSpeed = (TextView) findViewById(R.id.charmSpeed);
        this._CharmSpeed.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsTracker.onCharmSpeedSelected(false);
                PlayerFullScreen.this._Owner.onSelectPlaybackSpeed();
            }
        });
        this._CharmSpeed.setOnLongClickListener(new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.21
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AnalyticsTracker.onCharmSpeedSelected(true);
                PlayerFullScreen.this._Owner.onCyclePlaybackSpeed();
                return true;
            }
        });
    }

    public void setPlayPauseButtonImage(boolean z) {
        if (z) {
            this._PlayPause.setImageResource(R.drawable.ic_player_pause);
            this._TrackPos.setAlpha(1.0f);
            this._TrackDuration.setAlpha(1.0f);
        } else {
            this._PlayPause.setImageResource(R.drawable.ic_player_play);
            this._TrackPos.setAlpha(0.5f);
            this._TrackDuration.setAlpha(0.5f);
        }
        this._PlayPause.setPadding((z || !this._ShowingCarMode) ? 0 : this._PlayIconOpticalPadding, 0, 0, 0);
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistPager.IPlayerPlaylistOwner
    public void togglePlaylistPager(boolean z) {
        if (z) {
            AnalyticsTracker.onViewDisplayed(9);
            this._PlaylistPager.show();
            this._Visualizer.pauseVisualizerAnimation();
            this._Visualizer.duck(true);
            this._CharmsGroup.setVisibility(8);
            this._EpisodeNameGroup.setVisibility(8);
            this._SeekGroup.setVisibility(8);
        } else {
            this._PlaylistPager.hide();
            if (PlayList.isCurrentlyPlaying()) {
                this._Visualizer.startVisualizerAnimation();
            }
            this._Visualizer.duck(false);
            this._CharmsGroup.setVisibility(0);
            this._EpisodeNameGroup.setVisibility(0);
            this._SeekGroup.setVisibility(0);
            this._PlayerControls.setVisibility(0);
        }
        loadTransportControls();
        this._Owner.driveViewVisibilityChanged(z);
    }

    private void updateSkipIntervalLabels() {
        this._SkipBackDuration.setText(Configuration.getBackwardSkipInterval() + "s");
        this._SkipForwardDuration.setText(Configuration.getForwardSkipInterval() + "s");
        this._SkipToEnd.setVisibility(Configuration.skipToEndButtonClickType() < 3 ? 0 : 8);
    }

    @Override // mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.CharmListener
    public void onCharmPopupDismissed() {
        this._PlayerControls.setVisibility(0);
    }

    @Override // mobi.beyondpod.ui.views.player.charms.CharmPopUpBase.CharmListener
    public void onCharmPopupShown() {
        this._PlayerControls.animate().alpha(0.0f).setDuration(this._AnimationTime).setListener(new AnimatorListenerAdapter() { // from class: mobi.beyondpod.ui.views.player.PlayerFullScreen.22
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PlayerFullScreen.this._PlayerControls.setVisibility(8);
                PlayerFullScreen.this._PlayerControls.setAlpha(1.0f);
            }
        }).start();
    }

    @Override // mobi.beyondpod.ui.views.player.charms.CharmSleepTimerPopUp.SleepTimeSelectedListener
    public void onSleepTimeSelected(int i) {
        this._Owner.setSleepTo(i);
    }

    public void updateCurrentPosition(int i, String str, String str2) {
        this._TrackPos.setText(str);
        this._TrackPos.setVisibility(0);
        this._TrackDuration.setText(str2);
        if (i >= 0) {
            this._Scrubber.setProgress(i);
        }
    }

    public void updatePlaybackSpeed(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            this._CharmSpeed.setVisibility(8);
        } else {
            this._CharmSpeed.setVisibility(0);
            this._CharmSpeed.setText(str);
        }
    }

    public void setSleepTime(int i) {
        int i2;
        int i3 = R.drawable.ic_charm_timer;
        if (i == 0) {
            this._CharmSleep.setText("");
            i2 = 0;
        } else if (i > 0) {
            this._CharmSleep.setText(String.format("%sm", Integer.valueOf(i)));
            i2 = 0;
            i3 = 0;
        } else {
            i2 = R.drawable.ic_sleep_to_end;
            this._CharmSleep.setText("");
        }
        this._CharmSleep.setCompoundDrawablesWithIntrinsicBounds(i3, 0, i2, 0);
    }

    public void updateTrackInfo(Track track, String str) {
        int i;
        int i2;
        String str2;
        String str3;
        updateSkipIntervalLabels();
        updatePlaylistCount();
        if (track != null) {
            this._Visualizer.loadEpisodeAlbumArt(track, this._Owner.getImageLoader());
            i = track.hasDownloadStarted() ? 0 : R.drawable.appwidget_streaming;
            i2 = track.locked() ? R.drawable.ic_marker_heart : 0;
            this._Scrubber.setVisibility(0);
            this._TrackDuration.setText(str);
            if (track.getCurrentPlayState() == 3 && track.hasUrl()) {
                this._TrackName.setText(String.format(PREPARING_STREAM_S, Integer.valueOf(track.getBufferedPercent())));
                this._PrepareProgress.setVisibility(0);
                this._PlayPause.setVisibility(4);
                this._Scrubber.setSecondaryProgress(track.getBufferedPercent() * 10);
            } else {
                this._PrepareProgress.setVisibility(8);
                this._PlayPause.setVisibility(0);
                String formatDateTime = track.getParentFeed().hasUrl() ? DateTime.formatDateTime(track.getLastModifiedDate()) : null;
                if (track.getCurrentPlayState() == 7) {
                    this._TrackName.setText(PLAYBACK_ERROR + "\n" + track.displayName());
                } else if (track.getCurrentPlayState() == 8) {
                    this._TrackName.setText(PLAYBACK_ERROR_STREAMING_DISABLED + " - " + track.displayName());
                } else if (track.getCurrentPlayState() == 9) {
                    this._TrackName.setText(PLAYBACK_ERROR_CANT_CAST + " - " + track.displayName());
                } else {
                    if (StringUtils.isNullOrEmpty(formatDateTime)) {
                        str2 = "";
                    } else {
                        str2 = " • " + formatDateTime;
                    }
                    String displayName = track.displayName();
                    if (ChromecastDevice.isConnected()) {
                        str3 = ChromecastUtils.buildCastingToTitle(displayName);
                    } else {
                        str3 = displayName + str2;
                    }
                    this._TrackName.setText(str3);
                }
                this._Scrubber.setSecondaryProgress(track.getBufferedPercent() * 10);
            }
        } else {
            this._Scrubber.setSecondaryProgress(1000);
            this._PrepareProgress.setVisibility(8);
            this._Scrubber.setVisibility(8);
            this._TrackPos.setVisibility(8);
            i = 0;
            i2 = 0;
        }
        this._TrackDuration.setCompoundDrawablesWithIntrinsicBounds(0, 0, i, 0);
        this._TrackPos.setCompoundDrawablesWithIntrinsicBounds(i2, 0, 0, 0);
    }

    private void updatePlaylistCount() {
        int playlistSize = BeyondPodApplication.getInstance().playList().playlistSize();
        if (playlistSize > 0) {
            this._TogglePlaylist.setVisibility(0);
            this._PlaylistCount.setText(Integer.toString(playlistSize));
        } else {
            this._TogglePlaylist.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isPagerVisible() {
        return this._PlaylistPager.getVisibility() == 0;
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistPager.IPlayerPlaylistOwner
    public ImageLoader getImageLoader() {
        return this._Owner.getImageLoader();
    }

    @Override // mobi.beyondpod.ui.views.player.PlaylistPager.IPlayerPlaylistOwner
    public void runOnUiThread(Runnable runnable) {
        this._Owner.runOnUiThread(runnable);
    }

    public void showPlaybackSpeedCharm(float f) {
        new CharmPlaybackSpeedPopUp(getContext(), this, f).show(this._CharmSpeed);
    }

    @Override // mobi.beyondpod.ui.views.player.charms.CharmPlaybackSpeedPopUp.PlaybackSpeedSelectedListener
    public void onPlaybackSpeedSelected(float f) {
        this._Owner.setPlaybackSpeed(f, -1.0f);
    }

    public void doCleanup() {
        this._Visualizer.doCleanup();
        this._PlaylistPager.doCleanup();
    }

    public void onDeActivated() {
        if (isPagerVisible()) {
            togglePlaylistPager(false);
        } else {
            this._Visualizer.onDeActivated();
        }
        this._Owner.driveViewVisibilityChanged(false);
    }

    public void onActivated() {
        if (isPagerVisible()) {
            this._PlaylistPager.onActivated();
        } else {
            this._Visualizer.onActivated();
        }
        this._Owner.driveViewVisibilityChanged(isPagerVisible());
    }

    public void onPlayerSlide(float f) {
        if (isPagerVisible()) {
            this._PlaylistPager.onPlayerSlide(f);
        }
    }

    public void onBeforeActivate() {
        togglePlaylistPager(false);
    }

    public void openTrackPropertiesDialog(Track track, TrackList trackList) {
        this._Owner.openTrackPropertiesDialog(track, trackList);
    }

    public boolean turnOffPlaylistPagerIfNeeded() {
        if (!isPagerVisible()) {
            return false;
        }
        togglePlaylistPager(false);
        return true;
    }
}
