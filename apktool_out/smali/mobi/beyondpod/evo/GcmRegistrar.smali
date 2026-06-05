.class public Lmobi/beyondpod/evo/GcmRegistrar;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GCMRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRegistered()Z
    .locals 1

    .line 40
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->GCMRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRegisteredOnServer()Z
    .locals 1

    .line 50
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isRegisteredOnServer()Z

    move-result v0

    return v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/evo/GcmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    sget-object v1, Lmobi/beyondpod/Constants;->ACTION_REGISTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/evo/GcmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    sget-object v1, Lmobi/beyondpod/Constants;->ACTION_UNREGISTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method
