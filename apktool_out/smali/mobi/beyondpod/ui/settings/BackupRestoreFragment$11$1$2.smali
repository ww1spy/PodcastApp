.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 692
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1000ba

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 696
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreCmd:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
