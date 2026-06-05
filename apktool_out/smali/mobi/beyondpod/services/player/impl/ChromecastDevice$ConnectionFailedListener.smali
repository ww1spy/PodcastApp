.class Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionFailedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string p1, "chromecastDevice"

    const-string v0, "Connection failed!"

    .line 444
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->switchToDefaultRoute()V

    return-void
.end method
