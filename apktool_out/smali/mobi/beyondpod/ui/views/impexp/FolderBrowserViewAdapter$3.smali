.class Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$3;
.super Ljava/lang/Object;
.source "FolderBrowserViewAdapter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;->getNumberOfFiles(Ljava/io/File;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$3;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
