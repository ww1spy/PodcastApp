.class public Lmobi/beyondpod/ui/views/MovieViewControl;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final CONNECTING_TO_S:Ljava/lang/String;

.field private static final PLAYBACK_ERROR:Ljava/lang/String;

.field private static final PREPARING_STREAM:Ljava/lang/String;

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "MovieViewControl"


# instance fields
.field protected _Context:Landroid/content/Context;

.field protected _CurrentTrack:Lmobi/beyondpod/rsscore/Track;

.field private _Handler:Landroid/os/Handler;

.field private _IsPrepared:Z

.field private _MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

.field private _MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

.field private _PlaybackFailed:Z

.field private _PositionWhenPaused:I

.field private final _ProgressView:Landroid/view/View;

.field private _SeekGroup:Landroid/view/View;

.field private _StartAfterSeek:Z

.field private _StreamableImage:Landroid/widget/ImageView;

.field private _TrackName:Landroid/widget/TextView;

.field private _TransportControls:Landroid/view/View;

.field private final _VideoView:Landroid/widget/VideoView;

.field private _WasPlayingWhenPaused:Z

.field private mPlayingChecker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100285

    .line 44
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MovieViewControl;->PREPARING_STREAM:Ljava/lang/String;

    const v0, 0x7f1002d5

    .line 45
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MovieViewControl;->PLAYBACK_ERROR:Ljava/lang/String;

    const v0, 0x7f1002d3

    .line 46
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MovieViewControl;->CONNECTING_TO_S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/base/BPMediaController;Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_WasPlayingWhenPaused:Z

    .line 62
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    .line 63
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PlaybackFailed:Z

    .line 64
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StartAfterSeek:Z

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lmobi/beyondpod/ui/views/MovieViewControl$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MovieViewControl$1;-><init>(Lmobi/beyondpod/ui/views/MovieViewControl;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    .line 114
    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Context:Landroid/content/Context;

    .line 115
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const p2, 0x7f090275

    .line 116
    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    const p2, 0x7f0901d1

    .line 117
    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_ProgressView:Landroid/view/View;

    .line 119
    invoke-static {}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->getInstance()Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    .line 121
    iget-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 122
    iget-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 123
    iget-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {p2, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const p2, 0x7f0900b1

    .line 125
    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TrackName:Landroid/widget/TextView;

    const p2, 0x7f0901ce

    .line 126
    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StreamableImage:Landroid/widget/ImageView;

    const p2, 0x7f0902a6

    .line 127
    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TransportControls:Landroid/view/View;

    const p2, 0x7f09021c

    .line 128
    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPMediaController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_SeekGroup:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/MovieViewControl;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    return p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/VideoView;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lmobi/beyondpod/ui/views/MovieViewControl;->PREPARING_STREAM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/MovieViewControl;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TrackName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_ProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TransportControls:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/MovieViewControl;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_SeekGroup:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/MovieViewControl;)Lmobi/beyondpod/ui/views/base/BPMediaController;
    .locals 0

    .line 41
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lmobi/beyondpod/ui/views/MovieViewControl;->CONNECTING_TO_S:Ljava/lang/String;

    return-object v0
.end method

.method private prepareAndStartPlayback(Z)V
    .locals 3

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MovieViewControl"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing video track \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    .line 157
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 159
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    .line 162
    :cond_1
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StartAfterSeek:Z

    .line 164
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 165
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 166
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StreamableImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_ProgressView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TransportControls:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_SeekGroup:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_ProgressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TransportControls:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_SeekGroup:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StreamableImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    new-instance v0, Lmobi/beyondpod/ui/views/MovieViewControl$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MovieViewControl$2;-><init>(Lmobi/beyondpod/ui/views/MovieViewControl;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_3
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveCurrentTrackPosition()V
    .locals 4

    .line 328
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 330
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MovieViewControl"

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving current position of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    .line 334
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 254
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/MovieViewControl;->onCompletion(Z)V

    return-void
.end method

.method public onCompletion(Z)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "MovieViewControl"

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playback Error! Code1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",  Code2:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PlaybackFailed:Z

    .line 244
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TrackName:Landroid/widget/TextView;

    sget-object p2, Lmobi/beyondpod/ui/views/MovieViewControl;->PLAYBACK_ERROR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 246
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_ProgressView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_TransportControls:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_SeekGroup:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return p2
.end method

.method public onPause()V
    .locals 2

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->saveCurrentTrackPosition()V

    .line 204
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    .line 205
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_WasPlayingWhenPaused:Z

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 264
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 267
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    .line 270
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setTotalTime(J)V

    .line 272
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPartialyPlayed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    long-to-int p1, v0

    .line 275
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 277
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StartAfterSeek:Z

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->play()V

    goto :goto_0

    .line 282
    :cond_0
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StartAfterSeek:Z

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->play()V

    .line 286
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_StartAfterSeek:Z

    .line 287
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Handler:Landroid/os/Handler;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onResume(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 220
    iput v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    .line 221
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_WasPlayingWhenPaused:Z

    return-void

    .line 226
    :cond_0
    iget p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    if-ltz p1, :cond_2

    .line 228
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 229
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/MovieViewControl;->prepareAndStartPlayback(Z)V

    .line 231
    :cond_1
    iput v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    .line 233
    iget-boolean p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_WasPlayingWhenPaused:Z

    if-eqz p1, :cond_2

    .line 235
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    :cond_2
    return-void
.end method

.method public onVideoWindowHidden(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->pause()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 4

    .line 315
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->saveCurrentTrackPosition()V

    .line 316
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 317
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v2, v1}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 319
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showPlayerPausedNotication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/BeyondPodApplication;->setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const/16 v0, 0xf

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 323
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    return-void
.end method

.method public play()V
    .locals 4

    const-string v0, "MovieViewControl"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting playback of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 309
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 310
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public playTrack(Lmobi/beyondpod/rsscore/Track;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_Context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 v0, -0x1

    .line 140
    iput v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    .line 141
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 p1, 0x1

    .line 143
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MovieViewControl;->prepareAndStartPlayback(Z)V

    .line 145
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MediaController:Lmobi/beyondpod/ui/views/base/BPMediaController;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->show(J)V

    return-void
.end method

.method public playbackFailed()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PlaybackFailed:Z

    return v0
.end method

.method public skipToEnd()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->stop()V

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_IsPrepared:Z

    const/4 v0, -0x1

    .line 301
    iput v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_PositionWhenPaused:I

    .line 302
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->markPlayed()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 340
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MovieViewControl;->saveCurrentTrackPosition()V

    .line 341
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Track;->setCurrentPlayState(I)V

    .line 342
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_MetadataPublisher:Lmobi/beyondpod/services/player/TrackMetadataPublisher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_CurrentTrack:Lmobi/beyondpod/rsscore/Track;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/services/player/TrackMetadataPublisher;->publishTrackInformation(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 344
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MovieViewControl;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 345
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->fromSeconds(D)Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1, v0, v2}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleSyncTaskIfSyncIsEnabled(ILmobi/beyondpod/rsscore/helpers/TimeSpan;Z)Z

    return-void
.end method
