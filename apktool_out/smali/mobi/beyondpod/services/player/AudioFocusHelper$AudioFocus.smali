.class Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;
.super Lmobi/beyondpod/services/player/AudioFocusHelper;
.source "AudioFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/AudioFocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFocus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$Holder;
    }
.end annotation


# instance fields
.field _AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private _WasBluetoothA2dpOnTransientAudioFocusLoss:Z

.field private _WasConnectedToCrhomecastOnTransientAudioFocusLoss:Z

.field private _WasPlayingOnTransientAudioFocusLoss:Z

.field private _WasWiredHeadsetConnectedOnTransientAudioFocusLoss:Z

.field private final _focusLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lmobi/beyondpod/services/player/AudioFocusHelper;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasPlayingOnTransientAudioFocusLoss:Z

    .line 37
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasConnectedToCrhomecastOnTransientAudioFocusLoss:Z

    .line 38
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasBluetoothA2dpOnTransientAudioFocusLoss:Z

    .line 39
    iput-boolean v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasWiredHeadsetConnectedOnTransientAudioFocusLoss:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_focusLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$1;-><init>(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/services/player/AudioFocusHelper$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasPlayingOnTransientAudioFocusLoss:Z

    return p0
.end method

.method static synthetic access$302(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasPlayingOnTransientAudioFocusLoss:Z

    return p1
.end method

.method static synthetic access$400(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasConnectedToCrhomecastOnTransientAudioFocusLoss:Z

    return p0
.end method

.method static synthetic access$402(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasConnectedToCrhomecastOnTransientAudioFocusLoss:Z

    return p1
.end method

.method static synthetic access$500(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasBluetoothA2dpOnTransientAudioFocusLoss:Z

    return p0
.end method

.method static synthetic access$502(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasBluetoothA2dpOnTransientAudioFocusLoss:Z

    return p1
.end method

.method static synthetic access$600(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isBluetoothA2dpOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasWiredHeadsetConnectedOnTransientAudioFocusLoss:Z

    return p0
.end method

.method static synthetic access$702(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_WasWiredHeadsetConnectedOnTransientAudioFocusLoss:Z

    return p1
.end method

.method static synthetic access$800(Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isWiredHeadsetPluggedIn()Z

    move-result p0

    return p0
.end method

.method private isBluetoothA2dpOn()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 238
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 244
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v2

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x2

    .line 249
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 250
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 251
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v1
.end method

.method private isWiredHeadsetPluggedIn()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 267
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 277
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v2

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x2

    .line 283
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 284
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 285
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 286
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method private sendServiceCommand(Ljava/lang/String;)V
    .locals 3

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicecommand"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    .line 226
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/BeyondPodApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method protected duck()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "**** Trying to \'duck\' but we are not playing. Nothing to do!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "**** Ducking..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duck"

    .line 198
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->sendServiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method protected isPlaying()Z
    .locals 1

    .line 214
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    return v0
.end method

.method protected pause()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "**** We lost audiofocus but we are not playing. Nothing to do!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "pause"

    .line 209
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->sendServiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method protected play()V
    .locals 1

    const-string v0, "resume"

    .line 219
    invoke-direct {p0, v0}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->sendServiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method releaseAudioFocus()V
    .locals 0

    return-void
.end method

.method trySetAudioFocus()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 51
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 64
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 66
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 68
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v4}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v5, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 69
    invoke-virtual {v3, v5}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v4}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v4}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 78
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Requesting Audiofocus... . Requested:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;->_focusLock:Ljava/lang/Object;

    monitor-enter v2

    if-ne v0, v4, :cond_3

    move v1, v4

    .line 84
    :cond_3
    :try_start_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
