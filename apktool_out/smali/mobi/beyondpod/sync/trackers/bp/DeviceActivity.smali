.class public Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;
.super Ljava/lang/Object;
.source "DeviceActivity.java"


# instance fields
.field private data:Ljava/lang/String;

.field private dateTime:Ljava/util/Date;

.field private device:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/util/Date;
    .locals 1

    .line 17
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->dateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->data:Ljava/lang/String;

    return-void
.end method

.method public setDateTime(Ljava/util/Date;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->dateTime:Ljava/util/Date;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->device:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;->type:Ljava/lang/String;

    return-void
.end method
