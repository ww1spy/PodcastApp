.class Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "PlayerUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/PlayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field _Callback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;->_Callback:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 82
    invoke-static {p2}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lmobi/beyondpod/services/player/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/PlayerUtils;->sService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    .line 83
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;->_Callback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;->_Callback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;->_Callback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;->_Callback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    const/4 p1, 0x0

    .line 95
    sput-object p1, Lmobi/beyondpod/services/player/PlayerUtils;->sService:Lmobi/beyondpod/services/player/IMediaPlaybackService;

    return-void
.end method
