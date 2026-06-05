.class Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;
.super Ljava/lang/Object;
.source "RssFeedUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/RssFeedUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryInfo"
.end annotation


# instance fields
.field public reason:Ljava/lang/Exception;

.field public retryCount:I


# direct methods
.method constructor <init>(Ljava/lang/Exception;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->retryCount:I

    .line 61
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->reason:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 1

    .line 66
    iget v0, p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->retryCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public doRetry()V
    .locals 1

    .line 71
    iget v0, p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->retryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->retryCount:I

    return-void
.end method

.method public isCancelable()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/RssFeedUpdateManager$RetryInfo;->reason:Ljava/lang/Exception;

    instance-of v0, v0, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
