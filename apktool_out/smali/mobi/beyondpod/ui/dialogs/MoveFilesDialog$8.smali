.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->askToMoveToAppStorageFolder()V
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

    .line 685
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 690
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->findAndroidReportedExternalStorage()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 692
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x6

    invoke-static {v1, v2, v3, v4}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    .line 694
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100274

    .line 695
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 696
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v3, 0x7f10008c

    .line 697
    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;

    invoke-direct {v3, p0, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$2;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v2, 0x7f10008a

    .line 716
    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$1;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
