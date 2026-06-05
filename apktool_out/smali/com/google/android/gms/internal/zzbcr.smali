.class public abstract Lcom/google/android/gms/internal/zzbcr;
.super Lcom/google/android/gms/internal/zzbct;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbct<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzfkt:Lcom/google/android/gms/internal/zzbcl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbcl;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcr;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbct;-><init>(Lcom/google/android/gms/internal/zzbcl;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbcs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbcs;-><init>(Lcom/google/android/gms/internal/zzbcr;Lcom/google/android/gms/internal/zzbcl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcr;->zzezb:Lcom/google/android/gms/internal/zzben;

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzbcx;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbcx;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcr;->zzl(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p1

    return-object p1
.end method
