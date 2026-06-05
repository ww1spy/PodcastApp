.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->checkProceedMove()V
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

    .line 590
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 595
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v2, 0x7f10026e

    .line 596
    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 599
    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$100(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    .line 600
    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$500(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$400(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const v3, 0x7f10026d

    .line 598
    invoke-virtual {v1, v3, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v2, 0x7f100096

    .line 602
    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$2;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v2, 0x7f100091

    .line 616
    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6$1;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
