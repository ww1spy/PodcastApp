.class public Lmobi/beyondpod/ui/views/HtmlViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HtmlViewActivity.java"

# interfaces
.implements Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtmlViewActivity"

.field private static volatile _InstanceCount:I


# instance fields
.field _Handler:Landroid/os/Handler;

.field _HasBottomToolbar:Z

.field _LoadingProgress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_HasBottomToolbar:Z

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_Handler:Landroid/os/Handler;

    .line 53
    sget v0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_InstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_InstanceCount:I

    .line 54
    sget-object v0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######### HtmlView Activity created! Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SetProgress(I)V
    .locals 2

    const/16 v0, 0xa

    .line 139
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_LoadingProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_LoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 143
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_LoadingProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public allowMenus()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_HasBottomToolbar:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->adjustVolume(I)Z

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->adjustVolume(I)Z

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    sget v0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_InstanceCount:I

    .line 182
    sget-object v0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######### HtmlView Activity finalized! Instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0074

    .line 73
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->setContentView(I)V

    const p1, 0x7f090172

    .line 75
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_LoadingProgress:Landroid/widget/ProgressBar;

    .line 77
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 79
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0xf

    .line 81
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 82
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbbbbbc

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0902ad

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 117
    :cond_0
    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 133
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public requestOwnerActivityClose()V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/ui/views/HtmlViewActivity$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity$1;-><init>(Lmobi/beyondpod/ui/views/HtmlViewActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    iget-object v0, p0, Lmobi/beyondpod/ui/views/HtmlViewActivity;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/ui/views/HtmlViewActivity$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/HtmlViewActivity$2;-><init>(Lmobi/beyondpod/ui/views/HtmlViewActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
