.class public Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueListDataItem"
.end annotation


# instance fields
.field Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

.field Feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 307
    iput-object p2, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueViewAdapter$QueueListDataItem;->Enclosure:Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    return-void
.end method
