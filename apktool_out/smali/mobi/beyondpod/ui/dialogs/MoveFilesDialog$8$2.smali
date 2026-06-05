.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

.field final synthetic val$storageRoot:Ljava/io/File;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;Ljava/io/File;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->val$storageRoot:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 705
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->val$storageRoot:Ljava/io/File;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isFolderReallyWritable(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 707
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x6

    invoke-static {p1, p2, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    return-void

    .line 711
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->val$storageRoot:Ljava/io/File;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    iget-object v1, v1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$500(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$402(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/io/File;)Ljava/io/File;

    .line 713
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1900(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    return-void
.end method
