.class public final Lcom/google/android/gms/internal/zzats;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzasi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field public zzdub:Ljava/lang/String;

.field public zzees:D

.field public zzeet:I

.field public zzeeu:I

.field public zzeev:I

.field public zzeew:I

.field public zzeex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzats;->zzees:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzats;->zzeet:I

    iput v0, p0, Lcom/google/android/gms/internal/zzats;->zzeeu:I

    iput v0, p0, Lcom/google/android/gms/internal/zzats;->zzeev:I

    iput v0, p0, Lcom/google/android/gms/internal/zzats;->zzeew:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzats;->zzeex:Ljava/util/Map;

    return-void
.end method
