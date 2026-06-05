.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->operationFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 360
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;->val$errorMsg:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1000b2

    .line 361
    invoke-virtual {v1, v4, v3}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 362
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
