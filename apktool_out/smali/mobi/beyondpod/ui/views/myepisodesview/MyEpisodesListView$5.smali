.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$5;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->refreshContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$5;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 524
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$5;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$5;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->refreshContent()V

    :cond_0
    return-void
.end method
