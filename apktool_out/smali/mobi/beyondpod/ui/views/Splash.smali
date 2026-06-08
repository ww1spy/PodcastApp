.class public Lmobi/beyondpod/ui/views/Splash;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Splash.java"


# static fields
.field public static final REQUEST_EXTERNAL_STORAGE:I = 0x1f5

.field private static final TAG:Ljava/lang/String; = "Splash"


# instance fields
.field private _CancelBtn:Landroid/widget/Button;

.field private _ExitBtn:Landroid/widget/Button;

.field _ExitListener:Landroid/view/View$OnClickListener;

.field private _External:Landroid/widget/RadioButton;

.field private _ExternalAvailable:Z

.field private _ExternalSDCardMount:Ljava/io/File;

.field private _Internal:Landroid/widget/RadioButton;

.field private _InternalAvailable:Z

.field private _InternalSDCardMount:Ljava/io/File;

.field private _ResetBtn:Landroid/widget/Button;

.field private _SDCardSelector:Landroid/widget/RadioGroup;

.field private _StatusMsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 272
    new-instance v0, Lmobi/beyondpod/ui/views/Splash$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/Splash$3;-><init>(Lmobi/beyondpod/ui/views/Splash;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/Splash;->_ExitListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/Splash;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Splash;->initAndRestartSplash()V

    return-void
.end method

.method private initAndRestartSplash()V
    .locals 3

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->initialize(Landroid/content/Context;)Z

    .line 289
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->finish()V

    .line 291
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Splash;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 295
    sget-object v1, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v2, "failed to initialize Configuration"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    # Night mode before super — prevents AppCompat recreation loop on Android 10+
    const/4 v0, 0x1
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :try_start_super
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_super
    .catch Ljava/lang/Throwable; {:try_start_super .. :try_end_super} :catch_super

    # Read crash checkpoint written by MasterView on previous crash; surface it as lastApplicationException
    :try_start_cpr
    const-string v0, "diag"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v1, "crash_cp"
    const-string v2, ""
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :cpr_done
    sget-object v2, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;
    if-nez v2, :cpr_clear_only
    sput-object v1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;
    :cpr_clear_only
    invoke-virtual {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "crash_cp"
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :cpr_done
    :try_end_cpr
    .catch Ljava/lang/Throwable; {:try_start_cpr .. :try_end_cpr} :catch_cpr
    goto :after_cpr
    :catch_cpr
    move-exception v0
    :after_cpr

    # If app initialized successfully, hand off to MasterView immediately
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isInitialized()Z
    move-result v0

    if-eqz v0, :not_initialized

    # Write checkpoint: about to launch MasterView (survives SIGKILL; MV will overwrite with "2:clinit-entered")
    :try_start_splash_cp
    const-string v0, "diag"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "crash_cp"
    const-string v2, "1:splash-pre-launch"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_splash_cp
    .catch Ljava/lang/Throwable; {:try_start_splash_cp .. :try_end_splash_cp} :catch_splash_cp
    goto :after_splash_cp
    :catch_splash_cp
    move-exception v0
    :after_splash_cp

    # Initialized: start MasterView — wrap in Throwable catch so class-loading
    # errors (ExceptionInInitializerError etc.) surface rather than SIGKILLing silently
    :try_start_mv
    new-instance v0, Landroid/content/Intent;
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getApplicationContext()Landroid/content/Context;
    move-result-object v1
    const-class v2, Lmobi/beyondpod/ui/views/MasterView;
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Splash;->startActivity(Landroid/content/Intent;)V
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->finish()V
    :try_end_mv
    .catch Ljava/lang/Throwable; {:try_start_mv .. :try_end_mv} :catch_mv
    return-void

    :catch_mv
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "MV-launch threw:"
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    sput-object v1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;
    const/4 v0, 0x1
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    # Fall through to :not_initialized to show the error on screen

    # Not initialized: show splash screen with whatever error is available
    :not_initialized
    :try_start_layout
    sget v0, Lmobi/beyondpod/R$layout;->splash:I
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Splash;->setContentView(I)V

    sget v0, Lmobi/beyondpod/R$id;->status:I
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    if-eqz v0, :done

    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;
    if-nez v1, :has_text

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;
    if-nez v1, :has_text

    const-string v1, "Waiting for storage to be mounted..."

    :has_text
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_layout
    .catch Ljava/lang/Throwable; {:try_start_layout .. :try_end_layout} :catch_layout

    :done
    return-void

    :catch_super
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "DIAG:super.threw:"
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    sput-object v1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;
    const/4 v0, 0x1
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void

    :catch_layout
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v2, "DIAG:layout.threw:"
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/Splash;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    const/4 v0, 0x1
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 302
    sget-object v0, Lmobi/beyondpod/ui/views/Splash;->TAG:Ljava/lang/String;

    const-string v1, "Splash activity destroyed!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_1

    .line 312
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/PermissionUtil;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    sget p1, Lmobi/beyondpod/R$string;->grant_permission_access_granted:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 315
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/Splash;->initAndRestartSplash()V

    goto :goto_0

    :cond_0
    const p1, 0x1020002

    .line 319
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/Splash;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lmobi/beyondpod/R$string;->grant_permission_access_denied:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 325
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method
