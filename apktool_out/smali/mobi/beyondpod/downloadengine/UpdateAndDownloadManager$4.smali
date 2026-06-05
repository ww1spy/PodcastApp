.class final Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager$4;
.super Ljava/lang/Object;
.source "UpdateAndDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 856
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->saveUpdateQueueToFileInternal()V

    return-void
.end method
