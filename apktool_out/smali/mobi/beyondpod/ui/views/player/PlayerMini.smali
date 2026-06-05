.class public Lmobi/beyondpod/ui/views/player/PlayerMini;
.super Landroid/widget/FrameLayout;
.source "PlayerMini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;
    }
.end annotation


# static fields
.field private static final PLAYBACK_ERROR:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

.field private static final PREPARING_STREAM_S:Ljava/lang/String;


# instance fields
.field private _AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

.field private _Owner:Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

.field private _PlayPause:Landroid/widget/ImageButton;

.field private _PrepareProgress:Landroid/widget/ProgressBar;

.field private _SubTitle:Landroid/widget/TextView;

.field private _TDR:Landroid/graphics/Rect;

.field private _Title:Landroid/widget/TextView;

.field private mPreviousHeight:I

.field private mPreviousWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002d5

    .line 37
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerMini;->PLAYBACK_ERROR:Ljava/lang/String;

    const v0, 0x7f1002d8

    .line 39
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerMini;->PREPARING_STREAM_S:Ljava/lang/String;

    const v0, 0x7f1002d7

    .line 41
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerMini;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    const v0, 0x7f1002d6

    .line 43
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlayerMini;->PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/player/PlayerMini;)Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;
    .locals 0

    .line 28
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    return-object p0
.end method


# virtual methods
.method public doCleanup()V
    .locals 0

    return-void
.end method

.method public onActivated()V
    .locals 0

    return-void
.end method

.method public onDeActivated()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const v0, 0x7f0901cc

    .line 90
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PlayPause:Landroid/widget/ImageButton;

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PlayPause:Landroid/widget/ImageButton;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlayerMini$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlayerMini$1;-><init>(Lmobi/beyondpod/ui/views/player/PlayerMini;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09028a

    .line 100
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Title:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 101
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_SubTitle:Landroid/widget/TextView;

    const v0, 0x7f09017f

    .line 103
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    .line 104
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMax(I)V

    .line 105
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 107
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 108
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 107
    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-static {v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getDefaultImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const v2, 0x7f0801f7

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setDefaultImageResId(I)V

    const v0, 0x7f0901d0

    .line 113
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PrepareProgress:Landroid/widget/ProgressBar;

    .line 115
    new-instance v0, Lmobi/beyondpod/ui/views/player/PlayerMini$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/player/PlayerMini$2;-><init>(Lmobi/beyondpod/ui/views/player/PlayerMini;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;

    new-instance v2, Lmobi/beyondpod/ui/views/player/PlayerMini$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/player/PlayerMini$3;-><init>(Lmobi/beyondpod/ui/views/player/PlayerMini;)V

    invoke-direct {v0, p0, v1, v2}, Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 155
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 160
    iget p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->mPreviousWidth:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->mPreviousHeight:I

    if-eq p5, p1, :cond_1

    .line 162
    :cond_0
    iput p4, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->mPreviousWidth:I

    .line 163
    iput p5, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->mPreviousHeight:I

    .line 165
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getHeight()I

    move-result p5

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_TDR:Landroid/graphics/Rect;

    .line 166
    new-instance p1, Landroid/view/TouchDelegate;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_TDR:Landroid/graphics/Rect;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PlayPause:Landroid/widget/ImageButton;

    invoke-direct {p1, p2, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlayerMini;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    return-void
.end method

.method public setPlayPauseButtonImage(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PlayPause:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const p1, 0x7f080064

    goto :goto_0

    :cond_0
    const p1, 0x7f080065

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public setPlayerOwner(Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    return-void
.end method

.method public updateCurrentPosition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p2

    invoke-virtual {p2}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/player/PlayerMini;->updateTrackInfo(Lmobi/beyondpod/rsscore/Track;)V

    .line 53
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    return-void
.end method

.method public updateTrackInfo(Lmobi/beyondpod/rsscore/Track;)V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 176
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    .line 178
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    invoke-interface {v3}, Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Owner:Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    invoke-interface {v4}, Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 183
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const v2, 0x7f080075

    .line 185
    :goto_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Title:Landroid/widget/TextView;

    sget-object v3, Lmobi/beyondpod/ui/views/player/PlayerMini;->PREPARING_STREAM_S:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 194
    :cond_2
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 201
    sget-object v3, Lmobi/beyondpod/ui/views/player/PlayerMini;->PLAYBACK_ERROR:Ljava/lang/String;

    goto :goto_3

    .line 203
    :cond_3
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 205
    sget-object v3, Lmobi/beyondpod/ui/views/player/PlayerMini;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    goto :goto_3

    .line 207
    :cond_4
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_5

    .line 209
    sget-object v3, Lmobi/beyondpod/ui/views/player/PlayerMini;->PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

    goto :goto_3

    .line 213
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u2022 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 218
    invoke-static {v3}, Lmobi/beyondpod/services/player/ChromecastUtils;->buildCastingToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 220
    :cond_7
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlayerMini;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0027

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-le v4, v5, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    .line 223
    :goto_3
    iget-object v4, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_SubTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_SubTitle:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    goto :goto_4

    .line 231
    :cond_a
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_AlbumArt1:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    move v2, v1

    .line 234
    :goto_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini;->_Title:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method
