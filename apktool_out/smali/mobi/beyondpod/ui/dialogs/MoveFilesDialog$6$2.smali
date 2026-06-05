.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 606
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 608
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x7

    invoke-static {p1, p2, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    return-void

    .line 612
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1600(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 613
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    new-instance p2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    iget-object v0, v0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p2, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1702(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;)Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    .line 614
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1700(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->start()V

    return-void
.end method
