.class public Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;
.super Ljava/lang/Object;
.source "ClearCachesDialog.java"


# static fields
.field private static final CACHE_CLEARED:Ljava/lang/String;


# instance fields
.field private _Context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100110

    .line 38
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->CACHE_CLEARED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->CACHE_CLEARED:Ljava/lang/String;

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 1

    .line 48
    new-instance v0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;

    invoke-direct {v0}, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;-><init>()V

    .line 49
    iput-object p0, v0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->_Context:Landroid/content/Context;

    .line 50
    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 5

    .line 55
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0037

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09007c

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f09007d

    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 61
    new-instance v4, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$1;

    invoke-direct {v4, p0, v0}, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v2, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$2;

    invoke-direct {v2, p0, v0}, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog$2;-><init>(Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/ClearCachesDialog;->_Context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f10008b

    .line 83
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
