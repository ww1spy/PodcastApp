.class public abstract Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;
.super Ljava/lang/Object;
.source "EpisodeCardBase.java"


# static fields
.field protected static sFormatBuilder:Ljava/lang/StringBuilder;

.field protected static sFormatter:Ljava/util/Formatter;


# instance fields
.field public TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

.field public TBOverflow:Landroid/widget/ImageView;

.field public TBPlay:Landroid/widget/ImageView;

.field public TBPlaylist:Landroid/widget/ImageView;

.field public TBTotal:Landroid/widget/TextView;

.field protected _CardNormal:I

.field protected _CardPlayed:I

.field protected _Context:Landroid/content/Context;

.field protected _DescriptionNormal:I

.field protected _DescriptionPlayed:I

.field protected _TitleNormal:I

.field protected _TitlePlayed:I

.field public cardBase:Landroid/view/View;

.field public description:Landroid/widget/TextView;

.field public image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

.field public source:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_Context:Landroid/content/Context;

    .line 51
    sget-object v0, Lmobi/beyondpod/evo/R$styleable;->Cards:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f06003e

    .line 53
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_CardNormal:I

    const v1, 0x7f060042

    .line 54
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_CardPlayed:I

    const v1, 0x7f060051

    .line 56
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_TitleNormal:I

    const v1, 0x7f060055

    .line 57
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_TitlePlayed:I

    const v1, 0x7f060047

    .line 59
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_DescriptionNormal:I

    const v1, 0x7f06004b

    .line 60
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_DescriptionPlayed:I

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected assignTrackPrimaryImage(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    invoke-static {v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getDefaultImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    .line 123
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {v0, p2, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 128
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    return-void
.end method

.method public buildItem(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;)V
    .locals 1

    .line 74
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->wireItemData(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;Z)V

    return-void
.end method

.method public abstract getCardRoot()Landroid/view/View;
.end method

.method public abstract setButtonListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
.end method

.method protected wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V
    .locals 5

    .line 165
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    return-void

    .line 171
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    .line 182
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 190
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 192
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setUnknownProgress(J)V

    goto :goto_2

    .line 196
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setProgress(I)V

    :goto_2
    return-void

    .line 202
    :cond_5
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v3}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setState(I)V

    return-void

    .line 209
    :cond_6
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 211
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setDownloadError(I)V

    return-void

    .line 215
    :cond_7
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setState(I)V

    return-void
.end method

.method protected wireEpisodeDescription(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 2

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackDescription()Ljava/lang/String;

    move-result-object p1

    .line 93
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->description:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    iget p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_DescriptionPlayed:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_DescriptionNormal:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected wireEpisodePlayTime(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_Context:Landroid/content/Context;

    invoke-static {v1, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected wireEpisodeSource(Lmobi/beyondpod/rsscore/Track;)V
    .locals 7

    .line 106
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->source:Landroid/widget/TextView;

    sget-object v2, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->sFormatter:Ljava/util/Formatter;

    const-string v3, "%s \u2022 %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 109
    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->source:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->source:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f08013e

    goto :goto_1

    :cond_1
    move p1, v1

    .line 115
    :goto_1
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method protected wireEpisodeTitle(Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 1

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->title:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_TitlePlayed:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->_TitleNormal:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected abstract wireItemData(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;Z)V
.end method

.method protected wirePlayPauseButton(Lmobi/beyondpod/rsscore/Track;)V
    .locals 4

    .line 133
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasContentType()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ne v0, v2, :cond_2

    .line 144
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f0800ef

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 146
    :cond_3
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 148
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f0800f5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_4
    const/4 v2, 0x7

    if-eq v0, v2, :cond_9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 156
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBPlay:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const v0, 0x7f0800f4

    goto :goto_2

    :cond_6
    const v0, 0x7f0800f3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 158
    :cond_7
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBPlay:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    const v0, 0x7f0800f2

    goto :goto_3

    :cond_8
    const v0, 0x7f0800f0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 152
    :cond_9
    :goto_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f0800f1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    return-void
.end method

.method protected wirePlaylistButton(Lmobi/beyondpod/rsscore/Track;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;->TBPlaylist:Landroid/widget/ImageView;

    .line 87
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0800e8

    goto :goto_0

    :cond_0
    const p1, 0x7f0800e7

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
