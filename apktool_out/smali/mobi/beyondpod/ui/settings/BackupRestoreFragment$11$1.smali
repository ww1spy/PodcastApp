.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
    .locals 0

    .line 685
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->deleteDatabase()Z

    .line 686
    invoke-static {}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$700()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 687
    :try_start_0
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object p2, p2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 689
    new-instance p3, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$2;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 706
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public operationFailed(ILjava/lang/String;)V
    .locals 2

    .line 666
    invoke-static {}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$700()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 667
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;

    invoke-direct {v1, p0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 679
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
