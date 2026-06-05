.class Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;
.super Ljava/lang/Object;
.source "PurchaseSpeedUpLibraryDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;

.field final synthetic val$cbInfo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;->val$cbInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;->val$cbInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f090250

    if-ne p2, p1, :cond_0

    .line 76
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;->val$cbInfo:Landroid/widget/TextView;

    const p2, 0x7f10016a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;->val$cbInfo:Landroid/widget/TextView;

    const p2, 0x7f100169

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
