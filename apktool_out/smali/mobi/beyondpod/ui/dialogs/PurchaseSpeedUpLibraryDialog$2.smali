.class Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;
.super Ljava/lang/Object;
.source "PurchaseSpeedUpLibraryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$cb:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;->this$0:Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;->val$cb:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 89
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;->val$cb:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/4 p2, 0x1

    const v0, 0x7f090250

    if-ne p1, v0, :cond_0

    .line 91
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setEnableAudioPlugins(Z)V

    .line 92
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setEnableSonicAudioPlugin(Z)V

    .line 93
    invoke-static {}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLoadCurrentTrack()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/PurchaseSpeedUpLibraryDialog$2;->val$cb:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v0, 0x7f09024f

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 96
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setEnableAudioPlugins(Z)V

    .line 97
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setEnableSonicAudioPlugin(Z)V

    :cond_1
    :goto_0
    return-void
.end method
