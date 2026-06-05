.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;
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

    .line 387
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 392
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 395
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    sget-object v0, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v1, 0x1f6

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 400
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "*/*"

    .line 403
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const/16 v1, 0x11d7

    invoke-virtual {v0, p1, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Unable to start file selector!"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const v0, 0x7f1000be

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;)V

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$500(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;ILmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;)V

    return-void
.end method
