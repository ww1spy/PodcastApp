.class Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;
.super Ljava/lang/Object;
.source "ApplicationErrorMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;->this$0:Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    iput p2, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;->val$t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 110
    iget p1, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;->val$t:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;->this$0:Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenGReaderLogin(Landroid/content/Context;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$4;->this$0:Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->finish()V

    return-void
.end method
