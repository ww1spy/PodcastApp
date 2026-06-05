.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->operationCompleted(ILjava/lang/String;Lmobi/beyondpod/rsscore/BackupManifest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

.field final synthetic val$manifest:Lmobi/beyondpod/rsscore/BackupManifest;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;Lmobi/beyondpod/rsscore/BackupManifest;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;->val$manifest:Lmobi/beyondpod/rsscore/BackupManifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 625
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;->val$manifest:Lmobi/beyondpod/rsscore/BackupManifest;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$600(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Lmobi/beyondpod/rsscore/BackupManifest;)V

    .line 626
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10$2;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
