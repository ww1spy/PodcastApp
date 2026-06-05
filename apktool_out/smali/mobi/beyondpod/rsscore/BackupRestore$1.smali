.class final Lmobi/beyondpod/rsscore/BackupRestore$1;
.super Ljava/lang/Object;
.source "BackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/BackupRestore;->createZippedBackup(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;


# direct methods
.method constructor <init>(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmobi/beyondpod/rsscore/BackupRestore$1;->val$result:Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/rsscore/BackupRestore$1;->val$result:Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->access$000(Lmobi/beyondpod/rsscore/BackupRestore$BackupRestoreOperationResult;)V

    return-void
.end method
