.class public Lmobi/beyondpod/ui/settings/BackupRestoreFragment;
.super Landroid/preference/PreferenceFragment;
.source "BackupRestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;
    }
.end annotation


# static fields
.field private static final BACKUP_SELECTED_RESULT:I = 0x11d7

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1f5

.field private static final REQUEST_EXTERNAL_STORAGE_FOR_FILE:I = 0x1f6

.field private static final _syncLock:Ljava/lang/Object;


# instance fields
.field private _Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

.field _BackupCmd:Landroid/view/View;

.field private _BackupListener:Landroid/view/View$OnClickListener;

.field _BackupProgress:Landroid/widget/ProgressBar;

.field _BackupRestore:Landroid/view/View;

.field _BrowserStub:Landroid/view/ViewStub;

.field _Content:Landroid/widget/ListView;

.field _ExitOnFinish:Z

.field _ExportOPMLCmd:Landroid/view/View;

.field _ExportSummary:Landroid/widget/TextView;

.field _RestoreCmd:Landroid/view/View;

.field private _RestoreListener:Landroid/view/View$OnClickListener;

.field _RestoreProgress:Landroid/widget/ProgressBar;

.field _RestoreSummary:Landroid/widget/TextView;

.field _SetBackupFolderCmd:Landroid/view/View;

.field _SettingsSummary:Landroid/widget/TextView;

.field _ShareCmd:Landroid/view/View;

.field public _ShareListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_syncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ExitOnFinish:Z

    .line 271
    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupListener:Landroid/view/View$OnClickListener;

    .line 386
    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$8;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreListener:Landroid/view/View$OnClickListener;

    .line 466
    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->showFolderBrowser()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->hideFolderBrowser()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->refreshBackupRestoreFolder()V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Ljava/io/File;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->prepareForRestore(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;ILmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->selectBackupFile(ILmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;)V

    return-void
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Lmobi/beyondpod/rsscore/BackupManifest;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->restoreFromSnapshot(Lmobi/beyondpod/rsscore/BackupManifest;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->finishAndRestart()V

    return-void
.end method

.method private finishAndRestart()V
    .locals 9

    .line 744
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "mobi.beyondpod.action.VIEW_MASTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 748
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long v7, v3, v5

    invoke-virtual {v1, v2, v7, v8, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 753
    :cond_0
    iput-boolean v2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ExitOnFinish:Z

    .line 756
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private hideFolderBrowser()V
    .locals 2

    .line 235
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BrowserStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupRestore:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private prepareForRestore(Ljava/io/File;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 591
    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$10;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Ljava/io/File;)V

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/BackupRestore;->unzipBackup(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method

.method private refreshBackupRestoreFolder()V
    .locals 5

    .line 764
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_SettingsSummary:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1000c0

    invoke-virtual {p0, v3, v2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    invoke-static {}, Lmobi/beyondpod/rsscore/BackupRestore;->enumerateRestoreZipFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 767
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareCmd:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreSummary:Landroid/widget/TextView;

    const v3, 0x7f1000b6

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual {p0, v3, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 769
    :cond_1
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareCmd:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreSummary:Landroid/widget/TextView;

    const v2, 0x7f1000b7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0, v2, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreSummary:Landroid/widget/TextView;

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method private restoreFromSnapshot(Lmobi/beyondpod/rsscore/BackupManifest;)V
    .locals 8
    .param p1    # Lmobi/beyondpod/rsscore/BackupManifest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 635
    iget-object v0, p1, Lmobi/beyondpod/rsscore/BackupManifest;->backupTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/BackupManifest;->getManifestFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p1, Lmobi/beyondpod/rsscore/BackupManifest;->backupTime:Ljava/util/Date;

    .line 639
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000bc

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lmobi/beyondpod/rsscore/BackupManifest;->versionCode:Lmobi/beyondpod/rsscore/helpers/Version;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v5, p1, Lmobi/beyondpod/rsscore/BackupManifest;->device:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 645
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object p1, p1, Lmobi/beyondpod/rsscore/BackupManifest;->backupTime:Ljava/util/Date;

    .line 646
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/16 p1, 0x11

    .line 645
    invoke-static {v5, v6, v7, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 641
    invoke-virtual {p0, v1, v2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10008a

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$12;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$12;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    .line 648
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10008c

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$11;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    .line 655
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 710
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private selectBackupFile(ILmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;)V
    .locals 6

    .line 715
    invoke-static {}, Lmobi/beyondpod/rsscore/BackupRestore;->enumerateRestoreZipFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 716
    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->extractRestoreFileNames([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 725
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 727
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;

    invoke-direct {v5, p0, p2, v3, v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;[Ljava/lang/String;[Ljava/io/File;)V

    .line 728
    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 738
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f10008a

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 739
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 718
    :cond_1
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1000b7

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, p2, v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100092

    .line 720
    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFolderBrowser()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 163
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->hasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 166
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v1, 0x1f5

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Content:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BrowserStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 175
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090109

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Content:Landroid/widget/ListView;

    .line 177
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09015a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0800db

    .line 178
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 179
    new-instance v2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$3;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$3;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$4;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$4;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    invoke-direct {v0, v2, v3, v1}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    .line 206
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Content:Landroid/widget/ListView;

    iget-object v2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Content:Landroid/widget/ListView;

    new-instance v2, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$5;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_Adapter:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->setRoot(Ljava/io/File;)V

    .line 229
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BrowserStub:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupRestore:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startRestoreIfNeeded(Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 499
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 504
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 519
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 523
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 524
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/gmail.bpback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 530
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    .line 531
    new-array v2, v2, [B

    .line 533
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    .line 534
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 537
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 538
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 539
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_3
    const-string v1, "android.intent.action.SEND"

    .line 546
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.extra.TEXT"

    .line 548
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 551
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 558
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "\\\\x"

    const-string v1, "%"

    .line 563
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 570
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 572
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 575
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 577
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 578
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v0, 0x1f6

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 583
    :cond_6
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->prepareForRestore(Ljava/io/File;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method private verifyAndResetRestorePathIfItNeedsPermission()V
    .locals 1

    .line 154
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultBackupsStorageRoot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setDefaultBackupPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method createBackup()V
    .locals 2

    .line 348
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$7;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->createZippedBackup(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 429
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x11d7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x0

    const-string p2, "_data"

    .line 437
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 439
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 442
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 444
    aget-object p1, p2, p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 445
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 451
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 454
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->prepareForRestore(Ljava/io/File;)V

    return-void

    .line 459
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "Unable to read selected file!"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0c0028

    .line 81
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f100341

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(I)V

    const p2, 0x7f090054

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupRestore:Landroid/view/View;

    const p2, 0x7f090052

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupCmd:Landroid/view/View;

    .line 89
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupCmd:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090053

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupProgress:Landroid/widget/ProgressBar;

    const p2, 0x7f0901f7

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreCmd:Landroid/view/View;

    .line 94
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreCmd:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901f9

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreSummary:Landroid/widget/TextView;

    const p2, 0x7f0901f8

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_RestoreProgress:Landroid/widget/ProgressBar;

    const p2, 0x7f090220

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_SetBackupFolderCmd:Landroid/view/View;

    .line 99
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_SetBackupFolderCmd:Landroid/view/View;

    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090225

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareCmd:Landroid/view/View;

    .line 109
    iget-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareCmd:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090223

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_SettingsSummary:Landroid/widget/TextView;

    const v0, 0x7f0900e6

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ExportOPMLCmd:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ExportOPMLCmd:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$2;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09026f

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BrowserStub:Landroid/view/ViewStub;

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_BackupCmd:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_SetBackupFolderCmd:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ShareCmd:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ExportOPMLCmd:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090057

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090056

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090227

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090226

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f090224

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f0900e5

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f0900e4

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->verifyAndResetRestorePathIfItNeedsPermission()V

    .line 146
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->startRestoreIfNeeded(Landroid/content/Intent;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 785
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 786
    iget-boolean v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->_ExitOnFinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 787
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_0

    .line 245
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->showFolderBrowser()V

    :cond_0
    const/16 v0, 0x1f6

    if-ne p1, v0, :cond_1

    .line 253
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->startRestoreIfNeeded(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 267
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 268
    invoke-direct {p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->refreshBackupRestoreFolder()V

    return-void
.end method
