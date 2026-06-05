.class public Lmobi/beyondpod/ui/core/MasterViewState;
.super Ljava/lang/Object;
.source "MasterViewState.java"


# static fields
.field public static final CONTENT_VIEW_FEED_ITEM_IDS:Ljava/lang/String; = "CONTENT_VIEW_FEED_ITEMS"

.field public static final CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP:Ljava/lang/String; = "CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP"

.field public static final CONTENT_VIEW_FEED_KEY:Ljava/lang/String; = "CONTENT_VIEW_FEED_KEY"

.field public static final CURRENT_VIEW_KEY:Ljava/lang/String; = "CURRENT_VIEW_KEY"

.field public static final EPISODE_ITEM_IDS:Ljava/lang/String; = "EPISODE_ITEMS"

.field public static final FEEDS_FVI:Ljava/lang/String; = "FEEDS_FVI"

.field public static final FEEDS_ROOT_KEY:Ljava/lang/String; = "FEEDS_ROOT_KEY"

.field public static final FEED_CONTENT_FVI:Ljava/lang/String; = "FEED_CONTENT_FVI"

.field public static final FEED_SCOPE_KEY:Ljava/lang/String; = "FEED_SCOPE_KEY"

.field public static final LAST_EXTERNAL_PLAYING_TRACK_PATH:Ljava/lang/String; = "LAST_EXTERNAL_PLAYING_TRACK_PATH"

.field public static final LAST_EXTERNAL_PLAYING_TRACK_TIME:Ljava/lang/String; = "LAST_EXTERNAL_PLAYING_TRACK_TIME"

.field public static final P2P_KEY:Ljava/lang/String; = "P2P_KEY"

.field public static final PODCASTS_FVI:Ljava/lang/String; = "PODCASTS_FVI"


# instance fields
.field public contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

.field public currentView:I

.field public episodeItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public episodeItems:Lmobi/beyondpod/rsscore/TrackList;

.field public feedContentFirstVisibleItem:Ljava/lang/String;

.field public feedContentItemIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public feedContentItemIdsTimeStamp:J

.field public feedContentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public feedContentRssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

.field public feedsFirstVisibleItem:I

.field public feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

.field public lastExternalPlayingTrackPath:Ljava/lang/String;

.field public lastExternalPlayingTrackTime:J

.field public podcastCurrentScope:I

.field public podcastsFirstVisibleItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    .line 53
    iput v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->podcastCurrentScope:I

    return-void
.end method

.method static dumpBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "The bundle is <null>"

    return-object p0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CURRENT_VIEW_KEY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CURRENT_VIEW_KEY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "P2P_KEY:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "P2P_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FEED_SCOPE_KEY:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FEED_SCOPE_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FEEDS_ROOT_KEY:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FEEDS_ROOT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CONTENT_VIEW_FEED_KEY:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CONTENT_VIEW_FEED_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lmobi/beyondpod/ui/core/MasterViewState;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/core/MasterViewState;

    invoke-direct {v0}, Lmobi/beyondpod/ui/core/MasterViewState;-><init>()V

    const-string v1, "CURRENT_VIEW_KEY"

    .line 130
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    const-string v1, "FEED_SCOPE_KEY"

    .line 131
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->podcastCurrentScope:I

    const-string v1, "FEEDS_ROOT_KEY"

    .line 136
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/ui/core/MasterViewState;->safeGetFeed(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    :cond_1
    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    const-string v1, "CONTENT_VIEW_FEED_KEY"

    .line 139
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/ui/core/MasterViewState;->safeGetFeed(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    const-string v1, "CONTENT_VIEW_FEED_ITEMS"

    .line 140
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIds:Ljava/util/ArrayList;

    const-string v1, "EPISODE_ITEMS"

    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    const-string v1, "LAST_EXTERNAL_PLAYING_TRACK_PATH"

    .line 144
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackPath:Ljava/lang/String;

    const-string v1, "LAST_EXTERNAL_PLAYING_TRACK_TIME"

    const-wide/16 v2, -0x1

    .line 145
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackTime:J

    const-string v1, "FEED_CONTENT_FVI"

    .line 147
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentFirstVisibleItem:Ljava/lang/String;

    const-string v1, "PODCASTS_FVI"

    .line 148
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->podcastsFirstVisibleItem:Ljava/lang/String;

    const-string v1, "FEEDS_FVI"

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsFirstVisibleItem:I

    const-string v1, "CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP"

    .line 150
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIdsTimeStamp:J

    return-object v0
.end method

.method static safeGetFeed(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;
    .locals 2

    .line 171
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 178
    :cond_1
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "CURRENT_VIEW_KEY"

    .line 71
    iget v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "FEED_SCOPE_KEY"

    .line 72
    iget v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->podcastCurrentScope:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "FEEDS_ROOT_KEY"

    .line 73
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CONTENT_VIEW_FEED_KEY"

    .line 74
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LAST_EXTERNAL_PLAYING_TRACK_PATH"

    .line 76
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LAST_EXTERNAL_PLAYING_TRACK_TIME"

    .line 77
    iget-wide v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->lastExternalPlayingTrackTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "FEED_CONTENT_FVI"

    .line 79
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentFirstVisibleItem:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PODCASTS_FVI"

    .line 80
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->podcastsFirstVisibleItem:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FEEDS_FVI"

    .line 81
    iget v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsFirstVisibleItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP"

    .line 82
    iget-wide v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIdsTimeStamp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIds:Ljava/util/ArrayList;

    .line 86
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 89
    iget-object v2, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v0, "CONTENT_VIEW_FEED_ITEMS"

    .line 91
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    .line 96
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItems:Lmobi/beyondpod/rsscore/TrackList;

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItems:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    .line 99
    iget-object v2, p0, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v0, "EPISODE_ITEMS"

    .line 101
    iget-object v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->episodeItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current View:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "podcastCurrentScope:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->podcastCurrentScope:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "feedsViewRootFeed:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<null>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contentViewFeed:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "<null>"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
