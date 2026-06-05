.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$1;
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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$1;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 721
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8$1;->this$1:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;

    iget-object p1, p1, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$8;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x5

    invoke-static {p1, p2, v0, v1}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$200(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Ljava/lang/String;II)V

    return-void
.end method
