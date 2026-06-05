.class public Lcom/google/android/gms/cast/MediaLoadOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    }
.end annotation


# static fields
.field public static final PLAYBACK_RATE_MAX:D = 2.0

.field public static final PLAYBACK_RATE_MIN:D = 0.5


# instance fields
.field private zzess:Lorg/json/JSONObject;

.field private zzewi:Z

.field private zzewj:J

.field private zzewk:D

.field private zzewl:[J

.field private zzewm:Ljava/lang/String;

.field private zzewn:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewi:Z

    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewj:J

    iput-wide p4, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewk:D

    iput-object p6, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewl:[J

    iput-object p7, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzess:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewm:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewn:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzaf;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/cast/MediaLoadOptions;-><init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewl:[J

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewi:Z

    return v0
.end method

.method public getCredentials()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewm:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewn:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzess:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewj:J

    return-wide v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzewk:D

    return-wide v0
.end method
