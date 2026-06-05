.class Lmobi/beyondpod/ui/dialogs/PreviewPlayer$1;
.super Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;
.source "PreviewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/PreviewPlayer;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;Lmobi/beyondpod/rsscore/Feed;I)V
    .locals 6

    .line 95
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer$1;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayer;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lmobi/beyondpod/ui/dialogs/PreviewPlayerControl;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;Lmobi/beyondpod/rsscore/Feed;I)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer$1;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayer;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->access$000(Lmobi/beyondpod/ui/dialogs/PreviewPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PreviewPlayer$1;->this$0:Lmobi/beyondpod/ui/dialogs/PreviewPlayer;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/PreviewPlayer;->finish()V

    :cond_0
    return-void
.end method
