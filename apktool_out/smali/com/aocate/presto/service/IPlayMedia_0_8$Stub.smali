.class public abstract Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;
.super Landroid/os/Binder;
.source "IPlayMedia_0_8.java"

# interfaces
.implements Lcom/aocate/presto/service/IPlayMedia_0_8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aocate/presto/service/IPlayMedia_0_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aocate/presto/service/IPlayMedia_0_8$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.aocate.presto.service.IPlayMedia_0_8"

.field static final TRANSACTION_canSetPitch:I = 0x1

.field static final TRANSACTION_canSetSpeed:I = 0x2

.field static final TRANSACTION_getCurrentPitchStepsAdjustment:I = 0x3

.field static final TRANSACTION_getCurrentPosition:I = 0x4

.field static final TRANSACTION_getCurrentSpeedMultiplier:I = 0x5

.field static final TRANSACTION_getDuration:I = 0x6

.field static final TRANSACTION_getMaxSpeedMultiplier:I = 0x7

.field static final TRANSACTION_getMinSpeedMultiplier:I = 0x8

.field static final TRANSACTION_getVersionCode:I = 0x9

.field static final TRANSACTION_getVersionName:I = 0xa

.field static final TRANSACTION_isLooping:I = 0xb

.field static final TRANSACTION_isPlaying:I = 0xc

.field static final TRANSACTION_pause:I = 0xd

.field static final TRANSACTION_prepare:I = 0xe

.field static final TRANSACTION_prepareAsync:I = 0xf

.field static final TRANSACTION_registerOnBufferingUpdateCallback:I = 0x10

.field static final TRANSACTION_registerOnCompletionCallback:I = 0x11

.field static final TRANSACTION_registerOnErrorCallback:I = 0x12

.field static final TRANSACTION_registerOnInfoCallback:I = 0x13

.field static final TRANSACTION_registerOnPitchAdjustmentAvailableChangedCallback:I = 0x14

.field static final TRANSACTION_registerOnPreparedCallback:I = 0x15

.field static final TRANSACTION_registerOnSeekCompleteCallback:I = 0x16

.field static final TRANSACTION_registerOnSpeedAdjustmentAvailableChangedCallback:I = 0x17

.field static final TRANSACTION_release:I = 0x18

.field static final TRANSACTION_reset:I = 0x19

.field static final TRANSACTION_seekTo:I = 0x1a

.field static final TRANSACTION_setAudioStreamType:I = 0x1b

.field static final TRANSACTION_setDataSourceString:I = 0x1c

.field static final TRANSACTION_setDataSourceUri:I = 0x1d

.field static final TRANSACTION_setEnableSpeedAdjustment:I = 0x1e

.field static final TRANSACTION_setLooping:I = 0x1f

.field static final TRANSACTION_setPitchStepsAdjustment:I = 0x20

.field static final TRANSACTION_setPlaybackPitch:I = 0x21

.field static final TRANSACTION_setPlaybackSpeed:I = 0x22

.field static final TRANSACTION_setSpeedAdjustmentAlgorithm:I = 0x23

.field static final TRANSACTION_setVolume:I = 0x24

.field static final TRANSACTION_start:I = 0x25

.field static final TRANSACTION_startSession:I = 0x26

.field static final TRANSACTION_stop:I = 0x27

.field static final TRANSACTION_unregisterOnBufferingUpdateCallback:I = 0x28

.field static final TRANSACTION_unregisterOnCompletionCallback:I = 0x29

.field static final TRANSACTION_unregisterOnErrorCallback:I = 0x2a

.field static final TRANSACTION_unregisterOnInfoCallback:I = 0x2b

.field static final TRANSACTION_unregisterOnPitchAdjustmentAvailableChangedCallback:I = 0x2c

.field static final TRANSACTION_unregisterOnPreparedCallback:I = 0x2d

.field static final TRANSACTION_unregisterOnSeekCompleteCallback:I = 0x2e

.field static final TRANSACTION_unregisterOnSpeedAdjustmentAvailableChangedCallback:I = 0x2f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IPlayMedia_0_8;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/aocate/presto/service/IPlayMedia_0_8;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/aocate/presto/service/IPlayMedia_0_8;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 539
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 529
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;

    move-result-object p1

    .line 534
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnSpeedAdjustmentAvailableChangedCallback(JLcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 518
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8;

    move-result-object p1

    .line 523
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnSeekCompleteCallback(JLcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8;)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 507
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8;

    move-result-object p1

    .line 512
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnPreparedCallback(JLcom/aocate/presto/service/IOnPreparedListenerCallback_0_8;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 496
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;

    move-result-object p1

    .line 501
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnPitchAdjustmentAvailableChangedCallback(JLcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 485
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8;

    move-result-object p1

    .line 490
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnInfoCallback(JLcom/aocate/presto/service/IOnInfoListenerCallback_0_8;)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 474
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8;

    move-result-object p1

    .line 479
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnErrorCallback(JLcom/aocate/presto/service/IOnErrorListenerCallback_0_8;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 463
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8;

    move-result-object p1

    .line 468
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnCompletionCallback(JLcom/aocate/presto/service/IOnCompletionListenerCallback_0_8;)V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 452
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8;

    move-result-object p1

    .line 457
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->unregisterOnBufferingUpdateCallback(JLcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8;)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 443
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->stop(J)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 433
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IDeathCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IDeathCallback_0_8;

    move-result-object p1

    .line 436
    invoke-virtual {p0, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->startSession(Lcom/aocate/presto/service/IDeathCallback_0_8;)J

    move-result-wide p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_a
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 424
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->start(J)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 411
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 418
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setVolume(JFF)V

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 400
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 405
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setSpeedAdjustmentAlgorithm(JI)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 389
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 394
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setPlaybackSpeed(JF)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 378
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 383
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setPlaybackPitch(JF)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 367
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 372
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setPitchStepsAdjustment(JF)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 356
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 361
    :cond_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setLooping(JZ)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 345
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 350
    :cond_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setEnableSpeedAdjustment(JZ)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 329
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 334
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 339
    :goto_0
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setDataSourceUri(JLandroid/net/Uri;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 318
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setDataSourceString(JLjava/lang/String;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 307
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 312
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->setAudioStreamType(JI)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 296
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 301
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->seekTo(JI)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 287
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->reset(J)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 278
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->release(J)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 267
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;

    move-result-object p1

    .line 272
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnSpeedAdjustmentAvailableChangedCallback(JLcom/aocate/presto/service/IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 256
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8;

    move-result-object p1

    .line 261
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnSeekCompleteCallback(JLcom/aocate/presto/service/IOnSeekCompleteListenerCallback_0_8;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 245
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnPreparedListenerCallback_0_8;

    move-result-object p1

    .line 250
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnPreparedCallback(JLcom/aocate/presto/service/IOnPreparedListenerCallback_0_8;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 234
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;

    move-result-object p1

    .line 239
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnPitchAdjustmentAvailableChangedCallback(JLcom/aocate/presto/service/IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 223
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnInfoListenerCallback_0_8;

    move-result-object p1

    .line 228
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnInfoCallback(JLcom/aocate/presto/service/IOnInfoListenerCallback_0_8;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 212
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnErrorListenerCallback_0_8;

    move-result-object p1

    .line 217
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnErrorCallback(JLcom/aocate/presto/service/IOnErrorListenerCallback_0_8;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 201
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnCompletionListenerCallback_0_8;

    move-result-object p1

    .line 206
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnCompletionCallback(JLcom/aocate/presto/service/IOnCompletionListenerCallback_0_8;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 190
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8$Stub;->asInterface(Landroid/os/IBinder;)Lcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8;

    move-result-object p1

    .line 195
    invoke-virtual {p0, v2, v3, p1}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->registerOnBufferingUpdateCallback(JLcom/aocate/presto/service/IOnBufferingUpdateListenerCallback_0_8;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 181
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->prepareAsync(J)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 172
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->prepare(J)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 163
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->pause(J)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 153
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->isPlaying(J)Z

    move-result p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_24
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->isLooping(J)Z

    move-result p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_25
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 135
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getVersionName()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_26
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 127
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getVersionCode()I

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_27
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getMinSpeedMultiplier(J)F

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_28
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 107
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getMaxSpeedMultiplier(J)F

    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_29
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getDuration(J)I

    move-result p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2a
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 87
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getCurrentSpeedMultiplier(J)F

    move-result p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_2b
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 77
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getCurrentPosition(J)I

    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2c
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->getCurrentPitchStepsAdjustment(J)F

    move-result p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_2d
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 57
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->canSetSpeed(J)Z

    move-result p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2e
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/aocate/presto/service/IPlayMedia_0_8$Stub;->canSetPitch(J)Z

    move-result p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_3
    const-string p1, "com.aocate.presto.service.IPlayMedia_0_8"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
