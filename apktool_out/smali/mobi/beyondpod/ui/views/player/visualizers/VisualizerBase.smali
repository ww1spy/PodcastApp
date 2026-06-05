.class public abstract Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;
.super Landroid/widget/FrameLayout;
.source "VisualizerBase.java"


# static fields
.field private static final REFRESH:I = 0x1

.field private static _DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;


# instance fields
.field private final _Handler:Landroid/os/Handler;

.field private _ImageHeight:I

.field private _ImageWidth:I

.field _LastEpisode:Ljava/lang/String;

.field private _ParseImageColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v10, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    const/16 v0, 0xa

    const/16 v1, 0x50

    const/16 v2, 0x14

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/16 v5, 0xff

    const/16 v6, 0x73

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/16 v7, 0xc8

    .line 36
    invoke-static {v7, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/16 v7, 0xb4

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const/16 v8, 0x5a

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    move-object v0, v10

    move v1, v3

    move v2, v4

    move v3, v6

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v11

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;-><init>(IIIIIIIII)V

    sput-object v10, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageWidth:I

    .line 29
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageHeight:I

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ParseImageColors:Z

    .line 141
    new-instance p1, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$2;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;
    .locals 1

    .line 24
    sget-object v0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ParseImageColors:Z

    return p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->scheduleRefreshIn(J)V

    return-void
.end method

.method private scheduleRefreshIn(J)V
    .locals 3

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method protected abstract buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
.end method

.method public doCleanup()V
    .locals 2

    .line 193
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->pauseVisualizerAnimation()V

    return-void
.end method

.method public duck(Z)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 206
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->setVisibility(I)V

    .line 207
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onDeActivated()V

    return-void
.end method

.method public abstract initialize()V
.end method

.method public loadEpisodeAlbumArt(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageHeight:I

    .line 74
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageWidth:I

    .line 79
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getEpisodeImageUrl(Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :goto_1
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 90
    sget-object p2, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_DefaultColors:Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    invoke-virtual {p0, p1, v1, p2}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->buildVisualisation(Lmobi/beyondpod/rsscore/Track;Landroid/graphics/Bitmap;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void

    .line 94
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_LastEpisode:Ljava/lang/String;

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 99
    :cond_4
    iput-object v2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_LastEpisode:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v3, p1

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v4

    new-instance v5, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;

    invoke-direct {v5, p0, p1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase$1;-><init>(Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;Lmobi/beyondpod/rsscore/Track;)V

    iget v6, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageWidth:I

    iget v7, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageHeight:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method public onActivated()V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 182
    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->scheduleRefreshIn(J)V

    return-void
.end method

.method public onDeActivated()V
    .locals 2

    .line 187
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public pauseVisualizerAnimation()V
    .locals 0

    return-void
.end method

.method protected setImageSize(II)V
    .locals 0

    .line 55
    iput p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageWidth:I

    .line 56
    iput p2, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ImageHeight:I

    return-void
.end method

.method protected setParseImageColors(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->_ParseImageColors:Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/visualizers/VisualizerBase;->onActivated()V

    return-void
.end method

.method public startVisualizerAnimation()V
    .locals 0

    return-void
.end method
