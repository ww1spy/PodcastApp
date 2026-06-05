.class public Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;
.super Ljava/lang/Object;
.source "PurchaseSpeedUpLibraryDialog.java"


# instance fields
.field private _Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;->_Context:Landroid/content/Context;

    return-void
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 1

    .line 49
    new-instance v0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 5

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;->_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0051

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x12c

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    const v2, 0x7f0900c5

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x800003

    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x7f10015c

    .line 61
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0900c3

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v3, 0x7f090262

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 68
    new-instance v4, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;

    invoke-direct {v4, p0, v2}, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;->_Context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10016b

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;

    invoke-direct {v2, p0, v3}, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;Landroid/widget/RadioGroup;)V

    const v3, 0x7f100092

    .line 83
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10008a

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
