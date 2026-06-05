.class public Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;
.super Ljava/lang/Object;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedirectResult"
.end annotation


# static fields
.field public static final RESULT_TYPE_ACCESS_DENIED:I = -0x1

.field public static final RESULT_TYPE_ACCESS_GRANTED:I = 0x1

.field public static final RESULT_TYPE_ACCESS_UNKNOWN:I = -0x2

.field public static final RESULT_TYPE_INVALID_REDIRECT:I


# instance fields
.field public AuthCode:Ljava/lang/String;

.field public Error:Ljava/lang/String;

.field public Result:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->Result:I

    .line 157
    iput p1, p0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->Result:I

    return-void
.end method
