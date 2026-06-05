.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackupSelected(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 419
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;

    iget-object p1, p1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$400(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Ljava/io/File;)V

    return-void
.end method
