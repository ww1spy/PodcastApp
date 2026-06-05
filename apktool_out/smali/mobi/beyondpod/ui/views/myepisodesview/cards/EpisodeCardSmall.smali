.class public Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;
.super Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;
.source "EpisodeCardSmall.java"


# instance fields
.field private _ToolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->getCardlayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->inflateCard(I)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_ToolbarHeight:I

    return-void
.end method

.method private adjustSourceRightPadding()V
    .locals 2

    .line 139
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 141
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_ToolbarHeight:I

    add-int/2addr v0, v1

    .line 144
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_ToolbarHeight:I

    add-int/2addr v0, v1

    .line 147
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->source:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private wireDateAndDuration(Lmobi/beyondpod/rsscore/Track;)V
    .locals 8

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_Context:Landroid/content/Context;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->source:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    sget-object v2, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->source:Landroid/widget/TextView;

    sget-object v5, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->sFormatter:Ljava/util/Formatter;

    const-string v6, "%s \u2022 %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    .line 111
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-ne p1, v1, :cond_4

    if-ne v0, v3, :cond_1

    const v0, 0x7f080140

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f08013f

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f080143

    goto :goto_2

    :cond_4
    move v0, v4

    .line 122
    :goto_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v1

    .line 123
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    const p1, 0x7f080142

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    const p1, 0x7f08013e

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const p1, 0x7f080141

    goto :goto_3

    :cond_7
    move p1, v4

    .line 133
    :goto_3
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->source:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, p1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getCardRoot()Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->cardBase:Landroid/view/View;

    return-object v0
.end method

.method protected getCardlayout()I
    .locals 1

    const v0, 0x7f0c0058

    return v0
.end method

.method protected inflateCard(I)V
    .locals 4

    .line 34
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_Context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->cardBase:Landroid/view/View;

    const v0, 0x7f090154

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    .line 39
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 40
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_Context:Landroid/content/Context;

    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    const v0, 0x7f09028a

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->title:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->source:Landroid/widget/TextView;

    const v0, 0x7f09027b

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    const v0, 0x7f09027c

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setButtonListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 61
    iget-object p3, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->cardBase:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->cardBase:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public wireItemData(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->cardBase:Landroid/view/View;

    if-eqz p3, :cond_0

    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_CardPlayed:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->_CardNormal:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->wireDateAndDuration(Lmobi/beyondpod/rsscore/Track;)V

    .line 84
    invoke-virtual {p0, p2, p3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->wireEpisodeTitle(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->assignTrackPrimaryImage(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;)V

    .line 88
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V

    .line 90
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardSmall;->adjustSourceRightPadding()V

    return-void
.end method
