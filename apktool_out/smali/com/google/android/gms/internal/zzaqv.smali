.class public final Lcom/google/android/gms/internal/zzaqv;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/zzaqv;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaqh:Ljava/lang/String;

.field private zzdxq:I

.field private zzdxr:I

.field private zzdxs:Ljava/lang/String;

.field private zzdxt:Ljava/lang/String;

.field private zzdxu:Z

.field private zzdxv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaqv;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    and-long v4, v0, v2

    long-to-int v0, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long v4, v0, v2

    long-to-int v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "GAv4"

    const-string v0, "UUID.randomUUID() returned 0."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaqv;-><init>(ZI)V

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given Integer is zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxq:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxv:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "screenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzaqh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "interstitial"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxu:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "automatic"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxv:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenId"

    iget v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerScreenName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxs:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrerUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxt:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqv;->zzl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzaqv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzaqh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzaqh:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzaqh:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxq:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxq:I

    iput v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzdxq:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxr:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxr:I

    iput v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzdxr:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxs:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzdxs:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzdxt:Ljava/lang/String;

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxu:Z

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzdxu:Z

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxv:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxv:Z

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzaqv;->zzdxv:Z

    :cond_7
    return-void
.end method

.method public final zzxk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzaqh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzxl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxq:I

    return v0
.end method

.method public final zzxm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqv;->zzdxt:Ljava/lang/String;

    return-object v0
.end method
