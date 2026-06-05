.class Lmobi/beyondpod/ui/views/base/BPMediaController$5;
.super Ljava/lang/Object;
.source "BPMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 455
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$5;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 458
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/BPMediaController$5;->this$0:Lmobi/beyondpod/ui/views/base/BPMediaController;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/BPMediaController;->doSkipBack()V

    return-void
.end method
