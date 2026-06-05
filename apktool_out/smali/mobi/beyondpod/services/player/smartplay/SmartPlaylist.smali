.class public Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
.super Ljava/lang/Object;
.source "SmartPlaylist.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;
    }
.end annotation


# static fields
.field private static final CATEGORY_LABEL:Ljava/lang/String;

.field public static final DEFAULT_SMART_PLAYLIST_ID:I = 0x1

.field public static final DEFAULT_SMART_PLAYLIST_NAME:Ljava/lang/String; = "SmartPlay"

.field private static final TAG:Ljava/lang/String; = "SmartPlaylist"


# instance fields
.field _Entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _PlaylistID:I

.field private _PlaylistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Lmobi/beyondpod/R$string;->smartplay_category_label:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->CATEGORY_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistID:I

    const-string v0, "SmartPlay"

    .line 44
    iput-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistName:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_Entries:Ljava/util/ArrayList;

    .line 52
    iput p2, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistID:I

    .line 53
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p3, "SmartPlay"

    :cond_0
    iput-object p3, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->CATEGORY_LABEL:Ljava/lang/String;

    return-object v0
.end method

.method static canIncludeInPlaylist(Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Track;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)Z"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isRemoteEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 67
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 72
    :cond_2
    invoke-static {p0, p1}, Lmobi/beyondpod/services/player/PlayList;->canAddToPlaylist(Lmobi/beyondpod/rsscore/Track;Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cloneSmartPlaylist()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    .locals 4

    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_Entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_Entries:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 218
    iget-object v3, v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_Entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->cloneSmartPlaylistEntry()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :cond_0
    return-object v1
.end method

.method public entries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_Entries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public generatePlaylist()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 145
    invoke-virtual {v2, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getTracks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public id()I
    .locals 1

    .line 153
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistID:I

    return v0
.end method

.method isMarkedForDeletion()Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 165
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->isMarkedForDeletion()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public markForDeletion()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 197
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->markDeleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public onCategoryDeleted(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 3

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 92
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->markDeleted()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCategoryRenamed(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 3

    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 81
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFeedDeleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 102
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->markDeleted()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public renameTo(Ljava/lang/String;)V
    .locals 1

    .line 203
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SmartPlay"

    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistName:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    .line 109
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public swapItems(II)V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    if-ltz p2, :cond_1

    .line 130
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setSortID(I)V

    .line 136
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setSortID(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method updateEntriesNameIds()V
    .locals 4

    .line 175
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->entries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    .line 177
    invoke-virtual {v2}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->isMarkedForDeletion()Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    iget v3, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistID:I

    invoke-virtual {v2, v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setPlaylistId(I)V

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->_PlaylistName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setPlaylistName(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 188
    invoke-virtual {v2, v3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setPlaylistName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
