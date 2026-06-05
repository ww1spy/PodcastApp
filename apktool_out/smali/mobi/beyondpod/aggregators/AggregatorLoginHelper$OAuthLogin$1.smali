.class Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;
.super Ljava/lang/Object;
.source "AggregatorLoginHelper.java"

# interfaces
.implements Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSimpleResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;->getAuthTokenInternal(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

.field final synthetic val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;


# direct methods
.method constructor <init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;->this$0:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    iput-object p2, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;

    invoke-interface {v0, p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success()V
    .locals 2

    .line 339
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$1;->val$result:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->OAuthAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;->success(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
