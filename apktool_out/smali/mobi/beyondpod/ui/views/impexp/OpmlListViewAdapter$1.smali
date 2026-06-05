.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$1;
.super Ljava/lang/Object;
.source "OpmlListViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 305
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;->access$100(Lmobi/beyondpod/ui/views/impexp/OpmlListViewAdapter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    return-void
.end method
