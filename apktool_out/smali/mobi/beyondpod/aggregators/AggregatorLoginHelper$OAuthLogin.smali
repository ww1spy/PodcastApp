.class Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;
.super Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OAuthLogin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;
    }
.end annotation


# static fields
.field public static DefaultAccount:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$FeedlyOAuthAccountInfo;

    invoke-direct {v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$FeedlyOAuthAccountInfo;-><init>()V

    sput-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->DefaultAccount:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$1;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;-><init>()V

    return-void
.end method


# virtual methods
.method protected blockingGetAuthTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)Ljava/lang/String;
    .locals 1

    .line 360
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Requesting OAuth Authentication..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected clearAccountTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)V
    .locals 1

    .line 366
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Clearing OAuth token..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 367
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessToken(Ljava/lang/String;)V

    .line 368
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setOAuthAccessTokenExpiration(Ljava/util/Date;)V

    return-void
.end method

.method protected getAuthTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;Landroid/app/Activity;)V
    .locals 0

    .line 333
    :try_start_0
    iget-object p1, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;->_AccountName:Ljava/lang/String;

    new-instance p3, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;

    invoke-direct {p3, p0, p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;-><init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;)V

    invoke-static {p1, p3}, Lmobi/beyondpod/aggregators/feedly/Feedly;->logIn(Ljava/lang/String;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    .line 354
    invoke-interface {p2, p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;->failed(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method isCurrentlyLoggedIn()Z
    .locals 1

    .line 326
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
