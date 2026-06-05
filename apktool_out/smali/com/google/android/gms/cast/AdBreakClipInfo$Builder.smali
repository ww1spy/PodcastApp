.class public Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/AdBreakClipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbhs:Ljava/lang/String;

.field private zzbzd:Ljava/lang/String;

.field private zzesj:Ljava/lang/String;

.field private zzesk:J

.field private zzesl:Ljava/lang/String;

.field private zzesm:Ljava/lang/String;

.field private zzesn:Ljava/lang/String;

.field private zzeso:Ljava/lang/String;

.field private zzesp:Ljava/lang/String;

.field private zzesq:J

.field private zzesr:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/cast/HlsSegmentFormat;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzbzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesj:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesk:J

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzbhs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzeso:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesq:J

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzbzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 15

    new-instance v14, Lcom/google/android/gms/cast/AdBreakClipInfo;

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzbzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesj:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesk:J

    iget-object v5, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzbhs:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesm:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesn:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzeso:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesp:Ljava/lang/String;

    iget-wide v11, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesq:J

    iget-object v13, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesr:Ljava/lang/String;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v14
.end method

.method public setClickThroughUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesm:Ljava/lang/String;

    return-object p0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzeso:Ljava/lang/String;

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzbhs:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomDataJsonString(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesn:Ljava/lang/String;

    return-object p0
.end method

.method public setDurationInMs(J)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesk:J

    return-object p0
.end method

.method public setHlsSegmentFormat(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesr:Ljava/lang/String;

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesp:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesl:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesj:Ljava/lang/String;

    return-object p0
.end method

.method public setWhenSkippableInMs(J)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzesq:J

    return-object p0
.end method
