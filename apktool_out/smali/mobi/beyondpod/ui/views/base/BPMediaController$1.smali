.class Lmobi/beyondpod/ui/views/base/BPMediaController$1;
.super Ljava/lang/Object;
.source "BPMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/BPMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/base/BPMediaController;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$1;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$1;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$000(Lmobi/beyondpod/ui/views/base/BPMediaController;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$1;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$100(Lmobi/beyondpod/ui/views/base/BPMediaController;)Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$1;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController;->access$100(Lmobi/beyondpod/ui/views/base/BPMediaController;)Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/base/BPMediaController$IViewOwner;->hideNavigation()V

    :cond_0
    return-void
.end method
