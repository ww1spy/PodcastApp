.class Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;
.super Ljava/lang/Object;
.source "AggregatorLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 319
    new-instance v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;-><init>(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$1;)V

    sput-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->sInstance:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;
    .locals 1

    .line 317
    sget-object v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin$Holder;->sInstance:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthLogin;

    return-object v0
.end method
