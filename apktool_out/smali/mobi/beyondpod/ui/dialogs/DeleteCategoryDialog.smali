.class public Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;
.super Ljava/lang/Object;
.source "DeleteCategoryDialog.java"


# static fields
.field private static final DATA:Ljava/lang/String;

.field private static _Format:Ljava/lang/String;


# instance fields
.field private _Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field private _Context:Landroid/content/Context;

.field private _OnOK:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10014a

    .line 40
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->DATA:Ljava/lang/String;

    const v0, 0x7f100150

    .line 41
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_OnOK:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 0

    .line 38
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0
.end method

.method public static showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 53
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;

    invoke-direct {v0}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;-><init>()V

    .line 54
    iput-object p1, v0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 55
    iput-object p0, v0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Context:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 5

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 62
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->DATA:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100092

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/DeleteCategoryDialog;->_OnOK:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10008a

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
