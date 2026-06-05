.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->showFolderBrowser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

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

    .line 212
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$300(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getFileAt(I)Ljava/io/File;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-static {p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$300(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->setRoot(Ljava/io/File;)V

    .line 216
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Content:Landroid/widget/ListView;

    new-instance p2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
