.class Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;
.super Ljava/lang/Object;
.source "FolderBrowserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->access$000(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;)Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getFileAt(I)Ljava/io/File;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;

    invoke-static {p2}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->access$000(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;)Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->setRoot(Ljava/io/File;)V

    .line 70
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment;->_Content:Landroid/widget/ListView;

    new-instance p2, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1$1;-><init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserFragment$1;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
