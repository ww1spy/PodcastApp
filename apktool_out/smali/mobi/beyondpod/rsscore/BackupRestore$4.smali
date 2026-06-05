.class final Lmobi/beyondpod/rsscore/BackupRestore$4;
.super Ljava/lang/Object;
.source "BackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/rsscore/BackupRestore;->cleanSnapshotFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$snapshotFolder:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lmobi/beyondpod/rsscore/BackupRestore$4;->val$snapshotFolder:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 328
    iget-object v0, p0, Lmobi/beyondpod/rsscore/BackupRestore$4;->val$snapshotFolder:Ljava/io/File;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/BackupRestore;->access$300(Ljava/io/File;)Z

    return-void
.end method
