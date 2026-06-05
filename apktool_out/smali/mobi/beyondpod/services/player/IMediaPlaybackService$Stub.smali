.class public abstract Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lmobi/beyondpod/services/player/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mobi.beyondpod.services.player.IMediaPlaybackService"

.field static final TRANSACTION_canChangePlaybackSpeed:I = 0xc

.field static final TRANSACTION_duration:I = 0x7

.field static final TRANSACTION_getCurrentPlaybackSpeed:I = 0xe

.field static final TRANSACTION_gettimetosleep:I = 0xb

.field static final TRANSACTION_gotosleepin:I = 0xa

.field static final TRANSACTION_isPlaying:I = 0x2

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_playerType:I = 0x10

.field static final TRANSACTION_position:I = 0x8

.field static final TRANSACTION_seek:I = 0x9

.field static final TRANSACTION_setPlaybackSpeed:I = 0xd

.field static final TRANSACTION_startAndFadeIn:I = 0x6

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_supportsSpeedAlteration:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmobi/beyondpod/services/player/IMediaPlaybackService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lmobi/beyondpod/services/player/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmobi/beyondpod/services/player/IMediaPlaybackService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub$Proxy;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 170
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->playerType()I

    move-result p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 162
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->supportsSpeedAlteration()Z

    move-result p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 154
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->getCurrentPlaybackSpeed()F

    move-result p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    :pswitch_3
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 148
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->setPlaybackSpeed(FF)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 135
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->canChangePlaybackSpeed()Z

    move-result p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 127
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->gettimetosleep()I

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 118
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->gotosleepin(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 108
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 111
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_8
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 100
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->position()J

    move-result-wide p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_9
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 92
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->duration()J

    move-result-wide p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    :pswitch_a
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 85
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->startAndFadeIn()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 78
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->play()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->pause()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 64
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->stop()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 56
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_f
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Lmobi/beyondpod/services/player/IMediaPlaybackService$Stub;->open(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    const-string p1, "mobi.beyondpod.services.player.IMediaPlaybackService"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
