.class Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$2;
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

    .line 72
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/PurchaseUnlockKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdStartPurchaseUnlockKeyIntent()V

    return-void
.end method
