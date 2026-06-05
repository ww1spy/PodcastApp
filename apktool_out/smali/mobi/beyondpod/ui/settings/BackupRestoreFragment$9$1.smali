.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackupSelected(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .line 476
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    .line 477
    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;

    iget-object v1, v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "mobi.beyondpod.enhanced.evo.BackupRestoreFragment"

    invoke-static {v1, v2, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "application/zip"

    .line 478
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 479
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    :try_start_0
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;

    iget-object p2, p2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;

    iget-object v0, v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const v1, 0x7f1000c2

    .line 483
    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 482
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
