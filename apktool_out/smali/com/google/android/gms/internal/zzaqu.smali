.class public final Lcom/google/android/gms/internal/zzaqu;
.super Lcom/google/android/gms/analytics/zzi;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzi<",
        "Lcom/google/android/gms/internal/zzaqu;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaux:Ljava/lang/String;

.field private zzdxj:Ljava/lang/String;

.field private zzdxk:Ljava/lang/String;

.field private zzdxl:Ljava/lang/String;

.field private zzdxm:Z

.field private zzdxn:Ljava/lang/String;

.field private zzdxo:Z

.field private zzdxp:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzaux:Ljava/lang/String;

    return-object v0
.end method

.method public final setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxk:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqu;->zzaux:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxk:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzaux:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaqu;->zzl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzam(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxm:Z

    return-void
.end method

.method public final zzan(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxo:Z

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzi;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/zzaqu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxj:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxj:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxk:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxk:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzaux:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzaux:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqu;->zzaux:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxl:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxl:Ljava/lang/String;

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxm:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxm:Z

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxn:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxn:Ljava/lang/String;

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxo:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxo:Z

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxo:Z

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxp:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxp:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Sample rate must be between 0% and 100%"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iput-wide v2, p1, Lcom/google/android/gms/internal/zzaqu;->zzdxp:D

    :cond_8
    return-void
.end method

.method public final zzdv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxj:Ljava/lang/String;

    return-void
.end method

.method public final zzdw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxl:Ljava/lang/String;

    return-void
.end method

.method public final zzxd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzxe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzxf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzxg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxm:Z

    return v0
.end method

.method public final zzxh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxn:Ljava/lang/String;

    return-object v0
.end method

.method public final zzxi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxo:Z

    return v0
.end method

.method public final zzxj()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaqu;->zzdxp:D

    return-wide v0
.end method
