.class public Lmobi/beyondpod/aggregators/AggregatorLoginHelper$FeedlyOAuthAccountInfo;
.super Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedlyOAuthAccountInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Feedly"

    .line 189
    invoke-direct {p0, v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OAuthEndPoint()Ljava/lang/String;
    .locals 1

    .line 199
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->OAuthEndPoint:Ljava/lang/String;

    return-object v0
.end method

.method public OAuthScope()Ljava/lang/String;
    .locals 1

    .line 209
    sget-object v0, Lmobi/beyondpod/aggregators/feedly/Feedly;->OAuthScope:Ljava/lang/String;

    return-object v0
.end method

.method public OAuthTokenEndPoint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkRedirectUrl(Ljava/lang/String;)Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;
    .locals 2

    .line 215
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "code"

    .line 220
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    new-instance p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;-><init>(I)V

    .line 224
    iput-object v0, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->AuthCode:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "error"

    .line 228
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    new-instance v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;-><init>(I)V

    .line 232
    iput-object p1, v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->Error:Ljava/lang/String;

    return-object v0

    .line 236
    :cond_2
    new-instance p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;

    const/4 v0, -0x2

    invoke-direct {p1, v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;-><init>(I)V

    return-object p1

    .line 216
    :cond_3
    :goto_0
    new-instance p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;-><init>(I)V

    return-object p1
.end method
