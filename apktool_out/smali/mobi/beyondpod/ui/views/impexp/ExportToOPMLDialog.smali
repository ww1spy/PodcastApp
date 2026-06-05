.class public Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;
.super Ljava/lang/Object;
.source "ExportToOPMLDialog.java"


# static fields
.field private static final EXPORT_COMPLETE:Ljava/lang/String;

.field private static final EXPORT_FAILED:Ljava/lang/String;


# instance fields
.field _Context:Landroid/content/Context;

.field private _OnExportListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1001a0

    .line 37
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->EXPORT_FAILED:Ljava/lang/String;

    const v0, 0x7f10019f

    .line 39
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->EXPORT_COMPLETE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog$1;-><init>(Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_OnExportListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->EXPORT_COMPLETE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->EXPORT_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;)V
    .locals 1

    .line 45
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;-><init>()V

    .line 47
    iput-object p0, v0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_Context:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 5

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_Context:Landroid/content/Context;

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 55
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ExportToOPMLDialog;->_OnExportListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f1002a6

    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10008a

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
