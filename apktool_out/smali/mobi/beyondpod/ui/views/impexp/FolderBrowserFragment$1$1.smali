.class Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1$1;
.super Ljava/lang/Object;
.source "FolderBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1$1;->this$1:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1$1;->this$1:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Content:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    return-void
.end method
