.class public Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;
.super Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;
.source "EpisodeCardMedium.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardBase;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->getCardlayout()I

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->inflateCard(I)V

    return-void
.end method


# virtual methods
.method public getCardRoot()Landroid/view/View;
    .locals 1

    .line 75
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->cardBase:Landroid/view/View;

    return-object v0
.end method

.method protected getCardlayout()I
    .locals 2

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->_Context:Landroid/content/Context;

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

    .line 27
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->_Context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->cardBase:Landroid/view/View;

    const v0, 0x7f090154

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    .line 32
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 33
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->image:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->_Context:Landroid/content/Context;

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    const v0, 0x7f09028a

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->title:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->source:Landroid/widget/TextView;

    const v0, 0x7f0901bc

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBTotal:Landroid/widget/TextView;

    const v0, 0x7f09027b

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    const v0, 0x7f09027e

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    const v0, 0x7f09027d

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBPlaylist:Landroid/widget/ImageView;

    const v0, 0x7f09027c

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBOverflow:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setButtonListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBDownload:Lmobi/beyondpod/ui/views/base/DownloadProgressButton;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/DownloadProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBPlaylist:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->TBOverflow:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFaceListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->cardBase:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->cardBase:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public wireItemData(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 2

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->cardBase:Landroid/view/View;

    if-eqz p3, :cond_0

    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->_CardPlayed:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->_CardNormal:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wireEpisodeSource(Lmobi/beyondpod/rsscore/Track;)V

    .line 90
    invoke-virtual {p0, p2, p3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wireEpisodeTitle(Lmobi/beyondpod/rsscore/Track;Z)V

    .line 91
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wirePlaylistButton(Lmobi/beyondpod/rsscore/Track;)V

    .line 92
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wireEpisodePlayTime(Lmobi/beyondpod/rsscore/Track;)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->assignTrackPrimaryImage(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;)V

    .line 94
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wirePlayPauseButton(Lmobi/beyondpod/rsscore/Track;)V

    .line 95
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wireDownloadButton(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
