.class Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue$1;
.super Ljava/lang/Object;
.source "EnclosureDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;


# direct methods
.method constructor <init>(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue$1;->this$0:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue$1;->this$0:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->access$100(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;)V

    return-void
.end method
