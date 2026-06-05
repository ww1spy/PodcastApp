.class public final Lcom/google/android/gms/internal/zzbej;
.super Lcom/google/android/gms/internal/zzbdg;


# static fields
.field public static final NAMESPACE:Ljava/lang/String;


# instance fields
.field private final zzfki:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbeo;",
            ">;"
        }
    .end annotation
.end field

.field private zzfns:J

.field private zzfnt:Lcom/google/android/gms/cast/MediaStatus;

.field private zzfnu:Lcom/google/android/gms/internal/zzbek;

.field private final zzfnv:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfnw:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfnx:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfny:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfnz:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfoa:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfob:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfoc:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfod:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfoe:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfof:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfog:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfoh:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfoi:Lcom/google/android/gms/internal/zzbeo;

.field private final zzfoj:Lcom/google/android/gms/internal/zzbeo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdw;->zzfw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbej;->NAMESPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 7

    sget-object v1, Lcom/google/android/gms/internal/zzbej;->NAMESPACE:Ljava/lang/String;

    const-string v3, "MediaControlChannel"

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbdg;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    const-wide/32 v0, 0x5265c00

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnw:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnx:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfny:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnz:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfoa:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfob:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfoc:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfod:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfoe:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfof:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfog:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfoh:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfoi:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Lcom/google/android/gms/internal/zzbeo;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbeo;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfoj:Lcom/google/android/gms/internal/zzbeo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfnw:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfnx:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfny:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfnz:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfoa:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfob:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfoc:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfod:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfoe:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfof:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfog:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfoh:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfoi:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfoj:Lcom/google/android/gms/internal/zzbeo;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzagy()V

    return-void
.end method

.method private final onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbek;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private final onPreloadStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbek;->onPreloadStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onQueueStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbek;->onQueueStatusUpdated()V

    :cond_0
    return-void
.end method

.method private final onStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbek;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbl;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "type"

    const-string p3, "PRECACHE"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string p2, "precacheData"

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/cast/zzbl;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/zzbl;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "requestItems"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza(JLorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbeo;->test(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnz:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbeo;->zzaha()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnz:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/zzbeo;->test(J)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbej;->zzfoa:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbeo;->zzaha()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbej;->zzfoa:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzbeo;->test(J)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbej;->zzfob:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbeo;->zzaha()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbej;->zzfob:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/zzbeo;->test(J)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x1

    :cond_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    move-result p3

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v0, Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    const/16 p3, 0x7f

    :goto_4
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onStatusUpdated()V

    :cond_8
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onStatusUpdated()V

    :cond_9
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onMetadataUpdated()V

    :cond_a
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onQueueStatusUpdated()V

    :cond_b
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onPreloadStatusUpdated()V

    :cond_c
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbek;->onAdBreakStatusUpdated()V

    :cond_d
    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onStatusUpdated()V

    :cond_e
    iget-object p3, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbeo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z

    goto :goto_5

    :cond_f
    return-void
.end method

.method private final zzadv()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbel;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbel;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->zzadv()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzagy()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbeo;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getApproximateStreamPosition()J
    .locals 15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbej;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    return-wide v1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v7

    const-wide/16 v8, 0x0

    cmpl-double v10, v3, v8

    if-eqz v10, :cond_7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    return-wide v5

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzata:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/zzbej;->zzfns:J

    sub-long v13, v9, v11

    cmp-long v0, v13, v1

    if-gez v0, :cond_3

    move-wide v13, v1

    :cond_3
    cmp-long v0, v13, v1

    if-nez v0, :cond_4

    return-wide v5

    :cond_4
    long-to-double v9, v13

    mul-double/2addr v9, v3

    double-to-long v3, v9

    add-long v9, v5, v3

    cmp-long v0, v7, v1

    if-lez v0, :cond_5

    cmp-long v0, v9, v7

    if-lez v0, :cond_5

    move-wide v1, v7

    return-wide v1

    :cond_5
    cmp-long v0, v9, v1

    if-gez v0, :cond_6

    return-wide v1

    :cond_6
    move-wide v1, v9

    return-wide v1

    :cond_7
    return-wide v5
.end method

.method public final getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    return-object v0
.end method

.method public final getStreamDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbej;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoc:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "GET_STATUS"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    if-eqz p1, :cond_0

    const-string p1, "mediaSessionId"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;DLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoa:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "level"

    invoke-virtual {p1, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "volume"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p4, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Volume cannot be "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;IJ[Lcom/google/android/gms/cast/MediaQueueItem;ILjava/lang/Integer;Lorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-gez v4, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x35

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition cannot be negative: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbej;->zzfog:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_UPDATE"

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v5

    invoke-virtual {v2, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p1, "currentItemId"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    const-string p1, "jump"

    invoke-virtual {v2, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p5, :cond_4

    array-length p1, p5

    if-lez p1, :cond_4

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length p6, p5

    if-ge p2, p6, :cond_3

    aget-object p6, p5, p2

    invoke-virtual {p6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "items"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    :goto_1
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_1
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_SINGLE"

    goto :goto_1

    :pswitch_2
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL"

    goto :goto_1

    :pswitch_3
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_OFF"

    goto :goto_1

    :cond_5
    :goto_2
    cmp-long p1, p3, v0

    if-eqz p1, :cond_6

    const-string p1, "currentTime"

    long-to-double p2, p3

    const-wide p4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, p4

    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_6
    if-eqz p8, :cond_7

    const-string p1, "customData"

    invoke-virtual {v2, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;JILorg/json/JSONObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnz:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string v3, "requestId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "currentTime"

    long-to-double p2, p2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v4

    invoke-virtual {v0, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, p1, :cond_0

    const-string p1, "resumeState"

    const-string p2, "PLAYBACK_START"

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1

    const-string p1, "resumeState"

    const-string p2, "PLAYBACK_PAUSE"

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaLoadOptions;)J
    .locals 7
    .param p1    # Lcom/google/android/gms/internal/zzben;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/cast/MediaInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/cast/MediaLoadOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "LOAD"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "autoplay"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getAutoplay()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlayPosition()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getPlaybackRate()D

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "credentials"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentials()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "credentialsType"

    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCredentialsType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getActiveTrackIds()[J

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-wide v4, p1, v3

    invoke-virtual {p2, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "activeTrackIds"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/cast/MediaLoadOptions;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "customData"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;Lcom/google/android/gms/cast/TextTrackStyle;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoe:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "textTrackStyle"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnw:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PAUSE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;ZLorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfob:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_VOLUME"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "muted"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "volume"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;[IILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoi:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REORDER"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    const-string p1, "insertBefore"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToReorder must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;[ILorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoh:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "QUEUE_REMOVE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget v4, p2, v3

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "itemIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    const-string p1, "customData"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemIdsToRemove must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;[J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfod:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "EDIT_TRACKS_INFO"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-wide v4, p2, v3

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "activeTrackIds"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;[Lcom/google/android/gms/cast/MediaQueueItem;IIIJLorg/json/JSONObject;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    if-eqz v1, :cond_9

    array-length v7, v1

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eq v3, v8, :cond_2

    if-ltz v3, :cond_1

    array-length v10, v1

    if-lt v3, v10, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "currentItemIndexInItemsToInsert %d out of range [0, %d)."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v12, v4, v10

    if-eqz v12, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v14, v4, v12

    if-gez v14, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "playPosition can not be negative: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v13

    iget-object v15, v0, Lcom/google/android/gms/internal/zzbej;->zzfof:Lcom/google/android/gms/internal/zzbeo;

    move-object/from16 v7, p1

    invoke-virtual {v15, v13, v14, v7}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string v7, "requestId"

    invoke-virtual {v12, v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "type"

    const-string v9, "QUEUE_INSERT"

    invoke-virtual {v12, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "mediaSessionId"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v10

    invoke-virtual {v12, v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v9, 0x0

    :goto_0
    array-length v10, v1

    if-ge v9, v10, :cond_4

    aget-object v10, v1, v9

    invoke-virtual {v10}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "items"

    invoke-virtual {v12, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    const-string v1, "insertBefore"

    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eq v3, v8, :cond_6

    const-string v1, "currentItemIndex"

    invoke-virtual {v12, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    const-wide/16 v1, -0x1

    cmp-long v3, v4, v1

    if-eqz v3, :cond_7

    const-string v1, "currentTime"

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v12, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_7
    if-eqz v6, :cond_8

    const-string v1, "customData"

    invoke-virtual {v12, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v14, v2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v13

    :cond_9
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "itemsToInsert must not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzben;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p2, :cond_7

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-ltz p3, :cond_6

    array-length v0, p2

    if-lt p3, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v2, p5, v0

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-gez v4, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x36

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "playPosition can not be negative: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v5, "QUEUE_LOAD"

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_3

    aget-object v6, p2, v5

    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "items"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p4, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_3

    :pswitch_0
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL_AND_SHUFFLE"

    :goto_1
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :pswitch_1
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_SINGLE"

    goto :goto_1

    :pswitch_2
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_ALL"

    goto :goto_1

    :pswitch_3
    const-string p1, "repeatMode"

    const-string p2, "REPEAT_OFF"

    goto :goto_1

    :goto_2
    const-string p1, "startIndex"

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    cmp-long p1, p5, v0

    if-eqz p1, :cond_4

    const-string p1, "currentTime"

    long-to-double p2, p5

    const-wide p4, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, p4

    invoke-virtual {v2, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    if-eqz p7, :cond_5

    const-string p1, "customData"

    invoke-virtual {v2, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :goto_3
    const/16 p2, 0x20

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid repeat mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :cond_6
    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x1f

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid startIndex: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "items must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnu:Lcom/google/android/gms/internal/zzbek;

    return-void
.end method

.method public final zzagm()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbdg;->zzagm()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzagy()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzben;DLorg/json/JSONObject;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzbel;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzbel;-><init>()V

    throw p1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoj:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "SET_PLAYBACK_RATE"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playbackRate"

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaStatus;->zzadv()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    const-string p1, "customData"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzben;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfny:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "STOP"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzb(Ljava/lang/String;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/zzbl;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzbej;->zza(Ljava/lang/String;Ljava/util/List;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzben;Lorg/json/JSONObject;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/internal/zzbel;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagn()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnx:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/android/gms/internal/zzbeo;->zza(JLcom/google/android/gms/internal/zzben;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbdg;->zzbg(Z)V

    :try_start_0
    const-string p1, "requestId"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    const-string v3, "PLAY"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mediaSessionId"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->zzadv()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "customData"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gms/internal/zzbdo;->zza(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v1
.end method

.method public final zzc(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbeo;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzfu(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const-string v1, "message received: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzbei;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "requestId"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "MEDIA_STATUS"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v8, "INVALID_PLAYER_STATE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_2
    const-string v8, "LOAD_FAILED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string v8, "INVALID_REQUEST"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v8, "LOAD_CANCELLED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v7

    :goto_1
    const/16 v7, 0x834

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const-string v8, "received unexpected error: Invalid Request."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/zzbei;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    const/16 v7, 0x835

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z

    return-void

    :pswitch_2
    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfnv:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z

    return-void

    :pswitch_3
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const-string v8, "received unexpected error: Invalid Player State."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/zzbei;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "customData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v8, v5, v6, v7, v1}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z

    goto :goto_3

    :cond_1
    return-void

    :pswitch_4
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v5, v6, v1}, Lcom/google/android/gms/internal/zzbej;->zza(JLorg/json/JSONObject;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbej;->zzfnt:Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onMetadataUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onQueueStatusUpdated()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbej;->onPreloadStatusUpdated()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzfoc:Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v3, v5, v6, v4, v1}, Lcom/google/android/gms/internal/zzbeo;->zzc(JILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzeui:Lcom/google/android/gms/internal/zzbei;

    const-string v5, "Message is malformed (%s); ignoring: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p1, v0, v2

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/zzbei;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_4
        -0x430e23f9 -> :sswitch_3
        -0xfa7664a -> :sswitch_2
        0x19b9b2fb -> :sswitch_1
        0x3115c4cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzz(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbeo;

    const/16 v2, 0x836

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzbeo;->zzd(JI)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sget-object p2, Lcom/google/android/gms/internal/zzbeo;->zzakj:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzfki:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbeo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbeo;->zzaha()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    :cond_2
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
