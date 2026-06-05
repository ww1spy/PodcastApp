.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 324
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$200(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 325
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$6;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$300(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V

    return-void
.end method
