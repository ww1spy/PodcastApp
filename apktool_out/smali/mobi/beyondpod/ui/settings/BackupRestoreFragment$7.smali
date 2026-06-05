.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->createBackup()V
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

    .line 351
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
    .locals 0

    .line 371
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$2;

    invoke-direct {p3, p0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$2;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public operationFailed(ILjava/lang/String;)V
    .locals 1

    .line 355
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;

    invoke-direct {v0, p0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
