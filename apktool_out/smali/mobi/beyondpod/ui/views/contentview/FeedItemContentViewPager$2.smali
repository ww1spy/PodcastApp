.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$2;
.super Ljava/lang/Object;
.source "FeedItemContentViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 257
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->invalidateOptionsMenu()V

    return-void
.end method
