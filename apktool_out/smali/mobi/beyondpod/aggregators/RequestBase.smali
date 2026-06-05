.class public abstract Lmobi/beyondpod/aggregators/RequestBase;
.super Ljava/lang/Object;
.source "RequestBase.java"


# static fields
.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_PENDING:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1


# instance fields
.field private _LastException:Ljava/lang/Exception;

.field protected _RequestStatus:I

.field protected _RetryCount:I

.field protected _ShouldAbort:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_ShouldAbort:Z

    .line 31
    iput v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RetryCount:I

    .line 32
    iput v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RequestStatus:I

    return-void
.end method


# virtual methods
.method public abstract httpClient()Lmobi/beyondpod/downloadengine/IHttpClient;
.end method

.method public lastException()Ljava/lang/Exception;
    .locals 1

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_LastException:Ljava/lang/Exception;

    return-object v0
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RequestStatus:I

    .line 45
    iput-object p1, p0, Lmobi/beyondpod/aggregators/RequestBase;->_LastException:Ljava/lang/Exception;

    .line 47
    instance-of p1, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AuthenticationException;

    if-eqz p1, :cond_0

    .line 49
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearAccountToken()V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RequestStatus:I

    return-void
.end method

.method public shouldAbort()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_ShouldAbort:Z

    return v0
.end method

.method public shouldRetry()Z
    .locals 2

    .line 55
    iget v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RetryCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RetryCount:I

    .line 56
    iget v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RetryCount:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public status()I
    .locals 1

    .line 66
    iget v0, p0, Lmobi/beyondpod/aggregators/RequestBase;->_RequestStatus:I

    return v0
.end method
