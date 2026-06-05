.class public abstract Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.super Ljava/lang/Object;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$FeedlyOAuthAccountInfo;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;,
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;
    }
.end annotation


# static fields
.field public static final LOGIN_TYPE_OAUTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AggregatorLoginHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addSubscription(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    invoke-static {p0, p1}, Lmobi/beyondpod/aggregators/feedly/Feedly;->addSubscription(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V

    return-void
.end method

.method public static blockingGetAuthToken()Ljava/lang/String;
    .locals 2

    .line 277
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->currentAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;

    move-result-object v0

    .line 278
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->access$000()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->blockingGetAuthTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearAccountToken()V
    .locals 2

    .line 254
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->currentAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;

    move-result-object v0

    .line 255
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->access$000()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->clearAccountTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)V

    return-void
.end method

.method public static clearLogin()V
    .locals 2

    .line 302
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->TAG:Ljava/lang/String;

    const-string v1, "Clearing all aggregator login data"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 303
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGReaderAccountName(Ljava/lang/String;)V

    .line 304
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGReaderCookie(Ljava/lang/String;)V

    .line 305
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setGReaderAuthValue(Ljava/lang/String;)V

    .line 307
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 308
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessTokenExpiration(Ljava/util/Date;)V

    .line 310
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthUser(Ljava/lang/String;)V

    .line 311
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthRefreshToken(Ljava/lang/String;)V

    return-void
.end method

.method public static currentAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;
    .locals 1

    .line 260
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->DefaultAccount:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    return-object v0
.end method

.method public static currentOAuthAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;
    .locals 1

    .line 272
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->DefaultAccount:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    return-object v0
.end method

.method public static disconnectFromAggregator()I
    .locals 5

    .line 407
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getAllAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/Feed;

    .line 409
    invoke-static {v3}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    const/4 v4, -0x1

    .line 413
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    .line 414
    invoke-virtual {v3, v1}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    const/4 v4, 0x0

    .line 415
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    .line 416
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastServerModifiedDate(Ljava/util/Date;)V

    .line 417
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setLastItemID(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v3, v4}, Lmobi/beyondpod/rsscore/Feed;->setFeedImageUrl(Ljava/lang/String;)V

    .line 420
    invoke-static {v3}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_1
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearLogin()V

    .line 426
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->purgeAllGoogleReaderItems()V

    .line 427
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistorySync()V

    .line 428
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    return v2
.end method

.method public static getAllAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 374
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 376
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 378
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    :cond_1
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getAllSpecialAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;
    .locals 4

    .line 387
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 389
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 391
    invoke-static {v2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAuthToken(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;Landroid/app/Activity;)V
    .locals 1

    .line 249
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->access$000()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->getAuthTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;Landroid/app/Activity;)V

    return-void
.end method

.method public static getFeedUri(Lmobi/beyondpod/rsscore/Feed;)Landroid/net/Uri;
    .locals 0

    .line 434
    invoke-static {p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->getFeedUri(Lmobi/beyondpod/rsscore/Feed;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected static getInstance()Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
    .locals 1

    .line 242
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->access$000()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    move-result-object v0

    return-object v0
.end method

.method public static isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 0

    .line 400
    invoke-static {p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result p0

    return p0
.end method

.method public static isLoggedIn()Z
    .locals 1

    .line 292
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->currentAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isLoggedIn(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)Z

    move-result v0

    return v0
.end method

.method public static isLoggedIn(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)Z
    .locals 0

    .line 297
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->access$000()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->isCurrentlyLoggedIn()Z

    move-result p0

    return p0
.end method

.method public static isSyncing()Z
    .locals 1

    .line 444
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->isSyncing()Z

    move-result v0

    return v0
.end method

.method public static simulateInvalidToken()V
    .locals 2

    .line 283
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->TAG:Ljava/lang/String;

    const-string v1, "Invalidating current oAuth token..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AQAAP2B7InQiOjEsInYiOiJwcm9kdWN0aW9uIiwiaSI6IjJhMWY5NDI2LTQzZWQtNDZiZS04YTE0LThhY2Y1ZThiZmM5MSIsImEiOiJCZXlvbmRQb2QiLCJwIjoxLCJlIjoxMzcxNTkyMjA0NTc4fQ=="

    .line 287
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method public static stopSyncing()V
    .locals 0

    .line 449
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->stopSyncing()V

    return-void
.end method

.method public static syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 439
    invoke-static {p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z

    move-result p0

    return p0
.end method
