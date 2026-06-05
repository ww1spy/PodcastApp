.class Lmobi/beyondpod/ui/views/impexp/AddFeedView$3;
.super Ljava/lang/Object;
.source "AddFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/AddFeedView;->unfocusSearchBox()V
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

    .line 439
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$3;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 443
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/AddFeedView$3;->this$0:Lmobi/beyondpod/ui/views/impexp/AddFeedView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/AddFeedView;->_searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    return-void
.end method
