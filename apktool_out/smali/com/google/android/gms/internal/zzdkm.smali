.class public final Lcom/google/android/gms/internal/zzdkm;
.super Ljava/lang/Object;


# instance fields
.field private zzfli:Ljava/lang/String;

.field private final zzlcb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdkn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlcc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdkj;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzlcd:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcb:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcc:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdkm;->zzfli:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcd:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdki;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdkm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzdkn;)Lcom/google/android/gms/internal/zzdkm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzbky()Lcom/google/android/gms/internal/zzdkl;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzdkl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcc:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdkm;->zzfli:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcd:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdkl;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/internal/zzdki;)V

    return-object v6
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzdkj;)Lcom/google/android/gms/internal/zzdkm;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdkj;->zzbkd()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbi;->zzqz:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbt;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgk;->zzd(Lcom/google/android/gms/internal/zzbt;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcc:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcc:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzfk(I)Lcom/google/android/gms/internal/zzdkm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzdkm;->zzlcd:I

    return-object p0
.end method

.method public final zznn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdkm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdkm;->zzfli:Ljava/lang/String;

    return-object p0
.end method
