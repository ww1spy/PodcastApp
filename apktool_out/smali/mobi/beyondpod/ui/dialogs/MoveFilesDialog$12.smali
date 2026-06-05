.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->cancelMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 855
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v0, 0x7f10026b

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    .line 859
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1700(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 860
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1700(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$MoveThread;->cancel()V

    .line 862
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$12;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1600(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
