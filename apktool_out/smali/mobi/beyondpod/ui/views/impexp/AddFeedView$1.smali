.class Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;
.super Ljava/lang/Object;
.source "AddFeedView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/AddFeedView;->showImportUsingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/AddFeedView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x2

    if-nez p2, :cond_0

    .line 214
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    invoke-static {p2, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->access$000(Lmobi/beyondpod/ui/views/impexp/AddFeedView;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 216
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->access$000(Lmobi/beyondpod/ui/views/impexp/AddFeedView;I)Z

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 218
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->access$000(Lmobi/beyondpod/ui/views/impexp/AddFeedView;I)Z

    goto :goto_0

    .line 220
    :cond_2
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$1;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->access$000(Lmobi/beyondpod/ui/views/impexp/AddFeedView;I)Z

    .line 222
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
