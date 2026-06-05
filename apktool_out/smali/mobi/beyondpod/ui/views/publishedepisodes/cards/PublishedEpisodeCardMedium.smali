.class public Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;
.super Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;
.source "PublishedEpisodeCardMedium.java"


# instance fields
.field public EpisodeTB:Landroid/view/View;

.field public PublisherTB:Landroid/view/View;

.field public TBAddToMyEpisodes:Landroid/widget/TextView;

.field public TBPlay:Landroid/widget/ImageView;

.field public TBPlaylist:Landroid/widget/ImageView;

.field public TBPublisherPlay:Landroid/widget/ImageView;

.field public TBTotal:Landroid/widget/TextView;

.field private _TitleLinesEpisode:I

.field private _TitleLinesText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->getCardlayout()I

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->inflateCard(I)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleLinesEpisode:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleLinesText:I

    return-void
.end method

.method private wirePlayButton(Lmobi/beyondpod/rsscore/Track;ZLmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V
    .locals 5

    .line 222
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 225
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f0800ef

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 227
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 229
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f0800f5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_2
    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 237
    :cond_3
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    const p2, 0x7f0800f4

    goto :goto_0

    :cond_4
    const p2, 0x7f0800f3

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 240
    :cond_5
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    const p2, 0x7f0800f2

    goto :goto_1

    :cond_6
    const p2, 0x7f0800f0

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 233
    :cond_7
    :goto_2
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f0800f1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :goto_3
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlaylist:Landroid/widget/ImageView;

    .line 245
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0800e8

    goto :goto_4

    :cond_8
    const v0, 0x7f0800e7

    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_a

    .line 250
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gtz p2, :cond_9

    goto :goto_5

    .line 261
    :cond_9
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_Context:Landroid/content/Context;

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 252
    :cond_a
    :goto_5
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/32 v2, 0x19000

    cmp-long v4, p1, v2

    if-gez v4, :cond_b

    goto :goto_6

    .line 253
    :cond_b
    invoke-virtual {p3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureSizeAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_c
    :goto_6
    const-string p1, ""

    .line 255
    :goto_7
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-wide v2, p3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Duration:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_d

    .line 256
    iget-wide p1, p3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Duration:J

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object p1

    .line 264
    :cond_d
    :goto_8
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBTotal:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public buildEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 6

    .line 114
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p4

    .line 116
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->buildCommonViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 118
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p9

    .line 120
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v0

    invoke-virtual {p9}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p9, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    .line 122
    iget-object v1, p9, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p9}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileType(Ljava/lang/String;)Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    iget v1, v2, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->fileType:I

    .line 132
    :cond_0
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isVideoFileType(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const/4 v2, 0x0

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const v1, 0x7f08013e

    const/16 v4, 0x8

    if-nez v0, :cond_7

    .line 139
    iget-object v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->EpisodeTB:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->PublisherTB:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p9}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    iget v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_CardNotMy:I

    invoke-virtual {p5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Title:Landroid/widget/TextView;

    iget v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleNotMy:I

    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_DescriptionNotMy:I

    invoke-virtual {p0, p5}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->wireEpisodeDescriptionColor(I)V

    .line 153
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBAddToMyEpisodes:Landroid/widget/TextView;

    const v3, 0x7f1002f4

    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBAddToMyEpisodes:Landroid/widget/TextView;

    const v3, 0x7f0800ce

    invoke-virtual {p5, v3, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 156
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherOverfolw:Landroid/widget/ImageView;

    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherPlay:Landroid/widget/ImageView;

    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 161
    :cond_4
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    iget v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_CardNormal:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Title:Landroid/widget/TextView;

    iget v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleNormal:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_DescriptionNormal:I

    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->wireEpisodeDescriptionColor(I)V

    .line 164
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBAddToMyEpisodes:Landroid/widget/TextView;

    const v5, 0x7f1002f2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBAddToMyEpisodes:Landroid/widget/TextView;

    const v5, 0x7f0800cd

    invoke-virtual {v4, v5, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 168
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherOverfolw:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherPlay:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherPlay:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    const v3, 0x7f0800f2

    goto :goto_2

    :cond_5
    const v3, 0x7f0800f0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :goto_3
    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Source:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getStarred()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    .line 175
    :goto_4
    invoke-virtual {p5, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_9

    .line 181
    :cond_7
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->EpisodeTB:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->PublisherTB:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V

    .line 187
    invoke-direct {p0, v0, v3, p9}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->wirePlayButton(Lmobi/beyondpod/rsscore/Track;ZLmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 188
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p5

    if-eqz p5, :cond_8

    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_CardPlayed:I

    goto :goto_5

    :cond_8
    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_CardNormal:I

    :goto_5
    invoke-virtual {p1, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p5

    if-eqz p5, :cond_9

    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitlePlayed:I

    goto :goto_6

    :cond_9
    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleNormal:I

    :goto_6
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_DescriptionPlayed:I

    goto :goto_7

    :cond_a
    iget p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_DescriptionNormal:I

    :goto_7
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->wireEpisodeDescriptionColor(I)V

    .line 192
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Source:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result p5

    if-eqz p5, :cond_b

    goto :goto_8

    :cond_b
    move v1, v2

    .line 192
    :goto_8
    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 196
    :goto_9
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Title:Landroid/widget/TextView;

    iget p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleLinesEpisode:I

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 198
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 199
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Source:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ("

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_d

    const-string p4, "R"

    goto :goto_a

    :cond_d
    const-string p4, ""

    :goto_a
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p9}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result p4

    if-eqz p4, :cond_e

    const-string p4, ",D"

    goto :goto_b

    :cond_e
    const-string p4, ""

    :goto_b
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Source:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_f
    invoke-virtual {p0, v0, p2, p3}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->assignTrackPrimaryImage(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 206
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, p6}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlaylist:Landroid/widget/ImageView;

    invoke-virtual {p1, p7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p1, p8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherOverfolw:Landroid/widget/ImageView;

    invoke-virtual {p1, p8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBAddToMyEpisodes:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public buildPreviewEpisodeViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    return-void
.end method

.method public buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;->buildTextViewItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;ZLmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 104
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->EpisodeTB:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->PublisherTB:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Title:Landroid/widget/TextView;

    iget p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_TitleLinesText:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public getCardRoot()Landroid/view/View;
    .locals 1

    .line 90
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    return-object v0
.end method

.method protected getCardlayout()I
    .locals 2

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0c0057

    return v0

    :pswitch_0
    const v0, 0x7f0c005c

    return v0

    :pswitch_1
    const v0, 0x7f0c005a

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected inflateCard(I)V
    .locals 4

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_Context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    const v0, 0x7f090154

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 51
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->_Context:Landroid/content/Context;

    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    const v0, 0x7f09028a

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Title:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->Source:Landroid/widget/TextView;

    const v0, 0x7f0901bc

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBTotal:Landroid/widget/TextView;

    const v0, 0x7f09027b

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    const v0, 0x7f09027e

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f090280

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherPlay:Landroid/widget/ImageView;

    const v0, 0x7f09027d

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPlaylist:Landroid/widget/ImageView;

    const v0, 0x7f09027c

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBOverflow:Landroid/widget/ImageView;

    const v0, 0x7f09027f

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBPublisherOverfolw:Landroid/widget/ImageView;

    const v0, 0x7f0900e0

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->EpisodeTB:Landroid/view/View;

    const v0, 0x7f0901e3

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->PublisherTB:Landroid/view/View;

    const v0, 0x7f090279

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->TBAddToMyEpisodes:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;->CardBase:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected wireEpisodeDescriptionColor(I)V
    .locals 0

    return-void
.end method
