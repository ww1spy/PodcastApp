.class Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$1;
.super Ljava/lang/Object;
.source "FolderBrowserViewAdapter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Z)V
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

    .line 94
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/impexp/FolderBrowserViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "usb."

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
