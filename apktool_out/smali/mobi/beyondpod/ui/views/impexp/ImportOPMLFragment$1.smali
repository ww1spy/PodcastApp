.class Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$1;
.super Ljava/lang/Object;
.source "ImportOPMLFragment.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "opml"

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
