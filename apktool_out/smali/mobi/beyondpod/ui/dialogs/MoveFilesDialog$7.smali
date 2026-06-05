.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->askToMoveToInternalStorageOrAppStorageFolder()V
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

    .line 631
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 635
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->findAndroidReportedExternalStorage()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const/4 v2, 0x0

    const/4 v3, -0x6

    invoke-static {v0, v1, v2, v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    return-void

    .line 642
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0082

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 643
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v3}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1800(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 645
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v4, 0x7f10008c

    .line 646
    invoke-virtual {v3, v4}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7$2;

    invoke-direct {v4, p0, v1, v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7$2;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;Landroid/view/View;Ljava/io/File;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const v2, 0x7f10008a

    .line 669
    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7$1;-><init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$7;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
