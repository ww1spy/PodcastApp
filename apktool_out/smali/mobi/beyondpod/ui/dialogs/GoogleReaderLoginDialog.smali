.class public Lmobi/beyondpod/ui/dialogs/GoogleReaderLoginDialog;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GoogleReaderLoginDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1618

    if-ne p1, v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/GoogleReaderLoginDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 72
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->onOAuthAccessGranted(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->onOAuthAccessDenied()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/GoogleReaderLoginDialog;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbbbbbc

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f0c007c

    .line 50
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/dialogs/GoogleReaderLoginDialog;->setContentView(I)V

    .line 52
    new-instance p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-direct {p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->initialize(ZZ)V

    .line 54
    invoke-virtual {p0}, Lmobi/beyondpod/ui/dialogs/GoogleReaderLoginDialog;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09009f

    .line 57
    sget-object v2, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 p1, 0x1001

    .line 58
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
