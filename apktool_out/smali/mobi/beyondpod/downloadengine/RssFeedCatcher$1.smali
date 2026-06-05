.class Lmobi/beyondpod/downloadengine/RssFeedCatcher$1;
.super Ljava/lang/Object;
.source "RssFeedCatcher.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/FeedImageDownloader$FeedImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/RssFeedCatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/downloadengine/RssFeedCatcher;


# direct methods
.method constructor <init>(Lmobi/beyondpod/downloadengine/RssFeedCatcher;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher$1;->this$0:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 340
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/RssFeedCatcher$1;->this$0:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-static {p1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->access$000(Lmobi/beyondpod/downloadengine/RssFeedCatcher;)V

    return-void
.end method
