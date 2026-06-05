.class public Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;
.super Landroid/app/Activity;
.source "MoveFilesDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;
    }
.end annotation


# static fields
.field private static final COPY_ERROR:I = -0x8

.field private static final DEST_CLEANUP_ERROR:I = -0x4

.field private static final DEST_FOLDER_READONLY:I = -0x9

.field private static final DEST_UNAVAILABLE:I = -0x6

.field private static final FATAL_ERROR:I = -0x2

.field private static final FOLDER_TYPE_DESTINATION:I = 0x1

.field private static final FOLDER_TYPE_SOURCE:I = 0x0

.field private static final MOVE_CANCELLED:I = -0x1

.field private static final MOVE_COMPLETED:I = 0x0

.field private static final MOVE_PROGRESS_STATUS:I = 0x1

.field private static final NOTHING_TO_DO:I = -0x5

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1f5

.field private static final SOURCE_CLEANUP_ERROR:I = -0x3

.field private static final SOURCE_FOLDER_READONLY:I = -0xa

.field private static final TAG:Ljava/lang/String; = "MoveFilesDialog"

.field private static final UPDATE_AND_DOWNLOAD_IN_PROGRESS:I = -0x7

.field public static _isRunning:Z = false


# instance fields
.field private final MESSAGE_TAG:Ljava/lang/String;

.field private final PROGRESS_TAG:Ljava/lang/String;

.field private _ExitOnFinish:Z

.field private _availableSize:J

.field private _cancelBtn:Landroid/widget/Button;

.field private _context:Landroid/content/Context;

.field private _destinationFolder:Ljava/io/File;

.field private _internalFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _moveThread:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _resultProgressBar:Landroid/widget/ProgressBar;

.field private _resultsTV:Landroid/widget/TextView;

.field private _sourceFolder:Ljava/io/File;

.field private _totalFileSize:J

.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "message"

    .line 58
    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->MESSAGE_TAG:Ljava/lang/String;

    const-string v0, "progress"

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->PROGRESS_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_moveThread:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_totalFileSize:J

    return-wide v0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->askToMoveToInternalStorageOrAppStorageFolder()V

    return-void
.end method

.method static synthetic access$1100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_resultProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->cancelMove()V

    return-void
.end method

.method static synthetic access$1300(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkFiles()V

    return-void
.end method

.method static synthetic access$1400(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->notifyAndRestart()V

    return-void
.end method

.method static synthetic access$1502(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_ExitOnFinish:Z

    return p1
.end method

.method static synthetic access$1600(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_cancelBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1700(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_moveThread:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    return-object p0
.end method

.method static synthetic access$1702(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;)Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;
    .locals 0

    .line 43
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_moveThread:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    return-object p1
.end method

.method static synthetic access$1800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkFilesAsync()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2000(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_availableSize:J

    return-wide v0
.end method

.method static synthetic access$2100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkProceedMove()V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->deleteFolderInternal(I)V

    return-void
.end method

.method static synthetic access$400(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$402(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 43
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->onMoveCompleted()V

    return-void
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_resultsTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->askToMoveToAppStorageFolder()V

    return-void
.end method

.method private askToMoveToAppStorageFolder()V
    .locals 1

    .line 684
    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private askToMoveToInternalStorageOrAppStorageFolder()V
    .locals 1

    .line 630
    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private buildFileList(Ljava/io/File;Z)V
    .locals 5

    .line 425
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 431
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 433
    invoke-direct {p0, v3, p2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->buildFileList(Ljava/io/File;Z)V

    goto :goto_1

    .line 436
    :cond_0
    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 441
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "MoveFilesDialog"

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading feeds! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private cancelMove()V
    .locals 3

    .line 849
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10008a

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100269

    .line 850
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100096

    .line 851
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100091

    .line 864
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$11;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$11;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private checkFiles()V
    .locals 14

    .line 452
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 453
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v0, -0x7

    .line 455
    invoke-direct {p0, v2, v3, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    return-void

    .line 459
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->isExternalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->isExternalStorageReadOnly()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 465
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, -0x9

    .line 467
    invoke-direct {p0, v2, v3, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    return-void

    :cond_2
    const v1, 0x7f100268

    const/4 v4, -0x2

    .line 473
    :try_start_0
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    .line 475
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v6, 0x0

    .line 476
    iput-wide v6, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_totalFileSize:J

    .line 478
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    invoke-direct {p0, v1, v5}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->buildFileList(Ljava/io/File;Z)V

    .line 480
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 481
    iget-wide v8, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_totalFileSize:J

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    move-wide v10, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    :goto_1
    add-long v12, v8, v10

    iput-wide v12, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_totalFileSize:J

    goto :goto_0

    .line 483
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_availableSize:J

    .line 485
    iget-wide v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_totalFileSize:J

    cmp-long v5, v0, v6

    if-nez v5, :cond_5

    const/4 v0, -0x5

    .line 487
    invoke-direct {p0, v2, v3, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    goto :goto_2

    .line 489
    :cond_5
    iget-wide v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_availableSize:J

    iget-wide v5, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_totalFileSize:J

    cmp-long v2, v0, v5

    if-gtz v2, :cond_6

    .line 492
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->warnInsufficientSpace()V

    goto :goto_2

    .line 494
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 497
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->warnDestFolderExists()V

    goto :goto_2

    .line 501
    :cond_7
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkProceedMove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3, v4}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    const/4 v0, -0x6

    .line 461
    invoke-direct {p0, v2, v3, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    return-void
.end method

.method private checkFilesAsync()V
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$3;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkProceedMove()V
    .locals 1

    .line 589
    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteFolderInternal(I)V
    .locals 11

    if-nez p1, :cond_0

    .line 784
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    .line 785
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    .line 786
    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->buildFileList(Ljava/io/File;Z)V

    const-string v2, "MoveFilesDialog"

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    .line 791
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " files from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v4, "source"

    goto :goto_1

    :cond_1
    const-string v4, "destination"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " folder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 789
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    const v7, 0x7f100270

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 800
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 804
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 809
    :cond_4
    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v8, 0x14

    if-le v5, v8, :cond_2

    iget-object v5, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v5, v8

    rem-int v5, v4, v5

    if-nez v5, :cond_2

    .line 810
    invoke-virtual {p0, v7}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    int-to-float v7, v4

    iget-object v8, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    .line 811
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 810
    invoke-direct {p0, v5, v6, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    const-string v2, "MoveFilesDialog"

    .line 814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " files!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 819
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "MoveFilesDialog"

    .line 821
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   Deleting folder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 827
    :cond_7
    invoke-virtual {p0, v7}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v5, v4

    iget-object v7, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {p0, v2, v5, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    const-string v2, "MoveFilesDialog"

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " folders!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 835
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 836
    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->buildFileList(Ljava/io/File;Z)V

    const-string v0, "MoveFilesDialog"

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to clean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_internalFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " files!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_8

    const/4 p1, -0x3

    goto :goto_4

    :cond_8
    const/4 p1, -0x4

    .line 838
    :goto_4
    invoke-direct {p0, v4, v3, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    goto :goto_6

    :cond_9
    const-string v0, "MoveFilesDialog"

    const-string v2, "Cleanup completed!"

    .line 842
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, -0x1

    .line 843
    :goto_5
    invoke-direct {p0, v4, v1, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    :goto_6
    return-void
.end method

.method private static getAlternativePath()Ljava/io/File;
    .locals 4

    .line 887
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getPrimaryStorageMount()Ljava/io/File;

    move-result-object v0

    .line 889
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getOptionalStorageFullDataPath()Ljava/io/File;

    move-result-object v1

    .line 892
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_2

    .line 896
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->versionSupportsPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isExternalStorageAvailable()Z
    .locals 2

    .line 913
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 914
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isExternalStorageReadOnly()Z
    .locals 2

    .line 907
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    .line 908
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 415
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 416
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    neg-int v2, v1

    if-lt v0, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_1

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private notifyAndRestart()V
    .locals 4

    const/4 v0, 0x1

    .line 567
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10026c

    invoke-virtual {p0, v2, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 571
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_resultsTV:Landroid/widget/TextView;

    new-instance v1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onMoveCompleted()V
    .locals 5

    .line 513
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f10026c

    .line 515
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "MoveFilesDialog"

    const-string v2, "Move failed! destination Folder does not exist!"

    .line 516
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    .line 520
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->findAndroidReportedExternalStorage()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 524
    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MoveFilesDialog"

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting customSDCardLocation to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setCustomSDCardLocation(Ljava/lang/String;)V

    .line 531
    :cond_1
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setRepoMovedPath(Ljava/lang/String;)V

    const-string v2, "MoveFilesDialog"

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching lastSDCardRootPath root folder to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLastSDCardRootPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 537
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setPreferLastSDCardRoot(Z)V

    const-string v2, "MoveFilesDialog"

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG: Reading back stored lastSDCardRootPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->lastSDCardRootPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 543
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100270

    .line 544
    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    .line 547
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f100278

    goto :goto_0

    :cond_2
    const v3, 0x7f100277

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    .line 548
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    aput-object v4, v0, v1

    .line 546
    invoke-virtual {p0, v3, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10008c

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$4;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$4;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 560
    :cond_3
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->notifyAndRestart()V

    :goto_1
    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2

    .line 875
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    .line 877
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "progress"

    .line 878
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->handler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 880
    iput p3, p1, Landroid/os/Message;->what:I

    .line 881
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 882
    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private warnDestFolderExists()V
    .locals 1

    .line 756
    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$10;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$10;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private warnInsufficientSpace()V
    .locals 1

    .line 730
    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$9;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 309
    iput-object p0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_context:Landroid/content/Context;

    const p1, 0x7f0c0083

    .line 310
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->setContentView(I)V

    .line 312
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    .line 313
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "destination"

    .line 314
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    const-string p1, "MoveFilesDialog"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "About to move BeyondPod folder from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    .line 318
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090065

    .line 320
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090066

    .line 321
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_cancelBtn:Landroid/widget/Button;

    .line 322
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_cancelBtn:Landroid/widget/Button;

    const v0, 0x7f10008a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 323
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_cancelBtn:Landroid/widget/Button;

    new-instance v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_cancelBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const p1, 0x7f0901fb

    .line 333
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_resultProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f090183

    .line 334
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_resultsTV:Landroid/widget/TextView;

    const p1, 0x7f090182

    .line 335
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_progressBar:Landroid/widget/ProgressBar;

    .line 336
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 337
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 339
    sget-boolean p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_isRunning:Z

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_moveThread:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    if-eqz p1, :cond_0

    .line 342
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_moveThread:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->start()V

    .line 346
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_destinationFolder:Ljava/io/File;

    .line 347
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->needsStoragePermissionForPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_sourceFolder:Ljava/io/File;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/16 v1, -0xa

    .line 356
    invoke-direct {p0, p1, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->sendMessage(Ljava/lang/String;II)V

    return-void

    .line 360
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkFilesAsync()V

    return-void

    .line 349
    :cond_3
    :goto_0
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->PERMISSIONS_EXT_STORAGE:[Ljava/lang/String;

    const/16 v0, 0x1f5

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 381
    sput-boolean v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_isRunning:Z

    .line 382
    iget-boolean v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->_ExitOnFinish:Z

    if-eqz v1, :cond_0

    const-string v1, "MoveFilesDialog"

    const-string v2, "BeyondPod is exiting to switch to the new storage root..."

    .line 384
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 404
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->cancelMove()V

    const/4 p1, 0x1

    return p1

    .line 408
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
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

    if-ne p1, v0, :cond_1

    .line 922
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 923
    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkFilesAsync()V

    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    goto :goto_0

    .line 929
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0, p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 396
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
