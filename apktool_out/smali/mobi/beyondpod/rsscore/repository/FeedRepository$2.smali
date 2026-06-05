.class final Lmobi/beyondpod/rsscore/repository/FeedRepository$2;
.super Ljava/lang/Object;
.source "FeedRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackAsync(Lmobi/beyondpod/rsscore/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$2;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 712
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$2;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteTrackSync(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
