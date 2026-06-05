.class public Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;
.super Ljava/lang/Object;
.source "EnclosureDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadableEnclosure"
.end annotation


# instance fields
.field public enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

.field public feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    .line 62
    iput-object p2, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    return-void
.end method
