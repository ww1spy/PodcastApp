.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 221
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Content:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    return-void
.end method
