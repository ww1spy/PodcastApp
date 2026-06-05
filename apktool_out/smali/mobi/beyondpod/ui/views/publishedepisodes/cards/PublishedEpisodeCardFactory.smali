.class public Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardFactory;
.super Ljava/lang/Object;
.source "PublishedEpisodeCardFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEpisodeCard(Landroid/content/Context;)Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardBase;
    .locals 2

    .line 15
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 16
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardMedium;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 17
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 18
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardSmall;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/cards/PublishedEpisodeCardLarge;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
