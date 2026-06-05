.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->operationFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;Ljava/lang/String;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 601
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->val$backupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    iget-object v2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v2, v2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "mobi.beyondpod.evo.BackupRestoreFragment"

    iget-object v4, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v4, v4, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->val$backupFile:Ljava/io/File;

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v3, v3, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    .line 604
    invoke-virtual {v3}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lmobi/beyondpod/ui/views/MasterView;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 606
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const v2, 0x7f1000bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->val$errorMsg:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 611
    invoke-virtual {v1, v2, v3}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 612
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
