.class final Lmobi/beyondpod/aggregators/feedly/Feedly$1;
.super Ljava/lang/Object;
.source "Feedly.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/DownloadAgent$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/aggregators/feedly/Feedly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lmobi/beyondpod/downloadengine/DownloadAgent;Z)V
    .locals 1

    .line 116
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->parseFeedFile()Lmobi/beyondpod/aggregators/GDataObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$000()Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;

    move-result-object p2

    invoke-interface {p2, p1}, Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;->success(Lmobi/beyondpod/aggregators/GDataObject;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$000()Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Unable to load subscription list!"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;->failed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onDownloadError(Lmobi/beyondpod/downloadengine/DownloadAgent;Ljava/lang/Exception;)V
    .locals 0

    .line 127
    invoke-static {}, Lmobi/beyondpod/aggregators/feedly/Feedly;->access$000()Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;

    move-result-object p1

    invoke-interface {p1, p2}, Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onDownloadProgress(Lmobi/beyondpod/downloadengine/DownloadAgent;JJ)V
    .locals 0

    return-void
.end method

.method public onDownloadStarted(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 0

    return-void
.end method

.method public onDownloadTerminated(Lmobi/beyondpod/downloadengine/DownloadAgent;)V
    .locals 0

    return-void
.end method
