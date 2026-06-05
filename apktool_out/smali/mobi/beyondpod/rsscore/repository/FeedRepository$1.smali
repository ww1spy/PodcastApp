.class final Lmobi/beyondpod/rsscore/repository/FeedRepository$1;
.super Ljava/lang/Object;
.source "FeedRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteFeedAndRelatedFoldersAsync(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 524
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteFeedAndRelatedFoldersSync(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method
