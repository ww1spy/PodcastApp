.class public Lorg/vinuxproject/sonic/AndroidAudioDevice;
.super Ljava/lang/Object;
.source "AndroidAudioDevice.java"


# static fields
.field private static MIN_BUFFER_SIZE_MULTIPLIER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AndroidAudioDevice"


# instance fields
.field mChannels:I

.field mSampleRate:I

.field mTrack:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    iput v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    .line 36
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGAudioTrackBufferMultiplier()I

    move-result v0

    sput v0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->MIN_BUFFER_SIZE_MULTIPLIER:I

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->createInternal(II)V

    return-void
.end method

.method private createInternal(II)V
    .locals 13

    .line 42
    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    if-ne v0, p2, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->release()V

    .line 48
    :cond_1
    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 50
    :goto_0
    iput p1, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    .line 51
    iput p2, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    .line 53
    iget p1, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    invoke-static {p1}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->findFormatFromChannels(I)I

    move-result p1

    .line 54
    iget p2, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    const/4 v10, 0x2

    invoke-static {p2, p1, v10}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p2

    .line 58
    sget v3, Lorg/vinuxproject/sonic/AndroidAudioDevice;->MIN_BUFFER_SIZE_MULTIPLIER:I

    move v11, v1

    move v1, v3

    .line 62
    :cond_3
    new-instance v12, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    iget v5, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    const/4 v7, 0x2

    mul-int v8, p2, v1

    const/4 v9, 0x1

    move-object v3, v12

    move v6, p1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v12, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 66
    iget-object v3, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    if-nez v3, :cond_5

    if-lt v1, v10, :cond_5

    add-int/lit8 v3, v1, -0x2

    if-ge v3, v2, :cond_4

    move v3, v2

    :cond_4
    const-string v4, "AndroidAudioDevice"

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioTrack failed to initialize with multiplier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "! Trying with: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :cond_5
    move v11, v2

    :goto_1
    if-eqz v11, :cond_3

    .line 80
    iget-object p1, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "AndroidAudioDevice"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack failed to initialize for media format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string v0, ":"

    goto :goto_2

    :cond_6
    const-string v0, " updated:"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Rate: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Channels: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minBuffer: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", buffer multiplier:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 87
    :cond_7
    iget-object p1, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    invoke-virtual {p1, v2}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    const-string p1, "AndroidAudioDevice"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack initialized with media format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string v0, ":"

    goto :goto_3

    :cond_8
    const-string v0, " updated:"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Rate: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Channels: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", minBuffer: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", buffer multiplier:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static findFormatFromChannels(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 103
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getHeadPosition()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->flush()V

    .line 114
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const-string v0, "AndroidAudioDevice"

    const-string v1, "AudioTrack released!"

    .line 115
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setRateAndChannels(II)V
    .locals 1

    .line 166
    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mSampleRate:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mChannels:I

    if-ne p2, v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->isPlaying()Z

    move-result v0

    .line 170
    invoke-direct {p0, p1, p2}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->createInternal(II)V

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->play()V

    :cond_1
    return-void
.end method

.method public setVolume(FF)V
    .locals 2

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    move p1, p2

    .line 152
    :cond_0
    iget-object p2, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {p2, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/AndroidAudioDevice;->flush()V

    return-void
.end method

.method public writeSamples([BI)I
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/vinuxproject/sonic/AndroidAudioDevice;->mTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1
.end method
