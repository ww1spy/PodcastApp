.class public Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;
.super Ljava/lang/Object;
.source "PurchaseUnlockKeyDialog.java"


# instance fields
.field private _Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->_Context:Landroid/content/Context;

    return-void
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 1

    .line 51
    new-instance v0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 6

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bb

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e6

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f100166

    goto :goto_0

    :cond_0
    const v2, 0x7f100167

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0901e5

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->_Context:Landroid/content/Context;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const v5, 0x80010

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090048

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100165

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->_Context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10016c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100164

    new-instance v2, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10016d

    new-instance v2, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
