.class public Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;
.super Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;
.source "PublishedEpisodeCardLarge.java"


# instance fields
.field public Description:Landroid/widget/TextView;

.field private _DescriptionLinesEpisode:I

.field private _DescriptionLinesText:I

.field private _TitleLinesEpisode:I

.field private _TitleLinesText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->getCardRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_TitleLinesText:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_TitleLinesEpisode:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionLinesEpisode:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionLinesText:I

    return-void
.end method


# virtual methods
.method public buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->shortTaglessDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public buildEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 75
    invoke-super/range {p0 .. p9}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->buildEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionLinesEpisode:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public buildPreviewEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 3

    .line 88
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-static {p2}, Lmobi/beyondpod/ui/core/FeedImageCache;->getDefaultImageResId(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {v0, p1, p2, p3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setRssItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 97
    :cond_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    .line 99
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->CardBase:Landroid/view/View;

    iget p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_CardNormal:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Title:Landroid/widget/TextView;

    iget p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_TitleNormal:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Title:Landroid/widget/TextView;

    iget p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_TitleLinesEpisode:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 104
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p1

    .line 105
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isVideoFileType(I)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    move p1, v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isImageFileType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move p3, v1

    .line 110
    :goto_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->TBAddToMyEpisodes:Landroid/widget/TextView;

    const p2, 0x7f1002f3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->TBAddToMyEpisodes:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    const p2, 0x7f0800f2

    goto :goto_2

    :cond_4
    const p2, 0x7f0800f0

    :goto_2
    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 113
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->TBAddToMyEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 115
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->TBPublisherPlay:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->TBPublisherOverfolw:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->EpisodeTB:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->PublisherTB:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->PublisherTB:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionNormal:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionLinesEpisode:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 63
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    iget p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionLinesText:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 64
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Title:Landroid/widget/TextView;

    iget p3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_TitleLinesEpisode:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 66
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isMockItem()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionNotMy:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_DescriptionNormal:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method protected getCardlayout()I
    .locals 2

    .line 39
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0c0056

    return v0

    :pswitch_0
    const v0, 0x7f0c005b

    return v0

    :pswitch_1
    const v0, 0x7f0c0059

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected wireEpisodeDescriptionColor(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;->Description:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
