.class public Lmobi/beyondpod/rsscore/repository/RepositoryHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RepositoryHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RepositoryParser"


# instance fields
.field private _Categories:Ljava/lang/StringBuilder;

.field private _Feed:Lmobi/beyondpod/rsscore/Feed;

.field private _IsInCategories:Z

.field private _Tracks:Lmobi/beyondpod/rsscore/TrackDictionary;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/TrackDictionary;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_IsInCategories:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Categories:Ljava/lang/StringBuilder;

    .line 57
    iput-object p1, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Tracks:Lmobi/beyondpod/rsscore/TrackDictionary;

    .line 58
    iput-object p2, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method private getAttributeValue(Lorg/xml/sax/Attributes;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 129
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 131
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readFeed(Lorg/xml/sax/Attributes;)V
    .locals 31

    move-object/from16 v1, p0

    .line 192
    invoke-direct/range {p0 .. p1}, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->getAttributeValue(Lorg/xml/sax/Attributes;)Ljava/util/HashMap;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    .line 196
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseUUIDFromString(Ljava/lang/String;Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v3

    const-string v4, "name"

    .line 198
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "path"

    .line 200
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    .line 201
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "imageUrl"

    .line 202
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "category"

    .line 204
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "username"

    .line 206
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "autodelete"

    .line 209
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v12, "view"

    .line 210
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "type"

    .line 211
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "maxTracks"

    .line 212
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultKeepAtMostPodcasts()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "maxTrackAge"

    .line 213
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const v11, 0x1869f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v15, "maxDownload"

    .line 214
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v11

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGlobalDefaultNumberPodcastsToDownload()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v15, "maxGReaderItems"

    .line 215
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v18, v11

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v14, "hasUnread"

    .line 216
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move/from16 v19, v11

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v14, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v14, "custDownload"

    .line 217
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v20, v9

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v14, "forceUniqueNames"

    .line 218
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseBooleanFromString(Ljava/lang/String;Z)Z

    move-result v14

    const-string v15, "savePlayedPosition"

    .line 219
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v21, v9

    const/4 v9, 0x1

    invoke-static {v15, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseBooleanFromString(Ljava/lang/String;Z)Z

    move-result v15

    const-string v9, "fingerprintType"

    .line 220
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move/from16 v23, v15

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v9, v15}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v15, "leftTruncateLongTrackNames"

    .line 221
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v24, v9

    const/4 v9, 0x0

    invoke-static {v15, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseBooleanFromString(Ljava/lang/String;Z)Z

    move-result v9

    const-string v15, "forceItemSort"

    .line 222
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v25, v9

    const/4 v9, -0x1

    move/from16 v26, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v15, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "trackSort"

    .line 223
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v27, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v15, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "feedPlayer"

    .line 224
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v15, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v15, "pubDate"

    .line 226
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    move/from16 v28, v14

    const-string v14, "srvPubDate"

    .line 227
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move/from16 v29, v9

    const-string v9, "lastItemId"

    .line 229
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    new-instance v9, Lmobi/beyondpod/rsscore/Feed;

    move-object/from16 v30, v2

    iget-object v2, v1, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {v9, v3, v2}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :try_start_1
    invoke-virtual {v9, v4}, Lmobi/beyondpod/rsscore/Feed;->setName(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v9, v6}, Lmobi/beyondpod/rsscore/Feed;->setFeedUrl(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v9, v7}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v9, v10}, Lmobi/beyondpod/rsscore/Feed;->setAllowAutoTrackDeletions(I)V

    .line 239
    invoke-virtual {v9, v12}, Lmobi/beyondpod/rsscore/Feed;->setPreferredEnclosureIndex(I)V

    .line 240
    invoke-virtual {v9, v13}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 241
    invoke-virtual {v9, v5}, Lmobi/beyondpod/rsscore/Feed;->setFeedPath(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v9, v11}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    .line 243
    invoke-virtual {v9, v15}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    .line 244
    invoke-virtual {v9, v14}, Lmobi/beyondpod/rsscore/Feed;->setLastServerModifiedDate(Ljava/util/Date;)V

    .line 245
    invoke-static {v8}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->deserialize(Ljava/lang/String;)Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setCategories(Lmobi/beyondpod/rsscore/categories/FeedCategories;)V

    move/from16 v2, v27

    .line 246
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    move/from16 v2, v26

    .line 247
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setForceUniqueTrackNames(Z)V

    move/from16 v2, v23

    .line 248
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setShouldRememberPlayedPosition(Z)V

    move/from16 v2, v24

    .line 249
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    move/from16 v2, v25

    .line 250
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setLeftTruncateLongTrackNames(Z)V

    move-object/from16 v2, v30

    .line 251
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setLastItemID(Ljava/lang/String;)V

    move/from16 v2, v29

    .line 252
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setFeedPlayer(I)V

    move-object/from16 v2, v20

    .line 253
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setUserName(Ljava/lang/String;)V

    move/from16 v2, v28

    .line 254
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    if-lez v19, :cond_0

    move/from16 v2, v19

    .line 257
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumGReaderItemsToGet(I)V

    :cond_0
    move/from16 v2, v21

    .line 259
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setPodcastDownloadAction(I)V

    move/from16 v2, v18

    .line 260
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setMaxNumberPodcastsToDownload(I)V

    move/from16 v2, v17

    .line 261
    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setKeepAtMostPodcasts(I)V

    .line 262
    new-instance v2, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    move/from16 v3, v16

    int-to-long v3, v3

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    invoke-direct/range {v17 .. v25}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(JJJJ)V

    invoke-virtual {v9, v2}, Lmobi/beyondpod/rsscore/Feed;->setMaximumPodcastAge(Lmobi/beyondpod/rsscore/helpers/TimeSpan;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    const-string v3, "RepositoryParser"

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read feed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    iget-object v2, v1, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    const-string v3, "RepositoryParser"

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read feed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private readTrack(Lorg/xml/sax/Attributes;)V
    .locals 24

    .line 139
    invoke-direct/range {p0 .. p1}, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->getAttributeValue(Lorg/xml/sax/Attributes;)Ljava/util/HashMap;

    move-result-object v1

    :try_start_0
    const-string v2, "path"

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    .line 144
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "protocol"

    .line 145
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    .line 146
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "imagePath"

    .line 147
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "postTitle"

    .line 148
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "postUrl"

    .line 149
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "url"

    .line 150
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "contentType"

    .line 151
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseStringFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "totalTime"

    .line 153
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v11, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-string v11, "playedTime"

    .line 154
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v11, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-string v11, "played"

    .line 156
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseBooleanFromString(Ljava/lang/String;Z)Z

    move-result v19

    const-string v11, "downloadSize"

    .line 158
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v11, v14}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-string v11, "downloadPortion"

    .line 159
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-wide/from16 v20, v12

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11, v12}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseLongFromString(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v13, "locked"

    .line 161
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-wide/from16 v22, v11

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13, v11}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "pubDate"

    .line 163
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 165
    new-instance v12, Lmobi/beyondpod/rsscore/Track;

    const/4 v13, 0x0

    invoke-direct {v12, v2, v13}, Lmobi/beyondpod/rsscore/Track;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;)V

    .line 167
    invoke-virtual {v12, v3}, Lmobi/beyondpod/rsscore/Track;->setName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v12, v10}, Lmobi/beyondpod/rsscore/Track;->setContentMimeType(Ljava/lang/String;)V

    move v2, v14

    move-object v14, v12

    .line 169
    invoke-virtual/range {v14 .. v19}, Lmobi/beyondpod/rsscore/Track;->initializePlayedTimes(JJZ)V

    .line 170
    invoke-virtual {v12, v4}, Lmobi/beyondpod/rsscore/Track;->setProtocol(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v12, v5}, Lmobi/beyondpod/rsscore/Track;->setTrackDescription(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v12, v6}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v12, v7}, Lmobi/beyondpod/rsscore/Track;->setTrackPostTitle(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v12, v8}, Lmobi/beyondpod/rsscore/Track;->setTrackPostUrl(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v12, v9}, Lmobi/beyondpod/rsscore/Track;->setUrl(Ljava/lang/String;)V

    move-wide/from16 v3, v22

    .line 176
    invoke-virtual {v12, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setDownloadedPortion(J)V

    move-wide/from16 v3, v20

    .line 177
    invoke-virtual {v12, v3, v4}, Lmobi/beyondpod/rsscore/Track;->setDownloadSize(J)V

    .line 178
    invoke-virtual {v12, v1}, Lmobi/beyondpod/rsscore/Track;->setLastModifiedDate(Ljava/util/Date;)V

    const/4 v14, 0x1

    if-ne v11, v14, :cond_0

    goto :goto_0

    :cond_0
    move v14, v2

    .line 179
    :goto_0
    invoke-virtual {v12, v14}, Lmobi/beyondpod/rsscore/Track;->setLocked(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    .line 181
    :try_start_1
    iget-object v2, v1, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Tracks:Lmobi/beyondpod/rsscore/TrackDictionary;

    invoke-virtual {v12}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lmobi/beyondpod/rsscore/TrackDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_1
    move-object v2, v0

    const-string v3, "RepositoryParser"

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read track! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_IsInCategories:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Categories:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 100
    iget-boolean p1, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_IsInCategories:Z

    if-eqz p1, :cond_0

    .line 104
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_Categories:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 106
    invoke-static {p1}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->deserialize(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RepositoryParser"

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read categories! reason: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_IsInCategories:Z

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "categories"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :sswitch_1
    const-string p1, "track"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p1, "task"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string p1, "feed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string p1, "tracks"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 92
    :pswitch_0
    new-instance p1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p1, p4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-static {p1}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->loadTask(Lorg/xml/sax/helpers/AttributesImpl;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    goto :goto_2

    .line 89
    :pswitch_1
    invoke-direct {p0, p4}, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->readFeed(Lorg/xml/sax/Attributes;)V

    goto :goto_2

    .line 86
    :pswitch_2
    invoke-direct {p0, p4}, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->readTrack(Lorg/xml/sax/Attributes;)V

    goto :goto_2

    .line 81
    :pswitch_3
    invoke-direct {p0, p4}, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->getAttributeValue(Lorg/xml/sax/Attributes;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "versionId"

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->setTrialStartDate(Ljava/util/Date;)V

    goto :goto_2

    .line 78
    :pswitch_4
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryHandler;->_IsInCategories:Z

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3399c778 -> :sswitch_4
        0x2fe59e -> :sswitch_3
        0x363585 -> :sswitch_2
        0x697f14b -> :sswitch_1
        0x4d47461c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
