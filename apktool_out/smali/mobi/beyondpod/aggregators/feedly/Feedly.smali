.class public Lmobi/beyondpod/aggregators/feedly/Feedly;
.super Ljava/lang/Object;
.source "Feedly.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;
    }
.end annotation


# static fields
.field private static final ALL_NEW_ITEMS_IN:Ljava/lang/String;

.field static ClientID:Ljava/lang/String; = "beyondpod"

.field static ClientSTP:Ljava/lang/String; = null

.field public static EditMarkerURL:Ljava/net/URI; = null

.field public static EditTagURL:Landroid/net/Uri; = null

.field public static FeedlyUri:Landroid/net/Uri; = null

.field private static final GOOGLE_READER_FEEDS:Ljava/lang/String;

.field public static LoginAgent:Ljava/lang/String; = null

.field private static final MY_GOOGLE_ITEMS:Ljava/lang/String;

.field private static final MY_READING_LIST:Ljava/lang/String;

.field private static final MY_READ_ITEMS:Ljava/lang/String;

.field private static final MY_STARRED_ITEMS:Ljava/lang/String;

.field public static OAuthEndPoint:Ljava/lang/String; = null

.field public static OAuthScope:Ljava/lang/String; = "https://cloud.feedly.com/subscriptions"

.field private static final PERCENT_COMPLETE:Ljava/lang/String;

.field static RedirectURI:Ljava/lang/String; = "http://localhost"

.field private static Referer:Ljava/lang/String; = "beyondpod.android"

.field private static StarredTag:Ljava/lang/String; = "/tag/global.saved"

.field private static StreamItemsSuffix:Ljava/lang/String; = "contents"

.field private static StreamItemsUri:Landroid/net/Uri; = null

.field private static SubscriptionListUri:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Feedly"

.field public static TokenUri:Ljava/net/URI; = null

.field private static final UPDATING_GOOGLE_READER:Ljava/lang/String;

.field private static _FeedListDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener; = null

.field private static _GetFeedsResult:Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult; = null

.field static _LoginResult:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult; = null

.field private static _ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue; = null

.field private static _ReceiveFile:Ljava/io/File; = null

.field private static final _feedlyUri:Ljava/lang/String; = "http://cloud.feedly.com"

.field private static final _feedlyUriSecure:Ljava/lang/String; = "https://cloud.feedly.com"

.field private static final _syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 58
    sget v0, Lmobi/beyondpod/R$string;->percent_complete:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->PERCENT_COMPLETE:Ljava/lang/String;

    .line 59
    sget v0, Lmobi/beyondpod/R$string;->updating_google_reader:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->UPDATING_GOOGLE_READER:Ljava/lang/String;

    .line 60
    sget v0, Lmobi/beyondpod/R$string;->reader_folder_my_read_items:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_READ_ITEMS:Ljava/lang/String;

    .line 61
    sget v0, Lmobi/beyondpod/R$string;->reader_folder_my_starred_items:I

    .line 62
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_STARRED_ITEMS:Ljava/lang/String;

    .line 63
    sget v0, Lmobi/beyondpod/R$string;->reader_folder_my_reading_list:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_READING_LIST:Ljava/lang/String;

    .line 64
    sget v0, Lmobi/beyondpod/R$string;->reader_folder_my_google_items:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_GOOGLE_ITEMS:Ljava/lang/String;

    .line 65
    sget v0, Lmobi/beyondpod/R$string;->reader_folder_all_new_items_in:I

    .line 66
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->ALL_NEW_ITEMS_IN:Ljava/lang/String;

    .line 67
    sget v0, Lmobi/beyondpod/R$string;->google_reader_feeds:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->GOOGLE_READER_FEEDS:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_syncLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->rssCachePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feedlydata.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReceiveFile:Ljava/io/File;

    const-string v0, "http://cloud.feedly.com"

    .line 81
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->FeedlyUri:Landroid/net/Uri;

    const-string v0, "%s%s%s%s%s%s"

    const/4 v1, 0x6

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "GFIY"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "T"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "DFHBT"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "3YNACQADNK"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->ClientSTP:Ljava/lang/String;

    const-string v0, "https://cloud.feedly.com/v3/auth/token"

    .line 88
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TokenUri:Ljava/net/URI;

    const-string v0, "%s%s?response_type=code&client_id=%s&scope=%s&redirect_uri=%s"

    .line 90
    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "https://cloud.feedly.com"

    aput-object v2, v1, v3

    const-string v2, "/v3/auth/auth"

    aput-object v2, v1, v4

    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->ClientID:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->OAuthScope:Ljava/lang/String;

    .line 91
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->RedirectURI:Ljava/lang/String;

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->OAuthEndPoint:Ljava/lang/String;

    const-string v0, "http://cloud.feedly.com/v3/subscriptions"

    .line 93
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->SubscriptionListUri:Landroid/net/Uri;

    const-string v0, "http://cloud.feedly.com/v3/streams"

    .line 94
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    const-string v0, "http://cloud.feedly.com/v3/markers"

    .line 98
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->EditMarkerURL:Ljava/net/URI;

    const-string v0, "http://cloud.feedly.com/v3/tags"

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->EditTagURL:Landroid/net/Uri;

    .line 102
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->hasCustomUserAgent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultUserAgent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->MO_USER_AGENT:Ljava/lang/String;

    :goto_0
    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->LoginAgent:Ljava/lang/String;

    .line 110
    new-instance v0, Lmobi/beyondpod/aggregators/feedly/Feedly$1;

    invoke-direct {v0}, Lmobi/beyondpod/aggregators/feedly/Feedly$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_FeedListDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_GetFeedsResult:Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StarredTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lmobi/beyondpod/aggregators/AggregatorRequestQueue;)Lmobi/beyondpod/aggregators/AggregatorRequestQueue;
    .locals 0

    .line 56
    sput-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->UPDATING_GOOGLE_READER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->PERCENT_COMPLETE:Ljava/lang/String;

    return-object v0
.end method

.method public static addSubscription(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    new-instance p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    new-instance v0, Lmobi/beyondpod/aggregators/feedly/Feedly$3;

    invoke-direct {v0, p1}, Lmobi/beyondpod/aggregators/feedly/Feedly$3;-><init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V

    invoke-direct {p0, v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;-><init>(Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;)V

    .line 230
    invoke-virtual {p0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeQueuedRequests()V

    return-void
.end method

.method private static appendBeyondPodRefererParams(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 2

    .line 607
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    if-lez p1, :cond_0

    const-string v0, "count"

    .line 610
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string p1, "ck"

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "ct"

    .line 613
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->Referer:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 615
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static batchRequest(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 429
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a batch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 435
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_3

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    add-int v3, v0, v1

    invoke-virtual {p0, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "keepUnread"

    .line 441
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "markAsRead"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    new-instance v4, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;

    invoke-direct {v4, v2, p1, p2}, Lmobi/beyondpod/aggregators/feedly/FRequestEditTag;-><init>(Ljava/util/ArrayList;ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->queueRequest(Lmobi/beyondpod/aggregators/RequestBase;)V

    goto :goto_1

    .line 442
    :cond_2
    :goto_0
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    new-instance v4, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;

    invoke-direct {v4, v2, p2}, Lmobi/beyondpod/aggregators/feedly/FRequestEditRead;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->queueRequest(Lmobi/beyondpod/aggregators/RequestBase;)V

    :goto_1
    move v0, v3

    :cond_3
    if-gtz v1, :cond_0

    return-void
.end method

.method public static blockingGetAuthToken()Ljava/lang/String;
    .locals 11

    .line 664
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 665
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessTokenExpiration()Ljava/util/Date;

    move-result-object v1

    .line 666
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 667
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthRefreshToken()Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v8, v4, v6

    const-wide/32 v4, 0x124f80

    cmp-long v0, v8, v4

    const/4 v4, 0x1

    if-gez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 673
    :goto_0
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 677
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Found expired Feedly token. Token expired at: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Refreshing..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_2
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 683
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v2, "- Refresh failed - nor refresh token!"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 693
    :cond_3
    :try_start_0
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v2, "- Refreshing Feedly token..."

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v0, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;

    invoke-direct {v0, v3}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :try_start_1
    invoke-static {v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeRequest(Lmobi/beyondpod/aggregators/RequestBase;)Z

    .line 696
    invoke-virtual {v0}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->status()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 698
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 702
    :cond_4
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v3, "- Refreshing Feedly token failed!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->shouldRetry()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 706
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v3, "- Retrying refresh of Feedly token..."

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 707
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->nap(I)V

    .line 708
    invoke-static {v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeRequest(Lmobi/beyondpod/aggregators/RequestBase;)Z

    .line 710
    invoke-virtual {v0}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->status()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 711
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 715
    :goto_1
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 716
    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v4, "- Feedly token refresh failed! Giving up"

    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 718
    :cond_6
    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Feedly token refreshed! New token expires at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessTokenExpiration()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 719
    invoke-static {v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-eqz v0, :cond_7

    .line 735
    invoke-virtual {v0}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_7
    return-object v2

    :catch_0
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 729
    :goto_3
    :try_start_2
    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v4, "- failed to Feedly refresh token!"

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_8

    .line 735
    invoke-virtual {v0}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_8
    return-object v1

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmobi/beyondpod/aggregators/feedly/FRequestRefreshToken;->httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/downloadengine/IHttpClient;->close()V

    :cond_9
    throw v1
.end method

.method public static buildFeedList(Lmobi/beyondpod/aggregators/GDataObject;)Lmobi/beyondpod/rsscore/Feed;
    .locals 16

    .line 527
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 529
    new-instance v7, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    sget-object v4, Lmobi/beyondpod/aggregators/feedly/Feedly;->GOOGLE_READER_FEEDS:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lmobi/beyondpod/aggregators/feedly/Feedly;->insertCommonFeeds(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 533
    iget-object v1, v1, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/GDataObjectList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lmobi/beyondpod/aggregators/GDataObject;

    .line 536
    iget-object v1, v9, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    if-eqz v1, :cond_2

    iget-object v1, v9, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/GDataObjectList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 542
    :cond_0
    iget-object v1, v9, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lmobi/beyondpod/aggregators/GDataObjectList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/aggregators/GDataObject;

    iget-object v11, v1, Lmobi/beyondpod/aggregators/GDataObject;->string:Ljava/lang/String;

    .line 544
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    move-object v10, v1

    goto/16 :goto_2

    .line 548
    :cond_1
    new-instance v15, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v15

    move-object v3, v7

    move-object v4, v11

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x5

    .line 549
    invoke-virtual {v7, v1}, Lmobi/beyondpod/rsscore/Feed;->setType(I)V

    .line 550
    invoke-virtual {v0, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-virtual {v7}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v1, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmobi/beyondpod/aggregators/feedly/Feedly;->ALL_NEW_ITEMS_IN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    .line 553
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, v9, Lmobi/beyondpod/aggregators/GDataObject;->list:Lmobi/beyondpod/aggregators/GDataObjectList;

    invoke-virtual {v4, v10}, Lmobi/beyondpod/aggregators/GDataObjectList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/aggregators/GDataObject;

    iget-object v4, v4, Lmobi/beyondpod/aggregators/GDataObject;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 554
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x5

    move-object v10, v1

    move-object v11, v2

    move-object v12, v15

    move-object v2, v15

    move v15, v3

    invoke-direct/range {v10 .. v15}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 555
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v10, v7

    .line 559
    :goto_2
    new-instance v11, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iget-object v4, v9, Lmobi/beyondpod/aggregators/GDataObject;->title:Ljava/lang/String;

    invoke-virtual {v9}, Lmobi/beyondpod/aggregators/GDataObject;->getIDAsUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    move-object v1, v11

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 560
    invoke-virtual {v10}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v7
.end method

.method private static callFeedly(Landroid/net/Uri;ZLmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V
    .locals 3

    .line 462
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReceiveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReceiveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 465
    :cond_0
    new-instance v0, Lmobi/beyondpod/downloadengine/DownloadAgent;

    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReceiveFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmobi/beyondpod/downloadengine/DownloadAgent;-><init>(Landroid/net/Uri;Ljava/io/File;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V

    .line 467
    invoke-virtual {v0, p1}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setAllowRedirects(Z)V

    const/4 p0, 0x1

    .line 468
    invoke-virtual {v0, p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setMustRequestReaderToken(Z)V

    .line 470
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->LoginAgent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setUserAgent(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p2}, Lmobi/beyondpod/downloadengine/DownloadAgent;->setDownloadListener(Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    .line 475
    :try_start_0
    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/DownloadAgent;->startDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 480
    invoke-interface {p2, v2, p0}, Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;->onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getFeedList(Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;)V
    .locals 2

    .line 235
    sput-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_GetFeedsResult:Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;

    .line 236
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->SubscriptionListUri:Landroid/net/Uri;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->appendBeyondPodRefererParams(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_FeedListDownloadListener:Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->callFeedly(Landroid/net/Uri;ZLmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;)V

    return-void
.end method

.method public static getFeedUri(Lmobi/beyondpod/rsscore/Feed;)Landroid/net/Uri;
    .locals 3

    .line 591
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 596
    :cond_0
    invoke-static {p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_1
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feed/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 602
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result p0

    invoke-static {v0, p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->appendBeyondPodRefererParams(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static hasCachedAuthTokens()Z
    .locals 2

    .line 241
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GReaderCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GReaderCookie()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GReaderAuthValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static insertCommonFeeds(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)V
    .locals 11

    .line 568
    new-instance v6, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_GOOGLE_ITEMS:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 570
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    new-instance p0, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_READING_LIST:Ljava/lang/String;

    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user/%s/category/global.all"

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    .line 573
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    new-instance v9, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_STARRED_ITEMS:Ljava/lang/String;

    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user/%s/tag/global.saved"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v8

    .line 577
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 580
    new-instance v10, Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->MY_READ_ITEMS:Ljava/lang/String;

    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "user/%s/tag/global.read"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v8

    .line 581
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v10

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/rsscore/Feed;-><init>(Ljava/util/UUID;Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v6}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isCategoryAggregatorFeed(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 620
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->StreamItemsUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 629
    :catch_0
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static declared-synchronized isSyncing()Z
    .locals 2

    const-class v0, Lmobi/beyondpod/aggregators/feedly/Feedly;

    monitor-enter v0

    .line 451
    :try_start_0
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    if-eqz v1, :cond_0

    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->isWorking()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static logIn(Ljava/lang/String;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    :try_start_0
    new-instance v0, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;

    invoke-direct {v0, p0}, Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    new-instance p0, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    new-instance v1, Lmobi/beyondpod/aggregators/feedly/Feedly$2;

    invoke-direct {v1, p1, v0}, Lmobi/beyondpod/aggregators/feedly/Feedly$2;-><init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;Lmobi/beyondpod/aggregators/feedly/FRequestGetToken;)V

    invoke-direct {p0, v1}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;-><init>(Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;)V

    .line 196
    invoke-virtual {p0, v0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->queueRequest(Lmobi/beyondpod/aggregators/RequestBase;)V

    .line 197
    invoke-virtual {p0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeQueuedRequests()V

    return-void

    :catch_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1, p0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static parseFeedFile()Lmobi/beyondpod/aggregators/GDataObject;
    .locals 7

    .line 486
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v1, "Parsing Feedly Subscriptions ..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReceiveFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 496
    :try_start_1
    new-instance v1, Lcom/google/gson/stream/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReceiveFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :try_start_2
    invoke-static {v1}, Lmobi/beyondpod/aggregators/feedly/FeedlySubscriptionsParser;->parseSubscriptions(Lcom/google/gson/stream/JsonReader;)Lmobi/beyondpod/aggregators/GDataObject;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 511
    :try_start_3
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 517
    :catch_0
    :cond_0
    :try_start_4
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v2, "Done Parsing Feedly feed Subscriptions!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v3

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v1, v2

    .line 502
    :goto_0
    :try_start_5
    sget-object v4, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v5, "Unable to parse Feedly feed Subscriptions"

    invoke-static {v4, v5, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 511
    :try_start_6
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 517
    :catch_3
    :cond_1
    :try_start_7
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v3, "Done Parsing Feedly feed Subscriptions!"

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-object v2

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    if-eqz v2, :cond_2

    .line 511
    :try_start_8
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 517
    :catch_4
    :cond_2
    :try_start_9
    sget-object v2, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v3, "Done Parsing Feedly feed Subscriptions!"

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public static splitUnsynchronizedToBuckets(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 405
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;

    .line 408
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isReadSynced()Z

    move-result v3

    if-nez v3, :cond_2

    .line 410
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarSynced()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory$ItemStatus;->isStarred()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static declared-synchronized stopSyncing()V
    .locals 2

    const-class v0, Lmobi/beyondpod/aggregators/feedly/Feedly;

    monitor-enter v0

    .line 456
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->isSyncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 455
    monitor-exit v0

    throw v1
.end method

.method public static switchAggregateFeedsToFeedlyForUser(Ljava/lang/String;)I
    .locals 4

    .line 638
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v0, "Upgrading user aggregated feeds to Feedly..."

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getAllAggregatorFeeds()Lmobi/beyondpod/rsscore/FeedList;

    move-result-object p0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 642
    invoke-static {v2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    const/4 v3, -0x1

    .line 644
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setItemFingerprintAlgorithm(I)V

    .line 645
    invoke-virtual {v2, v0}, Lmobi/beyondpod/rsscore/Feed;->setNumUnreadItems(I)V

    const/4 v3, 0x0

    .line 646
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setLastModifiedDate(Ljava/util/Date;)V

    .line 647
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setLastServerModifiedDate(Ljava/util/Date;)V

    .line 648
    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/Feed;->setLastItemID(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->purgeAllGoogleReaderItems()V

    .line 654
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistorySync()V

    .line 655
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 657
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgraded "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " feeds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static declared-synchronized syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lmobi/beyondpod/aggregators/feedly/Feedly;

    monitor-enter v0

    .line 248
    :try_start_0
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v2, "--- Starting Reader Sync..."

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 253
    invoke-interface {p0, v2, v2, v2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;->syncCompleted(ZII)V

    .line 255
    :cond_0
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v1, "--- Another Reader Sync is already in progress! Exiting..."

    invoke-static {p0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return v2

    .line 259
    :cond_1
    :try_start_1
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->getAllUnsynchronizedGoogleReaderItems()Ljava/util/HashMap;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    .line 263
    sget-object v1, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    const-string v3, "--- Nothing to sync! Exiting..."

    invoke-static {v1, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 266
    invoke-interface {p0, v2, v2, v4}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;->syncCompleted(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :cond_2
    monitor-exit v0

    return v2

    .line 271
    :cond_3
    :try_start_2
    sget-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " items to sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onGReaderSync(I)V

    .line 275
    new-instance v3, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    new-instance v5, Lmobi/beyondpod/aggregators/feedly/Feedly$4;

    invoke-direct {v5, v1, p0}, Lmobi/beyondpod/aggregators/feedly/Feedly$4;-><init>(Ljava/util/HashMap;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)V

    invoke-direct {v3, v5}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;-><init>(Lmobi/beyondpod/aggregators/AggregatorRequestQueue$QueueListener;)V

    sput-object v3, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    .line 375
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 380
    invoke-static {v1, p0, v3, v5, v6}, Lmobi/beyondpod/aggregators/feedly/Feedly;->splitUnsynchronizedToBuckets(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 382
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "markAsRead"

    .line 383
    invoke-static {p0, v4, v1}, Lmobi/beyondpod/aggregators/feedly/Feedly;->batchRequest(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 385
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "keepUnread"

    .line 386
    invoke-static {v3, v4, p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->batchRequest(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 388
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_6

    .line 389
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StarredTag:Ljava/lang/String;

    invoke-static {v5, v2, p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->batchRequest(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 391
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    if-lez p0, :cond_7

    .line 392
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->StarredTag:Ljava/lang/String;

    invoke-static {v6, v1, p0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->batchRequest(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 395
    :cond_7
    sget-object p0, Lmobi/beyondpod/aggregators/feedly/Feedly;->_ReaderCaller:Lmobi/beyondpod/aggregators/AggregatorRequestQueue;

    invoke-virtual {p0}, Lmobi/beyondpod/aggregators/AggregatorRequestQueue;->executeQueuedRequests()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 247
    monitor-exit v0

    throw p0
.end method

.method static userStream()Ljava/lang/String;
    .locals 4

    const-string v0, "user/%s"

    const/4 v1, 0x1

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthUser()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
