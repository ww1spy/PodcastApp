.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;
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

    .line 272
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 277
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result p1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 280
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    sget-object v0, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v1, 0x1f6

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 286
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 288
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7f10008c

    const v2, 0x7f10008a

    const v3, 0x7f10017b

    if-lez v1, :cond_3

    .line 294
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v5}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const v5, 0x7f1000b4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {v4, v5, v6}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$2;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;)V

    .line 297
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;)V

    .line 304
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 315
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->findAndroidReportedExternalStorage()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    const v3, 0x7f1000b3

    .line 322
    invoke-virtual {v1, v3}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$4;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;)V

    .line 323
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$3;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;)V

    .line 330
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 342
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->createBackup()V

    return-void
.end method
