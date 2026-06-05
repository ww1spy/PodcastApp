.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->restoreFromSnapshot(Lmobi/beyondpod/rsscore/BackupManifest;)V
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

    .line 656
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 660
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 661
    new-instance p1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;)V

    invoke-static {p1}, Lmobi/beyondpod/rsscore/BackupRestore;->restoreBackup(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method
