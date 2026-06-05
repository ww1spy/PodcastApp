.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->operationFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 672
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;->val$errorMsg:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1000bb

    .line 673
    invoke-virtual {v1, v3, v2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 675
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;->this$2:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
