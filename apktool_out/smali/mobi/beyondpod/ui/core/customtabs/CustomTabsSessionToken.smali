.class public Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSessionToken"


# instance fields
.field private final mCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

.field private final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 37
    new-instance p1, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken$1;-><init>(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->mCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;)Landroid/support/customtabs/ICustomTabsCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    instance-of v0, p1, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    check-cast p1, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;

    .line 64
    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCallback()Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;
    .locals 1

    .line 72
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->mCallback:Lmobi/beyondpod/ui/core/customtabs/CustomTabsCallback;

    return-object v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 52
    iget-object v0, p0, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
