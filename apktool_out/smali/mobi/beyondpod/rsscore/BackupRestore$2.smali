.class final Lmobi/beyondpod/rsscore/BackupRestore$2;
.super Ljava/lang/Object;
.source "BackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/BackupRestore;->unzipBackup(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;

.field final synthetic val$zipLoc:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lmobi/beyondpod/rsscore/BackupRestore$2;->val$zipLoc:Ljava/io/File;

    iput-object p2, p0, Lmobi/beyondpod/rsscore/BackupRestore$2;->val$result:Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lmobi/beyondpod/rsscore/BackupRestore$2;->val$zipLoc:Ljava/io/File;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/BackupRestore$2;->val$result:Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/BackupRestore;->access$100(Ljava/io/File;Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method
