.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$4;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshFeeds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$4;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 459
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$4;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->access$200(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
