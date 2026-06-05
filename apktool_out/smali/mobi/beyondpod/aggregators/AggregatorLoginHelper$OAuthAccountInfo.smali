.class public abstract Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;
.super Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OAuthAccountInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 173
    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract OAuthEndPoint()Ljava/lang/String;
.end method

.method public abstract OAuthScope()Ljava/lang/String;
.end method

.method public abstract OAuthTokenEndPoint()Ljava/lang/String;
.end method

.method public abstract checkRedirectUrl(Ljava/lang/String;)Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;->_AccountName:Ljava/lang/String;

    return-object v0
.end method
