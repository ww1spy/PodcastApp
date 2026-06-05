.class Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog$1;
.super Ljava/lang/Object;
.source "DeleteFeedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteFeedAndRelatedFoldersAsync(Lmobi/beyondpod/rsscore/Feed;)V

    .line 78
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->onFeedDeleted(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method
