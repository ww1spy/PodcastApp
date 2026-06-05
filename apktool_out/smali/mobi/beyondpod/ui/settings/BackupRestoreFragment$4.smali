.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$4;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->showFolderBrowser()V
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

    .line 189
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$4;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultBackupPath(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$4;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$200(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    .line 202
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$4;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$100(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    return-void
.end method
