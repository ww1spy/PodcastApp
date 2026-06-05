.class public Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;
.super Ljava/lang/Object;
.source "DeleteFeedDialog.java"


# static fields
.field private static final ARE_YOU_SURE_YOU_WANT_TO_DELETE:Ljava/lang/String;

.field private static final FEED:Ljava/lang/String;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Feed:Lmobi/beyondpod/rsscore/Feed;

.field private _OnOK:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10014c

    .line 36
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->ARE_YOU_SURE_YOU_WANT_TO_DELETE:Ljava/lang/String;

    const v0, 0x7f10014b

    .line 37
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->FEED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog$1;-><init>(Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_OnOK:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 33
    iget-object p0, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    return-object p0
.end method

.method private getMessage()Ljava/lang/String;
    .locals 5

    .line 67
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 68
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->hasPodcasts()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100151

    goto :goto_0

    :cond_0
    const v1, 0x7f100152

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 69
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget-object v4, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->FEED:Ljava/lang/String;

    :goto_1
    aput-object v4, v2, v3

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 49
    new-instance v0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;

    invoke-direct {v0}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;-><init>()V

    .line 50
    iput-object p1, v0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    .line 51
    iput-object p0, v0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Context:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->createDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 4

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 60
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_Context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f100092

    iget-object v3, p0, Lmobi/beyondpod/ui/dialogs/DeleteFeedDialog;->_OnOK:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10008a

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
