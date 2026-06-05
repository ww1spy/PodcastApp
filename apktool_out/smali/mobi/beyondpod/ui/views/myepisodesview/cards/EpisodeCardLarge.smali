.class public Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardLarge;
.super Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;
.source "EpisodeCardLarge.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardLarge;->getCardRoot()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardLarge;->description:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected getCardlayout()I
    .locals 2

    .line 21
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardLarge;->_Context:Landroid/content/Context;

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

.method public wireItemData(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;Z)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardMedium;->wireItemData(Lmobi/beyondpod/ui/core/volley/ImageLoader;Lmobi/beyondpod/rsscore/Track;Z)V

    .line 38
    invoke-virtual {p0, p2, p3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/EpisodeCardLarge;->wireEpisodeDescription(Lmobi/beyondpod/rsscore/Track;Z)V

    return-void
.end method
