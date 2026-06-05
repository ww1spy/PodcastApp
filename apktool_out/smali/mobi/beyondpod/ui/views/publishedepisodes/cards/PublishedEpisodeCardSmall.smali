.class public Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;
.super Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;
.source "PublishedEpisodeCardSmall.java"


# instance fields
.field public TBAddToMyEpisodes:Landroid/widget/ImageView;

.field private _TitleLinesEpisode:I

.field private _TitleLinesText:I

.field private _ToolbarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->getCardlayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->inflateCard(I)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_ToolbarHeight:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleLinesEpisode:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleLinesText:I

    return-void
.end method

.method private adjustSourceRightPadding()V
    .locals 2

    .line 202
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 204
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_ToolbarHeight:I

    add-int/2addr v0, v1

    .line 207
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_ToolbarHeight:I

    add-int/2addr v0, v1

    .line 210
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-void
.end method

.method private wireDateAndDuration(Lmobi/beyondpod/rsscore/Track;)V
    .locals 8

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_Context:Landroid/content/Context;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_0
    sget-object v2, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 166
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    sget-object v5, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->sFormatter:Ljava/util/Formatter;

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

    .line 172
    :goto_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    .line 174
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

    .line 185
    :goto_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v1

    .line 186
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

    .line 196
    :goto_3
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, p1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public buildEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p4

    .line 95
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 96
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p7

    .line 98
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object p9

    invoke-virtual {p7}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p7, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {p9, v0, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p9

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {v0, p6}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {v0, p8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p8, 0x8

    const/4 v0, 0x0

    if-nez p9, :cond_2

    .line 105
    invoke-virtual {p7}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    iget v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_CardNotMy:I

    invoke-virtual {p5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    iget v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleNotMy:I

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p5, p8}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    .line 111
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p5, p8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    invoke-virtual {p5, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    const p6, 0x7f0800ce

    invoke-virtual {p5, p6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    iget v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_CardNormal:I

    invoke-virtual {p6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    iget-object p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    iget v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleNormal:I

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p6, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    .line 123
    iget-object p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    invoke-virtual {p6, p8}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p6, 0x0

    .line 124
    invoke-virtual {p0, p6}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V

    .line 125
    iget-object p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    invoke-virtual {p6, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :goto_0
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f08013e

    goto :goto_1

    :cond_1
    move p1, v0

    .line 128
    :goto_1
    invoke-virtual {p5, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 133
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    invoke-virtual {p1, p8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    invoke-virtual {p9}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p6

    if-eqz p6, :cond_3

    iget p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_CardPlayed:I

    goto :goto_2

    :cond_3
    iget p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_CardNormal:I

    :goto_2
    invoke-virtual {p1, p6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    invoke-virtual {p9}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p6

    if-eqz p6, :cond_4

    iget p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitlePlayed:I

    goto :goto_3

    :cond_4
    iget p6, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleNormal:I

    :goto_3
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-virtual {p0, p9}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V

    .line 139
    invoke-direct {p0, p9}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->wireDateAndDuration(Lmobi/beyondpod/rsscore/Track;)V

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :goto_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleLinesEpisode:I

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 145
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 146
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ("

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_6

    const-string p4, "R"

    goto :goto_5

    :cond_6
    const-string p4, ""

    :goto_5
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p7}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p4, ",D"

    goto :goto_6

    :cond_7
    const-string p4, ""

    :goto_6
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object p4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_8
    invoke-virtual {p0, p9, p2, p3}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->assignTrackPrimaryImage(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 153
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->adjustSourceRightPadding()V

    return-void
.end method

.method public buildPreviewEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    return-void
.end method

.method public buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 79
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_TitleLinesText:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->adjustSourceRightPadding()V

    return-void
.end method

.method public getCardRoot()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    return-object v0
.end method

.method protected getCardlayout()I
    .locals 1

    const v0, 0x7f0c0058

    return v0
.end method

.method protected inflateCard(I)V
    .locals 4

    .line 38
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_Context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    const v0, 0x7f090154

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    .line 43
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 44
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->_Context:Landroid/content/Context;

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    const v0, 0x7f09028a

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Title:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->Source:Landroid/widget/TextView;

    const v0, 0x7f09027b

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    const v0, 0x7f09027c

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBOverflow:Landroid/widget/ImageView;

    const v0, 0x7f090035

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->TBAddToMyEpisodes:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;->CardBase:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
