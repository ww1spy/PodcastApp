.class public abstract Lcom/google/android/gms/internal/zzbcu;
.super Lcom/google/android/gms/internal/zzbct;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbct<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzfkt:Lcom/google/android/gms/internal/zzbcl;

.field private zzflb:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbcl;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcu;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbct;-><init>(Lcom/google/android/gms/internal/zzbcl;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcu;->zzflb:Lcom/google/android/gms/cast/games/GameManagerClient;

    new-instance p2, Lcom/google/android/gms/internal/zzbcv;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/zzbcv;-><init>(Lcom/google/android/gms/internal/zzbcu;Lcom/google/android/gms/internal/zzbcl;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcu;->zzezb:Lcom/google/android/gms/internal/zzben;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbcu;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbcu;->zzflb:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object p0
.end method

.method public static zzm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbcw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbcw;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcu;->zzm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object p1

    return-object p1
.end method
