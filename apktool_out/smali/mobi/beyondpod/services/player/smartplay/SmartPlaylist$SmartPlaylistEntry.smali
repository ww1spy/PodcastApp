.class public Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;
.super Ljava/lang/Object;
.source "SmartPlaylist.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartPlaylistEntry"
.end annotation


# instance fields
.field private _Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field private _Config:Ljava/lang/String;

.field private _ContentType:I

.field private _Deleted:Z

.field private _EpisodeSortOrder:I

.field private _Feed:Lmobi/beyondpod/rsscore/Feed;

.field private _IsModified:Z

.field private _NumTracks:I

.field private _PlaylistId:I

.field private _PlaylistName:Ljava/lang/String;

.field private _SortID:I

.field private _StorageRowID:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 264
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-direct {p0, p8, p9}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 266
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_StorageRowID:Ljava/lang/Long;

    .line 267
    iput p3, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistId:I

    .line 268
    iput-object p4, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistName:Ljava/lang/String;

    .line 270
    invoke-static {p5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 272
    invoke-static {p5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p7}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 280
    :goto_0
    iput p6, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_SortID:I

    .line 281
    iput p10, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_ContentType:I

    .line 282
    iput-object p11, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Config:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 234
    iput v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_EpisodeSortOrder:I

    const/4 v0, -0x2

    .line 235
    iput v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_ContentType:I

    const/4 v0, -0x1

    .line 236
    iput v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistId:I

    const/4 v1, 0x0

    .line 240
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_IsModified:Z

    .line 241
    iput v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_SortID:I

    .line 242
    iput-boolean v1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Deleted:Z

    .line 246
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_NumTracks:I

    .line 247
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_EpisodeSortOrder:I

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 252
    invoke-direct {p0, p2, p3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 253
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 258
    invoke-direct {p0, p2, p3}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 259
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :try_start_1
    invoke-static {v1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoryByValue(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :try_start_2
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v2, v3, :cond_0

    .line 299
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 300
    invoke-static {v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v2, v0

    goto :goto_0

    :catch_1
    move-object v1, v0

    move-object v2, v1

    .line 305
    :catch_2
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse UUID from string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    .line 308
    :goto_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 309
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz v3, :cond_1

    .line 313
    new-instance v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-direct {v0, v3, v4, p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    .line 315
    :cond_1
    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v2, v3, :cond_2

    .line 317
    new-instance v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;

    invoke-direct {v0, v2, v4, p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;-><init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    .line 321
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find feed or category with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in the repository"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cloneSmartPlaylistEntry()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;
    .locals 1

    .line 529
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 1

    .line 440
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Config:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 464
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_ContentType:I

    return v0
.end method

.method public getEpisodeSortOrder()I
    .locals 1

    .line 452
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_EpisodeSortOrder:I

    return v0
.end method

.method public getFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 428
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public getFeeds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Feed;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 388
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 394
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->isInCategory(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getNumTracks()I
    .locals 1

    .line 416
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_NumTracks:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    .line 476
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistId:I

    return v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortID()I
    .locals 1

    .line 513
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_SortID:I

    return v0
.end method

.method public getTracks(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getNumTracks()I

    move-result v1

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getEpisodeSortOrder()I

    move-result v2

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getContentType()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lmobi/beyondpod/services/player/smartplay/FeedPlaylistTemplate;->generatePlaylist(Lmobi/beyondpod/rsscore/Feed;IIILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getNumTracks()I

    move-result v1

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getEpisodeSortOrder()I

    move-result v2

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getContentType()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lmobi/beyondpod/services/player/smartplay/CategoryPlaylistTemplate;->generatePlaylist(Lmobi/beyondpod/rsscore/categories/FeedCategory;IIILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public initRowID(Ljava/lang/Long;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_StorageRowID:Ljava/lang/Long;

    return-void
.end method

.method public isMarkedForDeletion()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Deleted:Z

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_IsModified:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_StorageRowID:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markDeleted()V
    .locals 1

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Deleted:Z

    return-void
.end method

.method public rowID()Ljava/lang/Long;
    .locals 1

    .line 329
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_StorageRowID:Ljava/lang/Long;

    return-object v0
.end method

.method public setCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 447
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 1

    .line 506
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Config:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 507
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 508
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Config:Ljava/lang/String;

    return-void
.end method

.method public setContentType(I)V
    .locals 1

    .line 469
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_ContentType:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 470
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 471
    :cond_0
    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_ContentType:I

    return-void
.end method

.method public setEpisodeSortOrder(I)V
    .locals 1

    .line 457
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_EpisodeSortOrder:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 458
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 459
    :cond_0
    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_EpisodeSortOrder:I

    return-void
.end method

.method public setFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 434
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 435
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_IsModified:Z

    return-void
.end method

.method public setNumTracks(I)V
    .locals 1

    .line 421
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_NumTracks:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 422
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 423
    :cond_0
    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_NumTracks:I

    return-void
.end method

.method public setPlaylistId(I)V
    .locals 1

    .line 481
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 483
    :cond_0
    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistId:I

    return-void
.end method

.method public setPlaylistName(Ljava/lang/String;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistName:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 494
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 496
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_PlaylistName:Ljava/lang/String;

    return-void
.end method

.method public setSortID(I)V
    .locals 1

    .line 518
    iget v0, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_SortID:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 519
    invoke-virtual {p0, v0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->setIsModified(Z)V

    .line 520
    :cond_0
    iput p1, p0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->_SortID:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 405
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist$SmartPlaylistEntry;->getCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
