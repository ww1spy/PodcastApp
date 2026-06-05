.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->prepareForRestore(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

.field final synthetic val$backupFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Ljava/io/File;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->val$backupFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
    .locals 0

    .line 620
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;

    invoke-direct {p2, p0, p3}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;Lmobi/beyondpod/rsscore/BackupManifest;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public operationFailed(ILjava/lang/String;)V
    .locals 1

    .line 596
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;

    invoke-direct {v0, p0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
