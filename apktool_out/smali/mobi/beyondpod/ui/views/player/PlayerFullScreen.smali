.class public Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
.super Landroid/widget/RelativeLayout;
.source "PlayerFullScreen.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/player/charms/CharmSleepTimerPopUp$SleepTimeSelectedListener;
.implements Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;
.implements Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;
    }
.end annotation


# static fields
.field private static final MENU_OPEN_FEED:I = 0x3

.field private static final MENU_PLAY_VIDEO_AS_AUDIO:I = 0x4

.field private static final MENU_SET_AS_FAVORITE:I = 0x2

.field private static final MENU_SHARE_PODCAST_URL:I = 0x1

.field private static final PLAYBACK_ERROR:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

.field private static final PREPARING_STREAM_S:Ljava/lang/String;


# instance fields
.field private _AnimationTime:I

.field private _CharmCarMode:Landroid/widget/ImageButton;

.field private _CharmSleep:Landroid/widget/TextView;

.field private _CharmSpeed:Landroid/widget/TextView;

.field private _CharmsGroup:Landroid/view/View;

.field private _EpisodeNameGroup:Landroid/view/View;

.field private _LargePlayPause:Landroid/widget/ImageView;

.field private _LastTouchY:F

.field private _MediaRouteButton:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;

.field private _MiniAlbumArt:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;

.field private _NextEpisode:Landroid/widget/ImageButton;

.field private _Overflow:Landroid/widget/ImageButton;

.field private _Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

.field private _PlayIconOpticalPadding:I

.field private _PlayPause:Landroid/widget/ImageButton;

.field private _PlayPauseListener:Landroid/view/View$OnClickListener;

.field private _PlayerControls:Landroid/view/View;

.field private _PlaylistCount:Landroid/widget/TextView;

.field private _PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

.field private _PrepareProgress:Landroid/widget/ProgressBar;

.field private _PrevEpisode:Landroid/widget/ImageButton;

.field private _Scrubber:Landroid/widget/SeekBar;

.field private _SeekGroup:Landroid/view/View;

.field private _ShowingCarMode:Z

.field private _SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

.field private _SkipBackClickListener:Landroid/view/View$OnClickListener;

.field private _SkipBackDuration:Landroid/widget/TextView;

.field private _SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

.field private _SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

.field private _SkipForwardClickListener:Landroid/view/View$OnClickListener;

.field private _SkipForwardDuration:Landroid/widget/TextView;

.field private _SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

.field private _SkipNextClickListener:Landroid/view/View$OnClickListener;

.field private _SkipPreviousClickListener:Landroid/view/View$OnClickListener;

.field private _SkipToEnd:Landroid/widget/ImageButton;

.field private _SkipToEndClickListener:Landroid/view/View$OnClickListener;

.field private _SkipToEndLongClickListener:Landroid/view/View$OnLongClickListener;

.field private _TogglePlaylist:Landroid/view/View;

.field private _TrackDuration:Landroid/widget/TextView;

.field private _TrackName:Landroid/widget/TextView;

.field private _TrackPos:Landroid/widget/TextView;

.field private _TransportControlsHolder:Landroid/widget/FrameLayout;

.field private _Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

.field private _VisualizerLongClickListener:Landroid/view/View$OnLongClickListener;

.field private _VisualizerPauseListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002d5

    .line 54
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PLAYBACK_ERROR:Ljava/lang/String;

    const v0, 0x7f1002d8

    .line 56
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PREPARING_STREAM_S:Ljava/lang/String;

    const v0, 0x7f1002d7

    .line 58
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    const v0, 0x7f1002d6

    .line 60
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 247
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_ShowingCarMode:Z

    .line 88
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEndClickListener:Landroid/view/View$OnClickListener;

    .line 97
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$2;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEndLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 108
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$3;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$3;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBackClickListener:Landroid/view/View$OnClickListener;

    .line 116
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$4;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$4;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    .line 124
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$5;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$5;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$6;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$6;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    .line 140
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$7;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$7;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipPreviousClickListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$8;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$8;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipNextClickListener:Landroid/view/View$OnClickListener;

    .line 163
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$9;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$9;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPauseListener:Landroid/view/View$OnClickListener;

    .line 171
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$10;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_VisualizerPauseListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$11;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$11;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_VisualizerLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;
    .locals 0

    .line 51
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)F
    .locals 0

    .line 51
    iget p0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_LastTouchY:F

    return p0
.end method

.method static synthetic access$202(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;F)F
    .locals 0

    .line 51
    iput p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_LastTouchY:F

    return p1
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_LargePlayPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->toggleCarMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayerControls:Landroid/view/View;

    return-object p0
.end method

.method private isPagerVisible()Z
    .locals 1

    .line 816
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadActionBar()V
    .locals 2

    const v0, 0x7f090014

    .line 409
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const v1, -0xbbbbbc

    .line 411
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    const v0, 0x7f09000f

    .line 414
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Overflow:Landroid/widget/ImageButton;

    .line 415
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Overflow:Landroid/widget/ImageButton;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$14;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Overflow:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f090011

    .line 473
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TogglePlaylist:Landroid/view/View;

    .line 474
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TogglePlaylist:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$15;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$15;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901c2

    .line 483
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistCount:Landroid/widget/TextView;

    const v0, 0x7f090179

    .line 485
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_MediaRouteButton:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;

    .line 486
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_MediaRouteButton:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 487
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_MediaRouteButton:Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;

    new-instance v1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;

    invoke-direct {v1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteDialogFactory;-><init>()V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteButton;->setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V

    const v0, 0x7f09000c

    .line 489
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 490
    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$16;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$16;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadCharms()V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_AnimationTime:I

    const v0, 0x7f090089

    .line 505
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmCarMode:Landroid/widget/ImageButton;

    .line 507
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmCarMode:Landroid/widget/ImageButton;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$17;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$17;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09008b

    .line 516
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    .line 518
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$18;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$19;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$19;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f09008c

    .line 554
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    .line 556
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$20;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$20;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$21;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$21;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private loadTransportControls()V
    .locals 8

    .line 340
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 341
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result v1

    const v2, 0x7f0c00ac

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerCarModeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x7f0c00aa

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 343
    :goto_1
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_ShowingCarMode:Z

    .line 345
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TransportControlsHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 347
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TransportControlsHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901d0

    .line 349
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrepareProgress:Landroid/widget/ProgressBar;

    const v2, 0x7f090230

    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    .line 352
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBack:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBackLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    const-wide/16 v6, 0x104

    invoke-virtual {v2, v5, v6, v7}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setRepeatListener(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;J)V

    const v2, 0x7f090231

    .line 354
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBackDuration:Landroid/widget/TextView;

    const v2, 0x7f090232

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    .line 357
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForwardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForward:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForwardLongClickListener:Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;

    invoke-virtual {v2, v5, v6, v7}, Lmobi/beyondpod/ui/views/base/RepeatingFrameButton;->setRepeatListener(Lmobi/beyondpod/ui/views/base/RepeatingFrameButton$RepeatListener;J)V

    const v2, 0x7f090233

    .line 360
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForwardDuration:Landroid/widget/TextView;

    const v2, 0x7f0901d3

    .line 362
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrevEpisode:Landroid/widget/ImageButton;

    .line 363
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrevEpisode:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrevEpisode:Landroid/widget/ImageButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipPreviousClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v2, 0x7f09022f

    .line 366
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEnd:Landroid/widget/ImageButton;

    .line 367
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEnd:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 369
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEnd:Landroid/widget/ImageButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEndClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEnd:Landroid/widget/ImageButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEndLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 372
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 373
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEnd:Landroid/widget/ImageButton;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    const v2, 0x7f0901a6

    .line 377
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_NextEpisode:Landroid/widget/ImageButton;

    .line 378
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_NextEpisode:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    .line 379
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_NextEpisode:Landroid/widget/ImageButton;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipNextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v2, 0x7f0901cc

    .line 381
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    .line 382
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updateSkipIntervalLabels()V

    .line 386
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0801df

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 387
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->setPlayPauseButtonImage(Z)V

    .line 389
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmCarMode:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmCarMode:Landroid/widget/ImageButton;

    const v2, 0x7f080110

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 393
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 394
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerCarModeVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0a002e

    goto :goto_3

    :cond_6
    const v3, 0x7f0a002d

    .line 393
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 396
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_7

    .line 397
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerCarModeVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0a002c

    goto :goto_4

    :cond_7
    const v0, 0x7f0a002b

    .line 396
    :goto_4
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 401
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 402
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 404
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerCarModeVisible()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x3f333333    # 0.7f

    goto :goto_5

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAlpha(F)V

    return-void
.end method

.method private toggleCarMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 332
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    .line 334
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setPlayerCarModeVisible(Z)V

    .line 335
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadTransportControls()V

    return-void
.end method

.method private updatePlaylistCount()V
    .locals 3

    .line 802
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 805
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TogglePlaylist:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 806
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TogglePlaylist:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSkipIntervalLabels()V
    .locals 3

    .line 631
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipBackDuration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getBackwardSkipInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipForwardDuration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getForwardSkipInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SkipToEnd:Landroid/widget/ImageButton;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->skipToEndButtonClickType()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public doCleanup()V
    .locals 1

    .line 845
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->doCleanup()V

    .line 846
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->doCleanup()V

    return-void
.end method

.method public getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 822
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    move-result-object v0

    return-object v0
.end method

.method public onActivated()V
    .locals 2

    .line 869
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->onActivated()V

    goto :goto_0

    .line 872
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onActivated()V

    .line 874
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->driveViewVisibilityChanged(Z)V

    return-void
.end method

.method public onBeforeActivate()V
    .locals 1

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->togglePlaylistPager(Z)V

    return-void
.end method

.method public onCharmPopupDismissed()V
    .locals 2

    .line 640
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayerControls:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCharmPopupShown()V
    .locals 3

    .line 646
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayerControls:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_AnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$22;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$22;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onDeActivated()V
    .locals 2

    .line 853
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->togglePlaylistPager(Z)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onDeActivated()V

    .line 860
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->driveViewVisibilityChanged(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0900a7

    .line 259
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayerControls:Landroid/view/View;

    const v0, 0x7f0901bf

    .line 261
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    .line 262
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_VisualizerPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_VisualizerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$12;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$12;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f09017e

    .line 276
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_MiniAlbumArt:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;

    .line 284
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_MiniAlbumArt:Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->setVisibility(I)V

    const v0, 0x7f0900dd

    .line 288
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    const v0, 0x7f0900b3

    .line 290
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    const v0, 0x7f090295

    .line 291
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    const v0, 0x7f0901c1

    .line 293
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlaylistPager;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    .line 294
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->setPlayerOwner(Lmobi/beyondpod/ui/views/player/PlaylistPager$IPlayerPlaylistOwner;)V

    const v0, 0x7f09008e

    .line 296
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmsGroup:Landroid/view/View;

    const v0, 0x7f0900de

    .line 297
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_EpisodeNameGroup:Landroid/view/View;

    const v0, 0x7f09021c

    .line 298
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SeekGroup:Landroid/view/View;

    const v0, 0x7f090169

    .line 300
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_LargePlayPause:Landroid/widget/ImageView;

    .line 302
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$13;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$13;-><init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021b

    .line 313
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    .line 314
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 317
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadCharms()V

    .line 320
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadActionBar()V

    .line 323
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayIconOpticalPadding:I

    const v0, 0x7f09029e

    .line 324
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TransportControlsHolder:Landroid/widget/FrameLayout;

    .line 325
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadTransportControls()V

    .line 326
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public onPlaybackSpeedSelected(F)V
    .locals 2

    .line 840
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->setPlaybackSpeed(FF)V

    return-void
.end method

.method public onPlayerSlide(F)V
    .locals 1

    .line 879
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->onPlayerSlide(F)V

    :cond_0
    return-void
.end method

.method public onSleepTimeSelected(I)V
    .locals 1

    .line 660
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->setSleepTo(I)V

    return-void
.end method

.method public openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 1

    .line 890
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0, p1, p2}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->openTrackPropertiesDialog(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 828
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPlayPauseButtonImage(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 583
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f0801df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 584
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 585
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f0801e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 591
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 595
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_ShowingCarMode:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayIconOpticalPadding:I

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-void
.end method

.method public setPlayerOwner(Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;)V
    .locals 1

    .line 252
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    .line 253
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->getSeekListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setSleepTime(I)V
    .locals 4

    const v0, 0x7f080112

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-lez p1, :cond_0

    .line 694
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    const-string v2, "%sm"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v1

    move v0, p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0801e6

    .line 700
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 705
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move p1, v1

    .line 709
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSleep:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public showPlaybackSpeedCharm(F)V
    .locals 2

    .line 833
    new-instance v0, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp$PlaybackSpeedSelectedListener;F)V

    .line 834
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/charms/CharmPlaybackSpeedPopUp;->show(Landroid/view/View;)V

    return-void
.end method

.method public togglePlaylistPager(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    .line 603
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onViewDisplayed(I)V

    .line 604
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->show()V

    .line 605
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    .line 606
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->duck(Z)V

    .line 607
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmsGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_EpisodeNameGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SeekGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlaylistPager:Lmobi/beyondpod/ui/views/player/PlaylistPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistPager;->hide()V

    .line 614
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->startVisualizerAnimation()V

    .line 617
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->duck(Z)V

    .line 618
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmsGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_EpisodeNameGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_SeekGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayerControls:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadTransportControls()V

    .line 625
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->driveViewVisibilityChanged(Z)V

    return-void
.end method

.method public turnOffPlaylistPagerIfNeeded()Z
    .locals 2

    .line 895
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->isPagerVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->togglePlaylistPager(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public updateCurrentPosition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 665
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ltz p1, :cond_0

    .line 671
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public updatePlaybackSpeed(Ljava/lang/String;)V
    .locals 2

    .line 676
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_CharmSpeed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateTrackInfo(Lmobi/beyondpod/rsscore/Track;Ljava/lang/String;)V
    .locals 6

    .line 715
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updateSkipIntervalLabels()V

    .line 717
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->updatePlaylistCount()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 730
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Visualizer:Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;

    invoke-interface {v3}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$IFullScreenPlayerOwner;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->loadEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;)V

    .line 732
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const v2, 0x7f080075

    .line 733
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f08013e

    goto :goto_1

    :cond_1
    move v3, v1

    .line 735
    :goto_1
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 736
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p2

    const/4 v4, 0x3

    if-ne p2, v4, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 740
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    sget-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PREPARING_STREAM_S:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 742
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 743
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto/16 :goto_5

    .line 747
    :cond_2
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 748
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 p2, 0x0

    .line 752
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 753
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 756
    :cond_3
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PLAYBACK_ERROR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 759
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 761
    :cond_4
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 764
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 766
    :cond_5
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    .line 768
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 769
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 773
    :cond_6
    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p2, ""

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u2022 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 775
    :goto_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 777
    invoke-static {v0}, Lmobi/beyondpod/services/player/ChromecastUtils;->buildCastingToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 779
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 781
    :goto_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    :goto_4
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_5

    .line 789
    :cond_9
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 790
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 792
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_Scrubber:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 793
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move v2, v1

    move v3, v2

    .line 796
    :goto_5
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackDuration:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 797
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->_TrackPos:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method
