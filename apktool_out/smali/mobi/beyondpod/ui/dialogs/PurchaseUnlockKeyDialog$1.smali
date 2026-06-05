.class Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$1;
.super Ljava/lang/Object;
.source "PurchaseUnlockKeyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->faqLiteProURL()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    return-void
.end method
