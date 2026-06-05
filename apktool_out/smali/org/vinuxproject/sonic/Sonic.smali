.class public Lorg/vinuxproject/sonic/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# instance fields
.field sonicID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sonic"

    .line 241
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    .line 21
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/Sonic;->close()V

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/vinuxproject/sonic/Sonic;->initNative(II)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    return-void
.end method

.method private native availableBytesNative(J)I
.end method

.method private native closeNative(J)V
.end method

.method private native flushNative(J)V
.end method

.method private native getChordPitchNative(J)Z
.end method

.method private native getNumChannelsNative(J)I
.end method

.method private native getPitchNative(J)F
.end method

.method private native getRateNative(J)F
.end method

.method private native getSampleRateNative(J)I
.end method

.method private native getSpeedNative(J)F
.end method

.method private native getVolumeNative(J)F
.end method

.method private native initNative(II)J
.end method

.method private mapVolumeBoost2VolumeScale(F)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    const/high16 p1, 0x3fc00000    # 1.5f

    return p1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_3

    return v0

    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_4

    return v0

    :cond_4
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_5

    return v0

    :cond_5
    const/high16 v0, 0x40c00000    # 6.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_6

    return v0

    :cond_6
    const/high16 v0, 0x40e00000    # 7.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_7

    return v0

    :cond_7
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v2, p1, v0

    if-nez v2, :cond_8

    return v0

    :cond_8
    const/high16 v0, 0x41100000    # 9.0f

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_9

    return v0

    :cond_9
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_a

    const p1, 0x3f666666    # 0.9f

    return p1

    :cond_a
    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    const p1, 0x3f4ccccd    # 0.8f

    return p1

    :cond_b
    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    const p1, 0x3f333333    # 0.7f

    return p1

    :cond_c
    const/high16 v0, -0x3f800000    # -4.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    const p1, 0x3f19999a    # 0.6f

    return p1

    :cond_d
    const/high16 v0, -0x3f600000    # -5.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_e

    const/high16 p1, 0x3f000000    # 0.5f

    return p1

    :cond_e
    const/high16 v0, -0x3f400000    # -6.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_f

    const p1, 0x3ecccccd    # 0.4f

    return p1

    :cond_f
    const/high16 v0, -0x3f200000    # -7.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    const p1, 0x3e99999a    # 0.3f

    return p1

    :cond_10
    const/high16 v0, -0x3f000000    # -8.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    const p1, 0x3e4ccccd    # 0.2f

    return p1

    :cond_11
    const/high16 v0, -0x3ef00000    # -9.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_12

    const p1, 0x3dcccccd    # 0.1f

    return p1

    :cond_12
    return v1
.end method

.method private native putBytesNative(J[BI)Z
.end method

.method private native receiveBytesNative(J[BI)I
.end method

.method private native setChordPitchNative(JZ)V
.end method

.method private native setNumChannelsNative(JI)V
.end method

.method private native setPitchNative(JF)V
.end method

.method private native setRateNative(JF)V
.end method

.method private native setSampleRateNative(JI)V
.end method

.method private native setSpeedNative(JF)V
.end method

.method private native setVolumeNative(JF)V
.end method


# virtual methods
.method public availableBytes()I
    .locals 2

    .line 140
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->availableBytesNative(J)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 5

    .line 28
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 29
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->closeNative(J)V

    .line 30
    iput-wide v2, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    invoke-virtual {p0}, Lorg/vinuxproject/sonic/Sonic;->close()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->flushNative(J)V

    return-void
.end method

.method public getChordPitch()Z
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getChordPitchNative(J)Z

    move-result v0

    return v0
.end method

.method public getNumChannels()I
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getNumChannelsNative(J)I

    move-result v0

    return v0
.end method

.method public getPitch()F
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getPitchNative(J)F

    move-result v0

    return v0
.end method

.method public getRate()F
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getRateNative(J)F

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getSampleRateNative(J)I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 2

    .line 94
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getSpeedNative(J)F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 2

    .line 214
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1}, Lorg/vinuxproject/sonic/Sonic;->getVolumeNative(J)F

    move-result v0

    return v0
.end method

.method public putBytes([BI)Z
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/vinuxproject/sonic/Sonic;->putBytesNative(J[BI)Z

    move-result p1

    return p1
.end method

.method public receiveBytes([BI)I
    .locals 2

    .line 134
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/vinuxproject/sonic/Sonic;->receiveBytesNative(J[BI)I

    move-result p1

    return p1
.end method

.method public setChordPitch(Z)V
    .locals 2

    .line 114
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setChordPitchNative(JZ)V

    return-void
.end method

.method public setNumChannels(I)V
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setNumChannelsNative(JI)V

    return-void
.end method

.method public setPitch(F)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setPitchNative(JF)V

    return-void
.end method

.method public setRate(F)V
    .locals 2

    .line 101
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setRateNative(JF)V

    return-void
.end method

.method public setSampleRate(I)V
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setSampleRateNative(JI)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setSpeedNative(JF)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 146
    iget-wide v0, p0, Lorg/vinuxproject/sonic/Sonic;->sonicID:J

    invoke-direct {p0, p1}, Lorg/vinuxproject/sonic/Sonic;->mapVolumeBoost2VolumeScale(F)F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/vinuxproject/sonic/Sonic;->setVolumeNative(JF)V

    return-void
.end method
