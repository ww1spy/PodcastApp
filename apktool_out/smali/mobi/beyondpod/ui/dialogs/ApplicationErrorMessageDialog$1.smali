.class Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$1;
.super Ljava/lang/Object;
.source "ApplicationErrorMessageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/ApplicationErrorMessageDialog;->finish()V

    return-void
.end method
