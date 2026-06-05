.class public abstract Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;
.super Ljava/lang/Object;
.source "PublishedEpisodeCardBase.java"


# static fields
.field protected static sFormatBuilder:Ljava/lang/StringBuilder;

.field protected static sFormatter:Ljava/util/Formatter;


# instance fields
.field public CardBase:Landroid/view/View;

.field public Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

.field public Source:Landroid/widget/TextView;

.field public TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

.field public TBOverflow:Landroid/widget/ImageView;

.field public TBPublisherOverfolw:Landroid/widget/ImageView;

.field public Title:Landroid/widget/TextView;

.field _CardNormal:I

.field _CardNotMy:I

.field _CardPlayed:I

.field protected _Context:Landroid/content/Context;

.field _DescriptionNormal:I

.field _DescriptionNotMy:I

.field _DescriptionPlayed:I

.field _TitleNormal:I

.field _TitleNotMy:I

.field _TitlePlayed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 36
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_Context:Landroid/content/Context;

    .line 52
    sget-object v0, Lmobi/beyondpod/evo/R$styleable;->Cards:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f06003e

    .line 54
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_CardNormal:I

    const v1, 0x7f060040

    .line 55
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_CardNotMy:I

    const v1, 0x7f060042

    .line 56
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_CardPlayed:I

    const v1, 0x7f060051

    .line 58
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_TitleNormal:I

    const v1, 0x7f060053

    .line 59
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_TitleNotMy:I

    const v1, 0x7f060055

    .line 60
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_TitlePlayed:I

    const v1, 0x7f060047

    .line 62
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_DescriptionNormal:I

    const v1, 0x7f060049

    .line 63
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_DescriptionNotMy:I

    const v1, 0x7f06004b

    .line 64
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_DescriptionPlayed:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected assignTrackPrimaryImage(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 3

    if-nez p1, :cond_0

    .line 156
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    .line 163
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getDefaultImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    .line 165
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 167
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p1, p2, p3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2, p1, p3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p1, p2, p3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    :goto_0
    return-void
.end method

.method public buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Title:Landroid/widget/TextView;

    iget-object v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->wireCommonSource(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public abstract buildEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract buildPreviewEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
.end method

.method public buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 3

    .line 112
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 114
    :goto_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    if-eqz p3, :cond_1

    .line 119
    iget-object p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p3, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    .line 120
    iget-object p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-static {p2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getDefaultImageResId(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v2

    invoke-virtual {p3, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    .line 121
    iget-object p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p3, p1, p2, p4}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setRssItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 122
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->dimImage(Z)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    .line 129
    :goto_1
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Source:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f08013e

    goto :goto_2

    :cond_2
    move p1, v1

    .line 129
    :goto_2
    invoke-virtual {p2, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-eqz v0, :cond_3

    .line 134
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->CardBase:Landroid/view/View;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_CardNotMy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Title:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_TitleNotMy:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 139
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->CardBase:Landroid/view/View;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_CardNormal:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Title:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->_TitleNormal:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void
.end method

.method public abstract getCardRoot()Landroid/view/View;
.end method

.method public abstract setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
.end method

.method protected wireCommonSource(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 6

    .line 82
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->resolveOriginatingFeedTitle()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Source:Landroid/widget/TextView;

    sget-object v3, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->sFormatter:Ljava/util/Formatter;

    const-string v4, "%s \u2022 %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object v0, v5, p1

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Source:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Source:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->Source:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setState(I)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 189
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    return-void

    .line 202
    :cond_2
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setVisibility(I)V

    .line 204
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_4

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_6

    .line 212
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 214
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setUnknownProgress(J)V

    goto :goto_2

    .line 218
    :cond_5
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setProgress(I)V

    :goto_2
    return-void

    .line 224
    :cond_6
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloadPending(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 226
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v3}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setState(I)V

    return-void

    .line 231
    :cond_7
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v1

    if-nez v1, :cond_8

    .line 233
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadPercent()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setDownloadError(I)V

    return-void

    .line 237
    :cond_8
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setState(I)V

    return-void
.end method
