.class public final Lcom/google/android/gms/internal/zzdkk;
.super Ljava/lang/Object;


# instance fields
.field private zzktb:Lcom/google/android/gms/internal/zzbt;

.field private final zzlce:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdkk;->zzlce:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdki;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdkk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbt;)Lcom/google/android/gms/internal/zzdkk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdkk;->zzlce:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzbkv()Lcom/google/android/gms/internal/zzdkj;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzdkj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdkk;->zzlce:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdkk;->zzktb:Lcom/google/android/gms/internal/zzbt;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdkj;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzbt;Lcom/google/android/gms/internal/zzdki;)V

    return-object v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/zzbt;)Lcom/google/android/gms/internal/zzdkk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdkk;->zzktb:Lcom/google/android/gms/internal/zzbt;

    return-object p0
.end method
