.class public Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;
.super Ljava/lang/Object;
.source "PlayFromQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayFromQuery"

.field private static final VOICE_SEARCH_CATEGORY_TAG:Ljava/lang/String; = "category "

.field private static final VOICE_SEARCH_EPISODE_TAG:Ljava/lang/String; = "episode "

.field private static final VOICE_SEARCH_FEED_TAG:Ljava/lang/String; = "feed "

.field private static final VOICE_SEARCH_SMARTPLAY_TAG1:Ljava/lang/String; = "smart play"

.field private static final VOICE_SEARCH_SMARTPLAY_TAG2:Ljava/lang/String; = "smart"

.field private static final VOICE_SEARCH_SMARTPLAY_TAG3:Ljava/lang/String; = "playlist"

.field private static final VOICE_SEARCH_SORT_LATEST:Ljava/lang/String; = "latest in "

.field private static final VOICE_SEARCH_SORT_OLDEST:Ljava/lang/String; = "oldest in "

.field private static final VOICE_SEARCH_SORT_RANDOM:Ljava/lang/String; = "random in "


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cmdPlayFromVoiceSearch(Ljava/lang/String;)Z
    .locals 6

    .line 40
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPlay is matching keyword \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, " in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPlay found that the query needed some cleanup. Cleaned version: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "smart play"

    .line 53
    invoke-static {v3, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v3, :cond_11

    const-string v3, "smart"

    .line 54
    invoke-static {v3, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "playlist"

    .line 55
    invoke-static {v3, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v3, "oldest in "

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    const-string v2, "QuickPlay found match for sort order \'oldest in\'"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v0, "oldest in "

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v3, "latest in "

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    const-string v3, "QuickPlay found match for sort order \'latest in\'"

    invoke-static {v0, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "latest in "

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const-string v2, "random in "

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    const-string v2, "QuickPlay found match for sort order \'random in\'"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x64

    const-string v0, "random in "

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    move v2, v4

    .line 83
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "category "

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "category "

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-ne v2, v4, :cond_6

    .line 88
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v2

    .line 87
    :cond_6
    invoke-static {v0, v2}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playCategorySearch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    return v5

    :cond_7
    const-string v3, "feed "

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v0, "feed "

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playFeedSearch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    return v5

    :cond_8
    const-string v3, "episode "

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "episode "

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-ne v2, v4, :cond_9

    .line 99
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v2

    .line 98
    :cond_9
    invoke-static {v0, v2}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playEpisodeSearch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    return v5

    .line 104
    :cond_a
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playSmartplaySearch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v5

    :cond_b
    if-ne v2, v4, :cond_c

    .line 108
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v0

    goto :goto_1

    :cond_c
    move v0, v2

    .line 107
    :goto_1
    invoke-static {p0, v0}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playCategorySearch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    return v5

    .line 111
    :cond_d
    invoke-static {p0, v2}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playFeedSearch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    return v5

    :cond_e
    if-ne v2, v4, :cond_f

    .line 115
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v2

    .line 114
    :cond_f
    invoke-static {p0, v2}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->playEpisodeSearch(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    return v5

    .line 119
    :cond_10
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPlay was unable to find match for: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 57
    :cond_11
    :goto_2
    sget-object p0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    const-string v0, "QuickPlay starting default SmartPlay..."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    invoke-static {v4, p0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->CmdPlaySmartPlayList(ILandroid/content/Context;)Z

    return v5
.end method

.method private static playCategorySearch(Ljava/lang/String;I)Z
    .locals 5

    .line 125
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 126
    iput-boolean p0, v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->leafFeedsOnly:Z

    .line 127
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->searchForCategory(Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-virtual {v0, p0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 131
    sget-object v2, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPlay found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " category matches! Starting: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, -0x2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, p1, v3, v4}, Lmobi/beyondpod/services/player/smartplay/CategoryPlaylistTemplate;->generatePlaylist(Lmobi/beyondpod/rsscore/categories/FeedCategory;IIILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPlaylist(Landroid/content/Context;Ljava/util/List;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return p0
.end method

.method private static playEpisodeSearch(Ljava/lang/String;I)Z
    .locals 4

    .line 193
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->searchForTracks(Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 197
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v0, p1}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 201
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 203
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/TrackList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    .line 204
    sget-object v1, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPlay found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " episode matches! Starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayPlaylist(Landroid/content/Context;Ljava/util/List;Z)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static playFeedSearch(Ljava/lang/String;I)Z
    .locals 7

    .line 157
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 158
    iput-boolean p0, v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;->leafFeedsOnly:Z

    .line 159
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->searchForFeeds(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/repository/FeedRepository$FeedSearchArguments;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    new-instance v0, Lmobi/beyondpod/rsscore/FeedSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedsSortOrder()I

    move-result v2

    invoke-direct {v0, v2}, Lmobi/beyondpod/rsscore/FeedSorter;-><init>(I)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 167
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Feed;

    .line 172
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->tracksAndSubTracks()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Track;

    .line 174
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Lmobi/beyondpod/services/player/PlayList;->canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v5}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    :cond_2
    sget-object p0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPlay found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " feed matches! Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 180
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result p1

    .line 179
    :cond_3
    invoke-static {p0, v3, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayFeedEpisodes(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;I)Z

    const/4 p0, 0x1

    return p0

    :cond_4
    return p0
.end method

.method private static playSmartplaySearch(Ljava/lang/String;)Z
    .locals 3

    .line 144
    invoke-static {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->findSmartPlayByName(Ljava/lang/String;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 147
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPlay found SmartPlay match! Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->id()I

    move-result p0

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->CmdPlaySmartPlayList(ILandroid/content/Context;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
