.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onDownload(Lmobi/beyondpod/rsscore/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

.field final synthetic val$episode:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinue()V
    .locals 2

    .line 794
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$6;->val$episode:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadTrackManually(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
