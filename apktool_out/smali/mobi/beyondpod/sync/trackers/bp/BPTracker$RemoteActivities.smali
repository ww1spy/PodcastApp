.class public Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;
.super Ljava/lang/Object;
.source "BPTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/sync/trackers/bp/BPTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteActivities"
.end annotation


# instance fields
.field private _Activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;",
            ">;"
        }
    .end annotation
.end field

.field public _RemoteDateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_Activities:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_RemoteDateTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/sync/trackers/bp/DeviceActivity;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_Activities:Ljava/util/List;

    return-object v0
.end method

.method getRemoteDate()Ljava/util/Date;
    .locals 1

    .line 50
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_RemoteDateTime:Ljava/util/Date;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_RemoteDateTime:Ljava/util/Date;

    :goto_0
    return-object v0
.end method

.method hasRemoteActivities()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_Activities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/sync/trackers/bp/BPTracker$RemoteActivities;->_Activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
